---
type: lecture-note
course: Geometria 1
date: 2026-10-07
title: Coordinate, basi e dimensione degli spazi vettoriali
source_transcript: _transcripts/Geometria 1/2026-10-07 - Coordinate, basi e
  dimensione degli spazi vettoriali.md
source_hash: sha256:6d95338851a56c635b7ee568603a0def38c917a300f8c3ba79d04f8d2a02eedc
teaching_model: openai/gpt-5.6-luna
taught_at: 2026-10-07T09:20:59.456Z
---

# Coordinate, basi e dimensione degli spazi vettoriali

## Coordinate rispetto a una base

Sia $V$ uno spazio vettoriale su un campo $K$ e sia $\mathcal{B}$ una base di $V$.

Per definizione di base, ogni vettore $v \in V$ si può scrivere come combinazione lineare dei vettori di $\mathcal{B}$. Se la base è indicizzata da un insieme $A$, si può scrivere formalmente

$$
v=\sum_{w\in A}\lambda_w w.
$$

Il coefficiente $\lambda_w \in K$ è la coordinata di $v$ lungo il vettore di base $w$.

### Il caso di una base infinita

Quando $\mathcal{B}$ è infinita, la scrittura precedente non deve essere interpretata come una somma infinita arbitraria. Per definire una combinazione lineare è necessario che solo un numero finito di coefficienti sia diverso da zero:

$$
\lambda_w\neq 0
\quad\text{solo per un numero finito di }w\in A.
$$

Di conseguenza, ogni vettore è comunque combinazione lineare finita di vettori della base.

L’insieme dei coefficienti $(\lambda_w)_{w\in A}$ è quindi una famiglia in $K^A$ a supporto finito. Il supporto di una famiglia è

$$
\operatorname{supp}(\lambda)
=
\{w\in A:\lambda_w\neq 0\}.
$$

Nel caso di una base infinita, le coordinate di un vettore sono dunque una funzione

$$
\mathcal{B}\longrightarrow K
$$

che è diversa da zero soltanto su un insieme finito.

> [!warning]
> Non si può identificare $V$ con l’insieme di tutte le funzioni $\mathcal{B}\to K$, perché queste potrebbero avere infiniti valori non nulli. Si deve considerare il sottospazio delle funzioni a supporto finito.

## Coordinate come applicazione

Fissata una base $\mathcal{B}$, a ogni vettore $v\in V$ si associa la funzione

$$
[v]_{\mathcal{B}}:\mathcal{B}\longrightarrow K
$$

definita da

$$
[v]_{\mathcal{B}}(w)=\lambda_w,
$$

dove $\lambda_w$ è il coefficiente di $w$ nello sviluppo di $v$ rispetto alla base $\mathcal{B}$.

La mappa delle coordinate è quindi

$$
\Phi_{\mathcal{B}}:V\longrightarrow K^{(\mathcal{B})},
$$

dove $K^{(\mathcal{B})}$ indica l’insieme delle funzioni $\mathcal{B}\to K$ a supporto finito.

Se la base è finita, $K^{(\mathcal{B})}$ coincide con un opportuno spazio $K^n$.

La scelta della base induce quindi una corrispondenza tra:

- i vettori di $V$;
- le loro famiglie di coordinate rispetto a $\mathcal{B}$.

La base permette di descrivere astrattamente un vettore tramite i coefficienti che compaiono nel suo sviluppo.

---

# Il caso finito: basi ordinate e coordinate in $K^n$

Supponiamo ora che la base sia finita e abbia $n$ elementi. Per parlare di coordinate come $n$-uple ordinate è necessario scegliere un ordinamento:

$$
\mathcal{B}=(v_1,\ldots,v_n).
$$

Una base finita viene quindi considerata come una lista ordinata di vettori, non soltanto come un insieme.

Ogni vettore $v\in V$ si scrive in modo unico come

$$
v=x_1v_1+\cdots+x_nv_n.
$$

Il vettore delle coordinate di $v$ rispetto alla base ordinata $\mathcal{B}$ è

$$
[v]_{\mathcal{B}}
=
\begin{pmatrix}
x_1\\
\vdots\\
x_n
\end{pmatrix}
\in K^n.
$$

La mappa delle coordinate è dunque

$$
\Phi_{\mathcal{B}}:V\longrightarrow K^n,
\qquad
v\longmapsto [v]_{\mathcal{B}}.
$$

La scrittura

$$
v=x_1v_1+\cdots+x_nv_n
$$

e la scrittura

$$
[v]_{\mathcal{B}}=(x_1,\ldots,x_n)
$$

descrivono lo stesso vettore in due modi diversi: la prima usa i vettori della base, la seconda usa i coefficienti.

## L’importanza dell’ordinamento

Se si cambia l’ordine dei vettori della base, cambiano in generale le coordinate.

Per esempio, in $\mathbb{R}^2$ si possono considerare le due basi ordinate

$$
\mathcal{B}=(e_1,e_2)
\qquad\text{e}\qquad
\mathcal{B}'=(e_2,e_1).
$$

Se

$$
v=xe_1+ye_2,
$$

allora

$$
[v]_{\mathcal{B}}
=
\begin{pmatrix}
x\\
y
\end{pmatrix},
\qquad
[v]_{\mathcal{B}'}
=
\begin{pmatrix}
y\\
x
\end{pmatrix}.
$$

Il vettore geometrico non è cambiato; sono cambiate le coordinate perché è cambiato l’ordine dei vettori di riferimento.

Per questo, quando si lavora con le coordinate, si considera sempre una base ordinata.

---

# La mappa delle coordinate è un isomorfismo

La mappa

$$
\Phi_{\mathcal{B}}:V\longrightarrow K^n
$$

è una biiezione lineare, quindi è un isomorfismo di spazi vettoriali.

## Linearità

Siano

$$
v=x_1v_1+\cdots+x_nv_n,
\qquad
w=y_1v_1+\cdots+y_nv_n.
$$

Allora

$$
v+w
=
(x_1+y_1)v_1+\cdots+(x_n+y_n)v_n.
$$

Pertanto

$$
[v+w]_{\mathcal{B}}
=
\begin{pmatrix}
x_1+y_1\\
\vdots\\
x_n+y_n
\end{pmatrix}
=
\begin{pmatrix}
x_1\\
\vdots\\
x_n
\end{pmatrix}
+
\begin{pmatrix}
y_1\\
\vdots\\
y_n
\end{pmatrix}.
$$

Quindi

$$
\Phi_{\mathcal{B}}(v+w)
=
\Phi_{\mathcal{B}}(v)+\Phi_{\mathcal{B}}(w).
$$

Analogamente, per ogni $\alpha\in K$,

$$
\alpha v
=
(\alpha x_1)v_1+\cdots+(\alpha x_n)v_n,
$$

e dunque

$$
[\alpha v]_{\mathcal{B}}
=
\alpha [v]_{\mathcal{B}}.
$$

Le coordinate rispettano quindi le operazioni di somma e moltiplicazione per scalare.

## Iniettività

Supponiamo che due vettori $v,w\in V$ abbiano le stesse coordinate:

$$
[v]_{\mathcal{B}}=[w]_{\mathcal{B}}.
$$

Questo significa che hanno gli stessi coefficienti nello sviluppo rispetto alla base. Quindi

$$
v=x_1v_1+\cdots+x_nv_n
\quad\text{e}\quad
w=x_1v_1+\cdots+x_nv_n.
$$

Ne segue che $v=w$. Pertanto $\Phi_{\mathcal{B}}$ è iniettiva.

## Suriettività

Sia

$$
(x_1,\ldots,x_n)\in K^n.
$$

Consideriamo il vettore

$$
v=x_1v_1+\cdots+x_nv_n\in V.
$$

Per costruzione,

$$
[v]_{\mathcal{B}}=(x_1,\ldots,x_n).
$$

Ogni elemento di $K^n$ è quindi immagine di un vettore di $V$, perciò $\Phi_{\mathcal{B}}$ è suriettiva.

## Conclusione

La mappa delle coordinate è un isomorfismo:

$$
V\cong K^n.
$$

Questo mostra che ogni spazio vettoriale finitamente dimensionale è, una volta scelta una base, essenzialmente uno spazio di vettori-colonna di scalari.

---

# Matrici come spazio vettoriale

## Definizione dello spazio delle matrici

Sia $K$ un campo. Si indica con

$$
M_{m,n}(K)
$$

l’insieme delle matrici con $m$ righe e $n$ colonne a coefficienti in $K$:

$$
A=
\begin{pmatrix}
a_{11} & \cdots & a_{1n}\\
\vdots & \ddots & \vdots\\
a_{m1} & \cdots & a_{mn}
\end{pmatrix}.
$$

L’indice $i$ indica la riga e l’indice $j$ la colonna; quindi $a_{ij}$ è l’elemento nella posizione $(i,j)$.

Quando si scrive semplicemente $M_n(K)$, si intende lo spazio delle matrici quadrate $n\times n$:

$$
M_n(K)=M_{n,n}(K).
$$

Per esempio, $M_2(K)$ è lo spazio delle matrici $2\times 2$.

## Operazioni

La somma è definita soltanto tra matrici dello stesso tipo, cioè con lo stesso numero di righe e di colonne:

$$
(A+B)_{ij}=a_{ij}+b_{ij}.
$$

La moltiplicazione per uno scalare $\lambda\in K$ è definita elemento per elemento:

$$
(\lambda A)_{ij}=\lambda a_{ij}.
$$

Con queste operazioni, $M_{m,n}(K)$ è uno spazio vettoriale su $K$.

Le operazioni sono analoghe a quelle di $K^n$, con la differenza che gli elementi non sono organizzati in una singola lista, ma in una tabella con due indici.

---

# La base canonica di $M_{m,n}(K)$

Per ogni coppia di indici

$$
1\leq i\leq m,
\qquad
1\leq j\leq n,
$$

si definisce la matrice elementare $E_{ij}$ come la matrice che ha:

- un $1$ nella posizione $(i,j)$;
- tutti gli altri elementi uguali a $0$.

Ad esempio, in $M_{2}(K)$:

$$
E_{11}=
\begin{pmatrix}
1&0\\
0&0
\end{pmatrix},
\qquad
E_{12}=
\begin{pmatrix}
0&1\\
0&0
\end{pmatrix},
$$

$$
E_{21}=
\begin{pmatrix}
0&0\\
1&0
\end{pmatrix},
\qquad
E_{22}=
\begin{pmatrix}
0&0\\
0&1
\end{pmatrix}.
$$

L’insieme

$$
\mathcal{E}
=
\{E_{ij}:1\leq i\leq m,\ 1\leq j\leq n\}
$$

è la base canonica di $M_{m,n}(K)$.

## Generazione

Sia

$$
A=(a_{ij})\in M_{m,n}(K).
$$

Allora

$$
A=\sum_{i=1}^{m}\sum_{j=1}^{n}a_{ij}E_{ij}.
$$

Infatti, il termine $a_{ij}E_{ij}$ contribuisce soltanto alla posizione $(i,j)$, dove inserisce il valore $a_{ij}$. Sommando tutti questi contributi si ricostruisce esattamente la matrice $A$.

Quindi le matrici elementari generano $M_{m,n}(K)$.

## Indipendenza lineare

Supponiamo che

$$
\sum_{i=1}^{m}\sum_{j=1}^{n}\lambda_{ij}E_{ij}=0.
$$

Considerando la posizione $(i,j)$, l’unica matrice della somma che contribuisce a quella posizione è $E_{ij}$. Ne segue che

$$
\lambda_{ij}=0
\qquad
\text{per ogni }i,j.
$$

Pertanto le matrici elementari sono linearmente indipendenti.

Di conseguenza, $\mathcal{E}$ è una base di $M_{m,n}(K)$.

## Dimensione

Il numero di posizioni in una matrice con $m$ righe e $n$ colonne è $mn$. Quindi

$$
\dim_K M_{m,n}(K)=mn.
$$

In particolare,

$$
\dim_K M_n(K)=n^2.
$$

Per esempio,

$$
\dim_K M_2(K)=4.
$$

Le quattro coordinate di una matrice $2\times 2$ sono infatti i suoi quattro elementi:

$$
\begin{pmatrix}
a_{11}&a_{12}\\
a_{21}&a_{22}
\end{pmatrix}.
$$

> [!note]
> La base canonica delle matrici è utile proprio perché permette di leggere direttamente le coordinate: il coefficiente di $E_{ij}$ nello sviluppo di $A$ è l’elemento $a_{ij}$.

---

# Verifica dell’indipendenza: attenzione al campo

Negli esercizi sulle matrici si può arrivare a sistemi di equazioni sui coefficienti. È importante ricordare che le conclusioni dipendono dal campo degli scalari.

Per esempio, da

$$
2\lambda=0
$$

si può dedurre $\lambda=0$ soltanto se $2$ è invertibile nel campo $K$.

Questo è vero, ad esempio, in $\mathbb{R}$ e in $\mathbb{C}$. In un campo di caratteristica $2$, invece,

$$
2=0,
$$

quindi l’equazione $2\lambda=0$ è vera per ogni $\lambda$ e non permette di concludere che $\lambda=0$.

> [!warning]
> Non si può “dividere per $2$” senza verificare che $2$ sia non nullo e invertibile nel campo considerato. In generale, quando si risolvono relazioni lineari, bisogna tenere conto della caratteristica del campo.

---

# Basi: due caratterizzazioni fondamentali

Una base può essere definita come un insieme di vettori che è contemporaneamente:

1. linearmente indipendente;
2. generatore dello spazio.

Esistono però due ulteriori caratterizzazioni molto importanti.

## Base come insieme linearmente indipendente massimale

Un insieme $B\subseteq V$ è linearmente indipendente massimale se:

- $B$ è linearmente indipendente;
- ogni insieme che contiene propriamente $B$ è linearmente dipendente.

“Massimale” si riferisce all’inclusione tra insiemi: non è possibile aggiungere a $B$ un ulteriore vettore mantenendo l’indipendenza lineare.

### Dimostrazione: un insieme linearmente indipendente massimale genera

Supponiamo che $B$ sia linearmente indipendente massimale. Vogliamo dimostrare che $B$ genera $V$.

Supponiamo per assurdo che esista un vettore

$$
v\in V
\qquad\text{tale che}\qquad
v\notin \operatorname{span}(B).
$$

Allora l’insieme

$$
B'=B\cup\{v\}
$$

contiene propriamente $B$. Poiché $B$ è massimale linearmente indipendente, $B'$ deve essere linearmente dipendente.

Quindi esistono scalari, non tutti nulli, tali che

$$
\sum_{i=1}^{r}\alpha_i b_i+\beta v=0,
\qquad
b_i\in B.
$$

Il coefficiente $\beta$ deve essere diverso da zero. Infatti, se $\beta=0$, si avrebbe una relazione lineare non banale tra elementi di $B$, in contraddizione con l’indipendenza di $B$.

Poiché $\beta\neq 0$, si può ricavare

$$
v
=
-\frac{1}{\beta}
\sum_{i=1}^{r}\alpha_i b_i.
$$

Questo implica

$$
v\in\operatorname{span}(B),
$$

in contraddizione con la scelta di $v$.

Pertanto non esiste alcun vettore fuori da $\operatorname{span}(B)$ e quindi

$$
\operatorname{span}(B)=V.
$$

Essendo già linearmente indipendente, $B$ è una base.

## Base come insieme minimale di generatori

Un insieme $B\subseteq V$ è un insieme minimale di generatori se:

- $B$ genera $V$;
- nessun suo sottoinsieme proprio genera $V$.

“Minimale” si riferisce all’inclusione tra insiemi: non è possibile eliminare un vettore da $B$ mantenendo la proprietà di generare tutto lo spazio.

### Dimostrazione: un insieme minimale di generatori è indipendente

Supponiamo che $B$ sia un insieme minimale di generatori. Vogliamo dimostrare che $B$ è linearmente indipendente.

Supponiamo per assurdo che $B$ sia linearmente dipendente. Allora esiste una relazione lineare non banale

$$
\alpha_1b_1+\cdots+\alpha_rb_r=0,
$$

con almeno un coefficiente non nullo. Supponiamo, per esempio, che $\alpha_1\neq 0$. Allora

$$
b_1
=
-\frac{1}{\alpha_1}
\left(
\alpha_2b_2+\cdots+\alpha_rb_r
\right).
$$

Quindi $b_1$ appartiene allo span degli altri vettori:

$$
b_1\in\operatorname{span}(B\setminus\{b_1\}).
$$

Ogni vettore generato da $B$ può quindi essere riscritto usando soltanto gli elementi di $B\setminus\{b_1\}$. Ne segue che

$$
\operatorname{span}(B\setminus\{b_1\})=\operatorname{span}(B)=V.
$$

Ma questo contraddice la minimalità di $B$.

Pertanto $B$ è linearmente indipendente. Essendo anche un insieme di generatori, è una base.

## Equivalenza

Per ogni insieme $B\subseteq V$ sono equivalenti:

1. $B$ è una base di $V$;
2. $B$ è linearmente indipendente massimale;
3. $B$ è un insieme minimale di generatori.

Queste tre descrizioni sottolineano aspetti diversi della stessa situazione:

- la base non contiene relazioni lineari non banali;
- non si può aggiungere alcun vettore senza perdere l’indipendenza;
- non si può eliminare alcun vettore senza perdere la proprietà di generare.

---

# Esistenza di una base nel caso finitamente generato

Supponiamo che $V$ sia generato da un insieme finito

$$
A=\{v_1,\ldots,v_m\}.
$$

Se $A$ è già linearmente indipendente, allora è una base.

Se invece $A$ è linearmente dipendente, esiste almeno un vettore che può essere eliminato senza cambiare lo spazio generato. Si elimina tale vettore e si considera il nuovo insieme. Se anche il nuovo insieme è dipendente, si continua.

Poiché l’insieme iniziale è finito, il procedimento termina dopo un numero finito di passi. Si ottiene un insieme che:

- genera ancora $V$;
- è linearmente indipendente.

Questo insieme è una base di $V$.

In particolare, ogni spazio vettoriale finitamente generato ammette una base finita.

---

# Lemma di scambio

Il risultato centrale per confrontare basi è il lemma di scambio, noto anche come lemma di Steinitz.

## Forma elementare

Siano

$$
\{u_1,\ldots,u_r\}
$$

un insieme linearmente indipendente e $v\in V$ un vettore che appartiene allo span di questi vettori. Supponiamo che

$$
v=\alpha_1u_1+\cdots+\alpha_ru_r
$$

e che, per esempio, $\alpha_1\neq 0$.

Allora si può sostituire $u_1$ con $v$:

$$
\{v,u_2,\ldots,u_r\}.
$$

Il nuovo insieme:

1. è linearmente indipendente;
2. genera lo stesso sottospazio del vecchio insieme.

### Dimostrazione della generazione

Dalla relazione

$$
v=\alpha_1u_1+\cdots+\alpha_ru_r
$$

si ricava, poiché $\alpha_1\neq 0$,

$$
u_1
=
\frac{1}{\alpha_1}
\left(
v-\alpha_2u_2-\cdots-\alpha_ru_r
\right).
$$

Quindi $u_1$ appartiene allo span di $\{v,u_2,\ldots,u_r\}$. Gli altri vettori sono già presenti nel nuovo insieme. Pertanto

$$
\operatorname{span}(u_1,\ldots,u_r)
\subseteq
\operatorname{span}(v,u_2,\ldots,u_r).
$$

L’inclusione opposta segue dal fatto che $v$ è combinazione lineare dei vecchi vettori. Quindi gli span coincidono.

### Dimostrazione dell’indipendenza

Supponiamo che

$$
\beta v+\beta_2u_2+\cdots+\beta_ru_r=0.
$$

Sostituendo l’espressione di $v$ si ottiene

$$
\beta
(\alpha_1u_1+\cdots+\alpha_ru_r)
+\beta_2u_2+\cdots+\beta_ru_r=0.
$$

Raccogliendo i coefficienti:

$$
(\beta\alpha_1)u_1
+
(\beta\alpha_2+\beta_2)u_2
+\cdots+
(\beta\alpha_r+\beta_r)u_r
=0.
$$

Poiché $\{u_1,\ldots,u_r\}$ è linearmente indipendente, tutti i coefficienti devono essere nulli. In particolare,

$$
\beta\alpha_1=0.
$$

Essendo $\alpha_1\neq 0$, segue $\beta=0$. Di conseguenza anche tutti gli altri coefficienti sono nulli:

$$
\beta_2=\cdots=\beta_r=0.
$$

Il nuovo insieme è quindi linearmente indipendente.

---

# Lemma di scambio nella forma per basi

Sia

$$
\mathcal{B}=(u_1,\ldots,u_n)
$$

una base di $V$ e sia

$$
\mathcal{C}=(w_1,\ldots,w_m)
$$

un insieme linearmente indipendente.

Il lemma di scambio permette di sostituire progressivamente alcuni vettori della base $\mathcal{B}$ con vettori di $\mathcal{C}$, mantenendo sempre una base.

Si procede nel modo seguente:

1. si scrive $w_1$ come combinazione lineare dei vettori di $\mathcal{B}$;
2. poiché $w_1\neq 0$, almeno un coefficiente è non nullo;
3. si scambia $w_1$ con il vettore della base corrispondente a quel coefficiente;
4. si ottiene una nuova base;
5. si considera $w_2$ e si ripete il procedimento;
6. si continua finché è possibile.

Dopo ogni scambio:

- il nuovo insieme genera ancora $V$;
- il nuovo insieme rimane linearmente indipendente;
- un vettore di $\mathcal{C}$ entra nella base al posto di un vettore della base originale.

Non si può arrivare a sostituire più di $n$ vettori, perché la base iniziale contiene solo $n$ elementi. Di conseguenza,

$$
m\leq n.
$$

Questa è una delle conseguenze fondamentali del lemma di scambio:

> Un insieme linearmente indipendente in uno spazio generato da $n$ vettori contiene al massimo $n$ elementi.

In particolare, se $\mathcal{C}$ è anch’esso una base, allora si può applicare il risultato in entrambe le direzioni e ottenere

$$
m\leq n
\qquad\text{e}\qquad
n\leq m.
$$

Pertanto

$$
m=n.
$$

Quindi tutte le basi di uno spazio vettoriale finito hanno lo stesso numero di elementi.

---

# Dimensione

Sia $V$ uno spazio vettoriale finitamente dimensionale. La dimensione di $V$ è il numero di elementi di una sua base:

$$
\dim_K(V)=n
$$

se e solo se ogni base di $V$ contiene $n$ vettori.

Il fatto che il numero di elementi sia indipendente dalla base è garantito dal lemma di scambio.

La dimensione rappresenta quindi il numero di parametri indipendenti necessari per descrivere un vettore di $V$.

Se $\dim_K(V)=n$, allora, scelta una base ordinata,

$$
V\cong K^n.
$$

Le coordinate di un vettore sono precisamente questi $n$ parametri.

## Esempi

### Spazio delle colonne

$$
\dim_K(K^n)=n.
$$

La base canonica è

$$
e_1=
\begin{pmatrix}
1\\0\\\vdots\\0
\end{pmatrix},
\quad
\ldots,
\quad
e_n=
\begin{pmatrix}
0\\\vdots\\0\\1
\end{pmatrix}.
$$

### Matrici rettangolari

Per lo spazio delle matrici $m\times n$,

$$
\dim_K(M_{m,n}(K))=mn.
$$

### Matrici quadrate

Per lo spazio delle matrici quadrate $n\times n$,

$$
\dim_K(M_n(K))=n^2.
$$

Ad esempio,

$$
\dim_K(M_2(K))=4.
$$

---

# Confronto tra basi nel caso infinito

Nel caso finito, dire che due basi hanno lo stesso numero di elementi significa dimostrare che hanno la stessa cardinalità naturale.

Nel caso infinito la situazione è più delicata: non si parla semplicemente di uguaglianza tra numeri naturali, ma dell’esistenza di una biiezione tra gli insiemi delle due basi.

La formulazione generale è:

> Due basi dello stesso spazio vettoriale sono equipotenti, cioè tra esse esiste una biiezione.

Nel corso è stato sviluppato soprattutto il caso finito, utilizzando il lemma di scambio. Il caso generale richiede strumenti ulteriori, tipicamente un principio di scelta o risultati equivalenti sull’esistenza e il confronto delle basi infinite.

---

# Schema concettuale

Per uno spazio vettoriale finitamente dimensionale $V$:

$$
\boxed{
\text{base}
\Longleftrightarrow
\text{insieme linearmente indipendente massimale}
\Longleftrightarrow
\text{insieme minimale di generatori}
}
$$

Se una base ha $n$ elementi, allora:

- ogni vettore di $V$ è descritto da $n$ coordinate;
- $V$ è isomorfo a $K^n$;
- ogni insieme linearmente indipendente ha al massimo $n$ elementi;
- ogni insieme di generatori ha almeno $n$ elementi;
- ogni altra base ha esattamente $n$ elementi;
- $\dim_K(V)=n$.

Il lemma di scambio è il risultato che collega queste proprietà e permette di dimostrare l’unicità del numero di elementi di una base.