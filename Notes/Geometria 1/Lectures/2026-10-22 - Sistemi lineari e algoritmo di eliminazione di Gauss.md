---
type: lecture-note
course: Geometria 1
date: '2026-10-22'
title: Sistemi lineari e algoritmo di eliminazione di Gauss
source_transcript: _transcripts/Geometria 1/2026-10-22 - Sistemi lineari e algoritmo di eliminazione di
  Gauss.md
source_hash: sha256:eec556b0f85ec39319008d46b208b352ab507cff846b16950c27a5e34f5a109e
teaching_model: anthropic/claude-opus-5.5
taught_at: '2026-10-22T11:59:02.375Z'
---

# Sistemi lineari e algoritmo di eliminazione di Gauss

## 1. Sistemi lineari e combinazioni lineari delle colonne

Un sistema lineare può essere scritto in forma matriciale come

$$
A x = b,
$$

dove:

- $A$ è la matrice dei coefficienti;
- $x$ è il vettore delle incognite;
- $b$ è il vettore dei termini noti.

Nel caso di una matrice $2\times 2$,

$$
A=
\begin{pmatrix}
a & b\\
c & d
\end{pmatrix},
\qquad
x=
\begin{pmatrix}
x_1\\
x_2
\end{pmatrix},
\qquad
b=
\begin{pmatrix}
\alpha\\
\beta
\end{pmatrix},
$$

l’equazione matriciale

$$
Ax=b
$$

corrisponde al sistema

$$
\begin{cases}
a x_1+b x_2=\alpha,\\
c x_1+d x_2=\beta.
\end{cases}
$$

Il prodotto matriciale può essere riscritto raccogliendo le incognite:

$$
\begin{pmatrix}
a & b\\
c & d
\end{pmatrix}
\begin{pmatrix}
x_1\\
x_2
\end{pmatrix}
=
x_1
\begin{pmatrix}
a\\
c
\end{pmatrix}
+
x_2
\begin{pmatrix}
b\\
d
\end{pmatrix}.
$$

Quindi $Ax=b$ equivale a

$$
x_1
\begin{pmatrix}
a\\
c
\end{pmatrix}
+
x_2
\begin{pmatrix}
b\\
d
\end{pmatrix}
=
\begin{pmatrix}
\alpha\\
\beta
\end{pmatrix}.
$$

L’equazione ha soluzione se e solo se il vettore dei termini noti è combinazione lineare delle colonne di $A$. In altre parole,

$$
Ax=b \text{ è risolubile}
\iff
b\in \operatorname{span}\left\{
\begin{pmatrix}
a\\c
\end{pmatrix},
\begin{pmatrix}
b\\d
\end{pmatrix}
\right\}.
$$

Questa osservazione vale in generale.

Siano $A$ e $b$ della forma

$$
A=
\begin{pmatrix}
| & | & & |\\
a_1 & a_2 & \cdots & a_n\\
| & | & & |
\end{pmatrix}
\in M_{m\times n}(\mathbb K),
\qquad
x=
\begin{pmatrix}
x_1\\
\vdots\\
x_n
\end{pmatrix},
\qquad
b\in \mathbb K^m.
$$

Allora

$$
Ax=x_1a_1+x_2a_2+\cdots+x_na_n.
$$

Pertanto

$$
Ax=b
$$

ha almeno una soluzione se e solo se

$$
b\in \operatorname{span}(a_1,\dots,a_n).
$$

Questa è una connessione fondamentale tra sistemi lineari e sottospazi vettoriali: verificare se un vettore appartiene allo span di alcuni vettori equivale a risolvere un sistema lineare.

Se $v_1,\dots,v_n$ sono generatori di un sottospazio e si vuole stabilire se un vettore $w$ appartiene a tale sottospazio, si cerca di risolvere

$$
x_1v_1+\cdots+x_nv_n=w.
$$

Le incognite $x_1,\dots,x_n$ sono le coordinate di $w$ rispetto ai generatori, qualora tali coordinate esistano.

---

## 2. Perché introdurre le matrici a scala

Un sistema lineare generico non è sempre immediatamente risolvibile osservando le equazioni. L’idea dell’eliminazione di Gauss è trasformare il sistema in un altro sistema equivalente, cioè con lo stesso insieme di soluzioni, ma avente una forma molto più semplice.

La forma desiderata è quella di un sistema la cui matrice dei coefficienti sia **a scala**.

### 2.1 Definizione di matrice a scala

Una matrice è in forma a scala se soddisfa le seguenti condizioni:

1. le righe nulle, se presenti, si trovano in fondo alla matrice;
2. in ogni riga non nulla si considera la prima entrata non nulla;
3. la prima entrata non nulla di ogni riga si trova più a destra rispetto alla prima entrata non nulla della riga precedente;
4. sotto ogni prima entrata non nulla vi sono soltanto zeri.

Le prime entrate non nulle vengono chiamate **pivot**.

La struttura grafica è quella di una successione di gradini: ogni pivot è più a destra del pivot della riga precedente e sotto ciascun pivot compaiono solo zeri.

Gli elementi che si trovano a destra del pivot, così come quelli sopra il pivot, possono essere arbitrari: la condizione riguarda soprattutto la posizione dei pivot e gli zeri sotto di essi.

Per esempio, una matrice del tipo

$$
\begin{pmatrix}
\ast & \ast & \ast & \ast\\
0 & \ast & \ast & \ast\\
0 & 0 & 0 & \ast\\
0 & 0 & 0 & 0
\end{pmatrix},
\qquad
\ast\neq 0 \text{ nei punti che sono pivot},
$$

è a scala.

Al contrario, una matrice non è a scala se la prima entrata non nulla di una riga si trova nella stessa colonna della prima entrata non nulla della riga precedente. Per esempio, se la seconda e la terza riga hanno entrambe il primo elemento non nullo nella seconda colonna, la matrice non è a scala.

### 2.2 Risoluzione di un sistema a scala

Consideriamo, ad esempio, un sistema a scala del tipo

$$
\begin{cases}
2x_1+x_2-2x_3=2,\\
x_2-2x_3=3.
\end{cases}
$$

La seconda equazione permette di esprimere $x_2$ in funzione di $x_3$:

$$
x_2=3+2x_3.
$$

Sostituendo nella prima equazione si ottiene un’espressione per $x_1$:

$$
2x_1+(3+2x_3)-2x_3=2,
$$

quindi

$$
2x_1+3=2,
\qquad
x_1=-\frac12.
$$

In questo caso $x_3$ non è determinata da alcuna equazione: è una variabile libera. Si può quindi assegnare arbitrariamente un valore a $x_3$, e da esso ricavare $x_2$ e $x_1$.

Il procedimento generale consiste nel partire dall’ultima equazione non nulla e risalire verso l’alto, ricostruendo ogni volta le variabili già incontrate.

Se una variabile corrisponde a una colonna contenente un pivot, essa viene determinata dalle equazioni e viene detta variabile pivot. Se invece la colonna non contiene alcun pivot, la variabile corrispondente è libera.

> [!note]
> Il fatto che una variabile venga chiamata “libera” dipende dalla forma a scala e dalla procedura di risoluzione adottata. In linea di principio si può scegliere un diverso parametro e riscrivere la stessa famiglia di soluzioni in un’altra forma.

### 2.3 Sistemi a scala senza soluzione

Un sistema a scala non ha soluzione se compare una riga della matrice completa del tipo

$$
\begin{pmatrix}
0 & 0 & \cdots & 0 & | & c
\end{pmatrix},
\qquad c\neq 0.
$$

Questa riga corrisponde all’equazione impossibile

$$
0=c.
$$

Per esempio, la matrice completa

$$
\left(
\begin{array}{cc|c}
1 & 2 & 3\\
0 & 1 & 1\\
0 & 0 & 1
\end{array}
\right)
$$

rappresenta il sistema

$$
\begin{cases}
x_1+2x_2=3,\\
x_2=1,\\
0=1.
\end{cases}
$$

Il sistema è incompatibile.

Questo è l’unico caso di incompatibilità per un sistema già in forma a scala: se non compare una riga del tipo $0=c$ con $c\neq 0$, il sistema è risolubile.

---

## 3. La matrice completa

Per applicare l’eliminazione di Gauss si considera la matrice completa del sistema.

Se $A$ è la matrice dei coefficienti e $b$ il vettore dei termini noti, si scrive

$$
(A\mid b),
$$

dove la sbarretta separa la parte dei coefficienti dalla colonna dei termini noti:

$$
(A\mid b)=
\left(
\begin{array}{cccc|c}
a_{11} & a_{12} & \cdots & a_{1n} & b_1\\
a_{21} & a_{22} & \cdots & a_{2n} & b_2\\
\vdots & \vdots & & \vdots & \vdots\\
a_{m1} & a_{m2} & \cdots & a_{mn} & b_m
\end{array}
\right).
$$

La matrice completa ha lo stesso numero di righe di $A$ e una colonna aggiuntiva.

È importante distinguere:

- i pivot nelle colonne delle incognite;
- un eventuale pivot nella colonna dei termini noti.

Un pivot nella colonna dei termini noti corrisponde precisamente a una riga del tipo

$$
0=c,\qquad c\neq 0,
$$

e quindi segnala che il sistema non ha soluzioni.

---

## 4. Operazioni elementari di riga

Le operazioni elementari di riga sono le trasformazioni che permettono di passare a un sistema equivalente.

Sono tre:

1. scambiare due righe;
2. moltiplicare una riga per uno scalare $\lambda\neq 0$;
3. sostituire una riga con essa sommata a un multiplo di un’altra riga.

### 4.1 Scambio di due righe

Scambiare due righe cambia soltanto l’ordine delle equazioni. Non cambia l’insieme delle soluzioni.

Per esempio, il sistema

$$
\begin{cases}
x+y=1,\\
2x-y=3
\end{cases}
$$

ha le stesse soluzioni del sistema scritto invertendo l’ordine delle due equazioni.

### 4.2 Moltiplicazione di una riga per uno scalare non nullo

Moltiplicare un’equazione per $\lambda\neq 0$ non cambia le sue soluzioni, perché è sempre possibile dividere nuovamente per $\lambda$.

Per esempio,

$$
2x_1-2x_3=2
$$

è equivalente a

$$
x_1-x_3=1,
$$

ottenuta moltiplicando la riga per $\frac12$.

La condizione $\lambda\neq 0$ è necessaria: moltiplicare un’equazione per zero la trasformerebbe in $0=0$, perdendo informazione.

### 4.3 Sommare a una riga un multiplo di un’altra

Si può sostituire una riga $R_j$ con

$$
R_j+\lambda R_k,
\qquad j\neq k.
$$

A livello di equazioni, si sostituisce un’equazione con la somma di essa e di un multiplo di un’altra equazione.

Questa operazione non cambia l’insieme delle soluzioni: se un vettore soddisfa entrambe le equazioni originarie, soddisfa anche la loro combinazione lineare. Inoltre l’operazione è invertibile, perché si può recuperare la riga precedente facendo

$$
R_j\longleftarrow R_j-\lambda R_k.
$$

Le tre operazioni sono dette operazioni elementari **di riga** perché vengono applicate alle righe della matrice. In linea di principio si possono definire operazioni analoghe sulle colonne, ma esse hanno effetti diversi e non vengono usate nello stesso modo per risolvere i sistemi.

---

## 5. Invarianza dell’insieme delle soluzioni

Le operazioni elementari di riga applicate alla matrice completa $(A\mid b)$ producono sistemi con lo stesso insieme di soluzioni.

Il motivo è che:

- scambiare due equazioni non modifica il loro contenuto;
- moltiplicare un’equazione per uno scalare non nullo produce un’equazione equivalente;
- sommare a un’equazione un multiplo di un’altra preserva la verità del sistema e l’operazione è invertibile.

Quindi l’eliminazione di Gauss può modificare l’aspetto del sistema, ma non le sue soluzioni.

---

## 6. Effetto sulle righe e sulle colonne

È essenziale distinguere l’effetto delle operazioni di riga sullo span delle righe e su quello delle colonne.

### 6.1 Lo span delle righe non cambia

Le operazioni elementari di riga non cambiano il sottospazio generato dalle righe della matrice.

Lo scambio di due righe cambia soltanto l’ordine dei vettori generatori.

La moltiplicazione di una riga per $\lambda\neq 0$ non cambia lo span, perché il vettore originario si può recuperare moltiplicando per $\lambda^{-1}$.

Resta da verificare la terza operazione. Supponiamo di sostituire la riga $a_j$ con

$$
a_j'=a_j+\lambda a_k,
\qquad k\neq j.
$$

Indichiamo con $S$ lo span delle righe originarie e con $S'$ lo span delle righe dopo la trasformazione.

Ogni riga nuova appartiene a $S$, perché $a_j'$ è combinazione lineare di $a_j$ e $a_k$. Quindi

$$
S'\subseteq S.
$$

Viceversa,

$$
a_j=a_j'-\lambda a_k,
$$

e tutte le righe originarie sono combinazioni lineari delle righe nuove. Quindi

$$
S\subseteq S'.
$$

Pertanto

$$
S=S'.
$$

Di conseguenza, le operazioni elementari di riga preservano il **rango di riga**.

### 6.2 Lo span delle colonne può cambiare

Le operazioni di riga, invece, possono cambiare lo span delle colonne.

Questo è un punto importante: se le colonne di una matrice rappresentano vettori che generano un certo sottospazio e si applicano operazioni di riga, le nuove colonne possono generare un sottospazio diverso.

Le operazioni di colonna hanno il comportamento duale:

- preservano lo span delle colonne;
- in generale possono modificare lo span delle righe.

Per questo, quando si usa Gauss per studiare lo span delle colonne di una matrice, bisogna essere consapevoli che le operazioni di riga modificano i vettori-colonna. Esse sono comunque utili per individuare le colonne pivot della matrice originale, ma non si deve interpretare lo span delle colonne della matrice ridotta come lo stesso sottospazio generato dalle colonne iniziali senza ulteriori argomentazioni.

---

## 7. Algoritmo di eliminazione di Gauss

L’obiettivo dell’algoritmo è trasformare una matrice qualsiasi in una matrice a scala usando operazioni elementari di riga.

### 7.1 Struttura ricorsiva dell’algoritmo

Si considera la prima colonna della matrice corrente.

#### Caso 1: la colonna è tutta nulla

Se la prima colonna è composta interamente da zeri, la si ignora e si applica nuovamente l’algoritmo alla sottomatrice ottenuta considerando le colonne successive.

Se anche la colonna successiva è nulla, si continua allo stesso modo.

In generale, si cerca la prima colonna non nulla.

#### Caso 2: la prima colonna non è nulla

Se la prima colonna contiene un elemento non nullo, si sceglie una riga $j$ tale che

$$
a_{j1}\neq 0.
$$

Se necessario, si scambia la riga $j$ con la prima riga, in modo da portare un elemento non nullo nella posizione iniziale.

Si può poi normalizzare il pivot moltiplicando la prima riga per $1/a_{11}$, se si desidera ottenere un pivot uguale a $1$.

Successivamente, per ogni riga sotto la prima, si elimina l’elemento della prima colonna usando l’operazione

$$
R_i\longleftarrow R_i-\frac{a_{i1}}{a_{11}}R_1.
$$

Infatti, nella prima componente della nuova riga si ottiene

$$
a_{i1}-\frac{a_{i1}}{a_{11}}a_{11}=0.
$$

In questo modo il primo pivot è seguito da zeri in tutte le righe sottostanti.

A questo punto la prima riga e la prima colonna sono sistemate. Non vengono cancellate: semplicemente non vengono più modificate. Si considera il rettangolo che resta sotto e a destra del primo pivot e si ripete lo stesso procedimento.

L’algoritmo procede quindi ricorsivamente su matrici sempre più piccole:

1. trovare la prima colonna non nulla della sottomatrice;
2. portare un elemento non nullo nella prima posizione disponibile;
3. usarlo come pivot;
4. annullare tutti gli elementi sottostanti nella stessa colonna;
5. passare alla sottomatrice situata sotto e a destra del pivot.

Alla fine si ottiene una matrice a scala.

### 7.2 Osservazione sugli indici

Quando si lavora con una sottomatrice, la notazione degli indici può riferirsi alla sottomatrice corrente, non necessariamente alla matrice completa.

Per esempio, se si considera il blocco sotto il primo pivot, la prima riga e la prima colonna di quel blocco possono essere indicate con $a_{11}$ e $a_{21}$ anche se, nella matrice originale, corrispondono ad altre righe e colonne.

È quindi necessario distinguere sempre:

- gli indici relativi alla matrice completa;
- gli indici relativi alla sottomatrice su cui l’algoritmo sta operando.

### 7.3 Esempio di eliminazione

Si parte da una matrice completa qualsiasi. Se nella prima posizione compare uno zero ma nella prima colonna esiste un elemento non nullo più in basso, si scambia la prima riga con una riga appropriata.

Dopo lo scambio, si utilizza il pivot nella prima colonna per annullare tutti gli elementi sottostanti. Per esempio, se il pivot è $a_{11}\neq 0$ e nella riga $j$ compare $a_{j1}\neq 0$, si esegue

$$
R_j\longleftarrow R_j-\frac{a_{j1}}{a_{11}}R_1.
$$

Ripetendo l’operazione per tutte le righe sotto la prima, la prima colonna assume la forma

$$
\begin{pmatrix}
a_{11}\\
0\\
\vdots\\
0
\end{pmatrix}.
$$

Poi si lavora sulla sottomatrice rimanente. Il risultato è una matrice a scala, dalla quale il sistema si risolve con la sostituzione all’indietro.

---

## 8. Teorema sulla risoluzione dei sistemi a scala

Sia

$$
Ax=b
$$

un sistema lineare con $n$ incognite. Si consideri la matrice completa $(A\mid b)$ e si supponga che essa sia in forma a scala.

Indichiamo con:

- $\operatorname{rank}_{\mathrm{righe}}(A)$ il rango di riga della matrice dei coefficienti;
- $\operatorname{rank}_{\mathrm{righe}}(A\mid b)$ il rango di riga della matrice completa;
- $k$ il numero di pivot nelle colonne delle incognite.

Allora:

### 8.1 Criterio di esistenza

Il sistema è risolubile se e solo se

$$
\operatorname{rank}_{\mathrm{righe}}(A)
=
\operatorname{rank}_{\mathrm{righe}}(A\mid b).
$$

Infatti, il rango della matrice completa è maggiore di quello della matrice dei coefficienti esattamente quando compare un pivot nella colonna dei termini noti. Questo equivale a una riga

$$
0=c,\qquad c\neq 0,
$$

che rende il sistema incompatibile.

### 8.2 Caso di soluzione unica

Se il sistema è compatibile e

$$
\operatorname{rank}_{\mathrm{righe}}(A)=n,
$$

dove $n$ è il numero delle incognite, allora ci sono $n$ pivot per $n$ incognite. Non ci sono variabili libere e il sistema ha un’unica soluzione.

In questo caso:

$$
\operatorname{rank}_{\mathrm{righe}}(A)
=
\operatorname{rank}_{\mathrm{righe}}(A\mid b)
=
n.
$$

### 8.3 Caso di infinite soluzioni

Se il sistema è compatibile e

$$
\operatorname{rank}_{\mathrm{righe}}(A)
=
\operatorname{rank}_{\mathrm{righe}}(A\mid b)
=
k<n,
$$

allora ci sono $k$ pivot e $n-k$ variabili libere.

Le soluzioni dipendono quindi da $n-k$ parametri.

Se il campo $\mathbb K$ è infinito, il sistema ha infinite soluzioni. Se $\mathbb K$ è finito, il numero delle soluzioni è

$$
|\mathbb K|^{\,n-k}.
$$

---

## 9. Esempio con variabili libere

Consideriamo il sistema

$$
\begin{cases}
x_1+x_2-x_3+2x_4=2,\\
x_3+x_4=-1.
\end{cases}
$$

La matrice completa è

$$
\left(
\begin{array}{cccc|c}
1 & 1 & -1 & 2 & 2\\
0 & 0 & 1 & 1 & -1
\end{array}
\right).
$$

I pivot si trovano nella prima e nella terza colonna, corrispondenti a $x_1$ e $x_3$.

Le colonne senza pivot sono la seconda e la quarta, corrispondenti a $x_2$ e $x_4$. Queste sono le variabili libere.

Ponendo

$$
x_2=s,
\qquad
x_4=t,
$$

la seconda equazione dà

$$
x_3+t=-1,
$$

da cui

$$
x_3=-1-t.
$$

Sostituendo nella prima equazione:

$$
x_1+s-(-1-t)+2t=2,
$$

quindi

$$
x_1=1-s-3t.
$$

L’insieme delle soluzioni è dunque

$$
\begin{pmatrix}
x_1\\
x_2\\
x_3\\
x_4
\end{pmatrix}
=
\begin{pmatrix}
1-s-3t\\
s\\
-1-t\\
t
\end{pmatrix}.
$$

Raccogliendo i parametri:

$$
\begin{pmatrix}
x_1\\
x_2\\
x_3\\
x_4
\end{pmatrix}
=
\begin{pmatrix}
1\\
0\\
-1\\
0
\end{pmatrix}
+
s
\begin{pmatrix}
-1\\
1\\
0\\
0
\end{pmatrix}
+
t
\begin{pmatrix}
-3\\
0\\
-1\\
1
\end{pmatrix}.
$$

La presenza di due variabili libere corrisponde ai due parametri $s$ e $t$.

---

## 10. Gauss e appartenenza a uno span

Siano $v_1,\dots,v_k\in \mathbb K^m$ e sia

$$
A=
\begin{pmatrix}
| & & |\\
v_1 & \cdots & v_k\\
| & & |
\end{pmatrix}.
$$

Per stabilire se un vettore $w\in\mathbb K^m$ appartiene allo span dei vettori $v_1,\dots,v_k$, si considera il sistema

$$
Ax=w.
$$

Si applica l’algoritmo di Gauss alla matrice completa

$$
(A\mid w).
$$

Dopo le operazioni di riga si ottiene una matrice a scala

$$
(S\mid w').
$$

Il vettore $w$ appartiene allo span delle colonne di $A$ se e solo se il sistema è compatibile, cioè se non compare una riga del tipo

$$
0=c,\qquad c\neq 0.
$$

Equivalentemente, nelle righe in cui la parte dei coefficienti è nulla deve essere nulla anche la componente corrispondente del termine noto.

### Esempio

Consideriamo i vettori

$$
v_1=
\begin{pmatrix}
1\\
-1\\
0
\end{pmatrix},
\qquad
v_2=
\begin{pmatrix}
0\\
1\\
-1
\end{pmatrix},
$$

e un vettore generico

$$
w=
\begin{pmatrix}
x\\
y\\
z
\end{pmatrix}.
$$

Per verificare se $w\in\operatorname{span}(v_1,v_2)$, si considera

$$
\left(
\begin{array}{cc|c}
1 & 0 & x\\
-1 & 1 & y\\
0 & -1 & z
\end{array}
\right).
$$

Le prime due colonne sono i coefficienti dei generatori, mentre l’ultima colonna contiene il vettore $w$.

Applicando operazioni di riga si può ottenere una forma a scala del tipo

$$
\left(
\begin{array}{cc|c}
1 & 0 & x\\
0 & 1 & x+y\\
0 & 0 & x+y+z
\end{array}
\right).
$$

Affinché non compaia una contraddizione, deve essere

$$
x+y+z=0.
$$

Pertanto

$$
w\in\operatorname{span}(v_1,v_2)
\iff
x+y+z=0.
$$

L’equazione

$$
x+y+z=0
$$

è quindi un’equazione cartesiana del sottospazio generato da $v_1$ e $v_2$.

Questo mostra il passaggio da una descrizione mediante generatori a una descrizione mediante equazioni.

---

## 11. Trovare una base di un sottospazio definito da equazioni

Supponiamo che un sottospazio $W\subseteq \mathbb K^n$ sia definito come insieme delle soluzioni di un sistema lineare omogeneo:

$$
W=\{x\in\mathbb K^n: Ax=0\}.
$$

Per trovare una base di $W$:

1. si porta la matrice $A$ in forma a scala;
2. si individuano le variabili pivot e le variabili libere;
3. si assegnano parametri alle variabili libere;
4. si esprimono le variabili pivot in funzione dei parametri;
5. si raccoglie ciascun parametro.

I vettori che moltiplicano i parametri generano $W$. In questo contesto risultano anche linearmente indipendenti, perché ogni parametro corrisponde a una variabile libera distinta; dunque formano una base.

### Esempio

Consideriamo il sottospazio definito da

$$
\begin{cases}
x_1+2x_2=0,\\
x_3-x_4=0.
\end{cases}
$$

La matrice dei coefficienti è già a scala:

$$
\begin{pmatrix}
1 & 2 & 0 & 0\\
0 & 0 & 1 & -1
\end{pmatrix}.
$$

I pivot sono nella prima e nella terza colonna. Le variabili libere sono quindi $x_2$ e $x_4$.

Poniamo

$$
x_2=t,
\qquad
x_4=u.
$$

Le equazioni diventano

$$
x_1=-2t,
\qquad
x_3=u.
$$

Quindi ogni vettore di $W$ ha la forma

$$
\begin{pmatrix}
x_1\\
x_2\\
x_3\\
x_4
\end{pmatrix}
=
\begin{pmatrix}
-2t\\
t\\
u\\
u
\end{pmatrix}
=
t
\begin{pmatrix}
-2\\
1\\
0\\
0
\end{pmatrix}
+
u
\begin{pmatrix}
0\\
0\\
1\\
1
\end{pmatrix}.
$$

Ne segue che

$$
W=
\operatorname{span}
\left\{
\begin{pmatrix}
-2\\
1\\
0\\
0
\end{pmatrix},
\begin{pmatrix}
0\\
0\\
1\\
1
\end{pmatrix}
\right\}.
$$

I due vettori costituiscono una base di $W$.

Il numero di vettori della base, in questo esempio, è il numero di variabili libere.

---

## 12. Indipendenza lineare e rango

L’algoritmo di Gauss permette anche di verificare se una famiglia di vettori è linearmente indipendente.

Siano $v_1,\dots,v_k\in\mathbb K^n$. La famiglia è linearmente indipendente se l’equazione

$$
\lambda_1v_1+\cdots+\lambda_kv_k=0
$$

ha come unica soluzione

$$
\lambda_1=\cdots=\lambda_k=0.
$$

Costruendo la matrice che ha i vettori come colonne,

$$
A=
\begin{pmatrix}
| & & |\\
v_1 & \cdots & v_k\\
| & & |
\end{pmatrix},
$$

la condizione diventa

$$
A\lambda=0.
$$

Quindi si può applicare Gauss alla matrice $A$ e controllare se tutte le variabili sono pivot. Se ogni colonna contiene un pivot, il sistema omogeneo ha soltanto la soluzione nulla e i vettori sono linearmente indipendenti.

Se invece compare almeno una variabile libera, esiste una combinazione lineare non banale che dà il vettore nullo, e la famiglia è linearmente dipendente.

Gauss permette quindi di:

- verificare l’indipendenza lineare;
- estrarre da un insieme di generatori una sottofamiglia linearmente indipendente;
- costruire una base eliminando i vettori ridondanti;
- calcolare il rango.

---

## 13. Intersezione e somma di sottospazi

L’algoritmo di Gauss può essere usato anche per operare con sottospazi descritti in modi diversi.

### 13.1 Intersezione

Se due sottospazi sono descritti mediante equazioni,

$$
W_1=\{x: A_1x=0\},
\qquad
W_2=\{x: A_2x=0\},
$$

allora la loro intersezione è descritta imponendo contemporaneamente tutte le equazioni:

$$
W_1\cap W_2
=
\{x:
A_1x=0
\text{ e }
A_2x=0\}.
$$

Si costruisce quindi il sistema ottenuto mettendo insieme le equazioni di $W_1$ e quelle di $W_2$:

$$
\begin{pmatrix}
A_1\\
A_2
\end{pmatrix}x=0.
$$

Risolvendo questo sistema con Gauss si ottiene una parametrizzazione dell’intersezione e quindi una base di $W_1\cap W_2$.

Se invece i sottospazi sono dati mediante generatori, si può prima trasformare ciascuna descrizione in equazioni, oppure impostare direttamente le condizioni che esprimono l’appartenenza a entrambi.

### 13.2 Somma

Se $W_1$ e $W_2$ sono dati tramite insiemi di generatori,

$$
W_1=\operatorname{span}(v_1,\dots,v_r),
\qquad
W_2=\operatorname{span}(w_1,\dots,w_s),
$$

allora

$$
W_1+W_2
=
\operatorname{span}(v_1,\dots,v_r,w_1,\dots,w_s).
$$

L’unione dei due insiemi di generatori genera la somma, anche se potrebbe non essere linearmente indipendente.

Per trovare una base di $W_1+W_2$, si costruisce la matrice con tutte queste colonne e si usa Gauss per eliminare i vettori ridondanti, ottenendo una famiglia linearmente indipendente che genera lo stesso sottospazio.

In sintesi:

- per l’intersezione si mettono insieme le equazioni;
- per la somma si mettono insieme i generatori;
- in entrambi i casi Gauss permette poi di passare a una base.
