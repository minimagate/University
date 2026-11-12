---
type: lecture-note
course: Geometria 1
date: '2026-11-04'
title: Applicazioni lineari e matrici associate
source_transcript: _transcripts/Geometria 1/2026-11-04 - Applicazioni lineari e matrici associate.md
source_hash: sha256:cb40d0d3268174062d8d13e62643a3f02ae807790a890f9475d89348bde5eb4d
teaching_model: anthropic/claude-opus-5.5
taught_at: '2026-11-04T13:36:35.746Z'
---

# Applicazioni lineari e matrici associate

## 1. Un’applicazione lineare è determinata dai valori su una base

Siano $V$ e $W$ spazi vettoriali su un campo $\mathbb{K}$ e sia

$$
F:V\to W
$$

un’applicazione lineare. Se $\mathcal{B}=(v_1,\dots,v_n)$ è una base di $V$, allora $F$ è completamente determinata dai valori

$$
F(v_1),\dots,F(v_n).
$$

Infatti, ogni vettore $v\in V$ si scrive in modo unico come

$$
v=x_1v_1+\cdots+x_nv_n,
$$

e, per linearità,

$$
F(v)=x_1F(v_1)+\cdots+x_nF(v_n).
$$

Di conseguenza:

- se due applicazioni lineari assumono gli stessi valori sui vettori di una base, allora coincidono;
- assegnando arbitrariamente $n$ vettori $w_1,\dots,w_n\in W$, esiste un’unica applicazione lineare $F:V\to W$ tale che

$$
F(v_i)=w_i
\qquad\text{per ogni }i=1,\dots,n.
$$

Questo è il principio fondamentale che permette di costruire applicazioni lineari e, successivamente, matrici associate.

---

## 2. Coordinate rispetto a basi fissate

Siano

$$
\mathcal{B}=(v_1,\dots,v_n)
$$

una base di $V$ e

$$
\mathcal{B}'=(w_1,\dots,w_m)
$$

una base di $W$.

Le coordinate permettono di identificare:

$$
V\simeq \mathbb{K}^n,
\qquad
W\simeq \mathbb{K}^m.
$$

A ogni vettore $v\in V$ associamo il vettore colonna delle sue coordinate rispetto a $\mathcal{B}$:

$$
[v]_{\mathcal{B}}
=
\begin{pmatrix}
x_1\\
\vdots\\
x_n
\end{pmatrix}
\in\mathbb{K}^n,
$$

dove

$$
v=x_1v_1+\cdots+x_nv_n.
$$

Analogamente, a ogni $w\in W$ associamo il vettore colonna

$$
[w]_{\mathcal{B}'}
\in\mathbb{K}^m.
$$

Il passaggio alle coordinate è un isomorfismo di spazi vettoriali: le coordinate rispettano somme e prodotti per scalare, cioè

$$
[u+v]_{\mathcal{B}}
=
[u]_{\mathcal{B}}+[v]_{\mathcal{B}},
$$

e

$$
[\lambda v]_{\mathcal{B}}
=
\lambda[v]_{\mathcal{B}}.
$$

Lo stesso vale per le coordinate rispetto a $\mathcal{B}'$.

---

## 3. Matrice associata a un’applicazione lineare

Sia $F:V\to W$ lineare. Per ogni vettore della base di partenza consideriamo le coordinate della sua immagine nella base di arrivo:

$$
[F(v_1)]_{\mathcal{B}'},\dots,[F(v_n)]_{\mathcal{B}'}\in\mathbb{K}^m.
$$

La **matrice associata a $F$ rispetto alle basi $\mathcal{B}$ e $\mathcal{B}'$** è la matrice

$$
M_{\mathcal{B},\mathcal{B}'}(F)
=
\begin{pmatrix}
\big| & & \big|\\
[F(v_1)]_{\mathcal{B}'} & \cdots & [F(v_n)]_{\mathcal{B}'}\\
\big| & & \big|
\end{pmatrix}.
$$

È una matrice con $m$ righe e $n$ colonne:

$$
M_{\mathcal{B},\mathcal{B}'}(F)\in M_{m\times n}(\mathbb{K}).
$$

La $j$-esima colonna è, per definizione,

$$
\text{colonna }j
=
[F(v_j)]_{\mathcal{B}'}.
$$

Questa dipendenza dalle basi è essenziale: in generale, cambiando le basi cambiano sia le coordinate sia la matrice associata.

---

## 4. Formula fondamentale delle coordinate

Sia $v\in V$ e supponiamo che

$$
v=x_1v_1+\cdots+x_nv_n.
$$

Allora

$$
[v]_{\mathcal{B}}
=
\begin{pmatrix}
x_1\\
\vdots\\
x_n
\end{pmatrix}.
$$

Applicando $F$ e usando la linearità:

$$
F(v)
=
x_1F(v_1)+\cdots+x_nF(v_n).
$$

Passando alle coordinate rispetto a $\mathcal{B}'$:

$$
[F(v)]_{\mathcal{B}'}
=
x_1[F(v_1)]_{\mathcal{B}'}
+\cdots+
x_n[F(v_n)]_{\mathcal{B}'}.
$$

Per definizione della moltiplicazione matrice-vettore, questo equivale a

$$
[F(v)]_{\mathcal{B}'}
=
M_{\mathcal{B},\mathcal{B}'}(F)\,[v]_{\mathcal{B}}.
$$

Questa è la **formula fondamentale**:

$$
\boxed{
[F(v)]_{\mathcal{B}'}
=
M_{\mathcal{B},\mathcal{B}'}(F)\,[v]_{\mathcal{B}}
}
$$

In forma abbreviata, ponendo

$$
x=[v]_{\mathcal{B}},
\qquad
y=[F(v)]_{\mathcal{B}'},
\qquad
A=M_{\mathcal{B},\mathcal{B}'}(F),
$$

si ottiene

$$
y=Ax.
$$

Quindi, una volta fissate le basi, un’applicazione lineare tra spazi vettoriali si traduce nella moltiplicazione per una matrice.

---

## 5. Diagramma commutativo

Il significato della formula precedente può essere rappresentato dal diagramma

$$
\begin{array}{ccc}
V & \xrightarrow{\ F\ } & W\\
\downarrow [\,\cdot\,]_{\mathcal{B}} & & \downarrow [\,\cdot\,]_{\mathcal{B}'}\\
\mathbb{K}^n & \xrightarrow{\ A\ } & \mathbb{K}^m
\end{array}
$$

dove

$$
A=M_{\mathcal{B},\mathcal{B}'}(F).
$$

Il diagramma è commutativo: partendo da $v\in V$ si ottiene lo stesso risultato sia:

1. applicando prima $F$ e poi passando alle coordinate;
2. passando prima alle coordinate e poi moltiplicando per $A$.

In formule:

$$
[F(v)]_{\mathcal{B}'}
=
A[v]_{\mathcal{B}}.
$$

Il passaggio alle coordinate trasforma quindi $F$ nell’applicazione lineare

$$
\mathbb{K}^n\to\mathbb{K}^m,
\qquad
x\mapsto Ax.
$$

---

## 6. Isomorfismo tra applicazioni lineari e matrici

Fissate le basi $\mathcal{B}$ di $V$ e $\mathcal{B}'$ di $W$, si considera l’applicazione

$$
\Phi:
\mathcal{L}(V,W)\to M_{m\times n}(\mathbb{K}),
\qquad
F\mapsto M_{\mathcal{B},\mathcal{B}'}(F).
$$

Qui $\mathcal{L}(V,W)$ indica lo spazio vettoriale delle applicazioni lineari da $V$ in $W$.

Poiché $\mathcal{L}(V,W)$ e $M_{m\times n}(\mathbb{K})$ sono spazi vettoriali, si vuole dimostrare che $\Phi$ è un isomorfismo.

### 6.1 Linearità di $\Phi$

Occorre verificare che:

$$
\Phi(F+G)=\Phi(F)+\Phi(G)
$$

e

$$
\Phi(\lambda F)=\lambda\Phi(F).
$$

#### Somma

La $j$-esima colonna della matrice associata a $F+G$ è

$$
[(F+G)(v_j)]_{\mathcal{B}'}.
$$

Poiché

$$
(F+G)(v_j)=F(v_j)+G(v_j),
$$

e le coordinate sono lineari,

$$
[(F+G)(v_j)]_{\mathcal{B}'}
=
[F(v_j)]_{\mathcal{B}'}
+
[G(v_j)]_{\mathcal{B}'}.
$$

Questa è la somma delle $j$-esime colonne delle matrici associate a $F$ e $G$. Vale quindi, colonna per colonna,

$$
M_{\mathcal{B},\mathcal{B}'}(F+G)
=
M_{\mathcal{B},\mathcal{B}'}(F)
+
M_{\mathcal{B},\mathcal{B}'}(G).
$$

#### Prodotto per scalare

La $j$-esima colonna della matrice associata a $\lambda F$ è

$$
[(\lambda F)(v_j)]_{\mathcal{B}'}
=
[\lambda F(v_j)]_{\mathcal{B}'}
=
\lambda[F(v_j)]_{\mathcal{B}'}.
$$

Pertanto

$$
M_{\mathcal{B},\mathcal{B}'}(\lambda F)
=
\lambda M_{\mathcal{B},\mathcal{B}'}(F).
$$

Quindi $\Phi$ è lineare.

### 6.2 Iniettività di $\Phi$

Per dimostrare l’iniettività è sufficiente mostrare che il nucleo è formato dalla sola applicazione nulla.

Supponiamo che

$$
\Phi(F)=0,
$$

dove $0$ è la matrice nulla. Per ogni $v\in V$, dalla formula fondamentale segue:

$$
[F(v)]_{\mathcal{B}'}
=
0\,[v]_{\mathcal{B}}
=
0.
$$

Un vettore ha coordinate nulle se e solo se è il vettore nullo. Quindi

$$
F(v)=0
\qquad\text{per ogni }v\in V.
$$

Pertanto $F$ è l’applicazione nulla e

$$
\ker\Phi=\{0\}.
$$

Ne consegue che $\Phi$ è iniettiva.

### 6.3 Suriettività di $\Phi$

Sia

$$
A\in M_{m\times n}(\mathbb{K})
$$

una matrice arbitraria. Bisogna costruire un’applicazione lineare $F:V\to W$ la cui matrice associata sia $A$.

Indichiamo con $A_j$ la $j$-esima colonna di $A$. Per ogni $j=1,\dots,n$, esiste un unico vettore $w_j\in W$ tale che

$$
[w_j]_{\mathcal{B}'}=A_j.
$$

Definiamo $F$ sui vettori della base ponendo

$$
F(v_j)=w_j.
$$

Per il teorema di estensione lineare, esiste un’unica applicazione lineare $F:V\to W$ con questi valori sulla base $\mathcal{B}$.

Per costruzione, la $j$-esima colonna della matrice associata a $F$ è proprio

$$
[F(v_j)]_{\mathcal{B}'}=A_j.
$$

Quindi

$$
M_{\mathcal{B},\mathcal{B}'}(F)=A.
$$

Pertanto $\Phi$ è suriettiva.

### 6.4 Conclusione

L’applicazione

$$
\Phi:
\mathcal{L}(V,W)\longrightarrow M_{m\times n}(\mathbb{K})
$$

è un isomorfismo di spazi vettoriali.

In particolare, ogni applicazione lineare è rappresentata da una e una sola matrice una volta fissate le basi, e ogni matrice rappresenta una e una sola applicazione lineare.

Se

$$
\dim V=n,
\qquad
\dim W=m,
$$

allora

$$
\dim\mathcal{L}(V,W)=mn.
$$

Infatti:

$$
\dim M_{m\times n}(\mathbb{K})=mn.
$$

Questo isomorfismo dipende dalle basi scelte; non è quindi, in generale, un’identificazione canonica.

---

## 7. Calcolo di nucleo e immagine tramite la matrice associata

Sia

$$
F:V\to W
$$

un’applicazione lineare e sia

$$
A=M_{\mathcal{B},\mathcal{B}'}(F).
$$

La formula fondamentale dà

$$
[F(v)]_{\mathcal{B}'}=A[v]_{\mathcal{B}}.
$$

### 7.1 Nucleo

Un vettore $v\in V$ appartiene al nucleo di $F$ se e solo se

$$
F(v)=0.
$$

Passando alle coordinate:

$$
[F(v)]_{\mathcal{B}'}=0,
$$

quindi

$$
A[v]_{\mathcal{B}}=0.
$$

Il nucleo di $F$ corrisponde dunque, tramite il passaggio alle coordinate, al nucleo della moltiplicazione per $A$:

$$
\ker F
\longleftrightarrow
\ker A
=
\{x\in\mathbb{K}^n:Ax=0\}.
$$

Per trovare una base di $\ker F$ si procede così:

1. si risolve il sistema omogeneo
   $$
   Ax=0;
   $$
2. si trova una base dello spazio delle soluzioni, usando ad esempio la riduzione di Gauss;
3. i vettori ottenuti sono vettori di coordinate rispetto a $\mathcal{B}$;
4. si ritorna ai vettori di $V$ sviluppando tali coordinate nella base $\mathcal{B}$.

Se, per esempio, un vettore di coordinate è

$$
x=
\begin{pmatrix}
x_1\\
\vdots\\
x_n
\end{pmatrix},
$$

il vettore corrispondente di $V$ è

$$
x_1v_1+\cdots+x_nv_n.
$$

È importante distinguere i vettori numerici di $\mathbb{K}^n$ dai vettori dello spazio $V$: durante la risoluzione del sistema si lavora con coordinate, non direttamente con i vettori astratti.

### 7.2 Immagine

L’immagine di $F$ corrisponde all’immagine dell’applicazione

$$
x\mapsto Ax.
$$

L’immagine di quest’ultima è lo spazio generato dalle colonne di $A$:

$$
\operatorname{Im}(A)
=
\operatorname{span}\{\text{colonne di }A\}.
$$

Per trovare una base dell’immagine si può procedere in due modi.

#### Riduzione per colonne

Si possono effettuare operazioni elementari sulle colonne di $A$. Tali operazioni non modificano il sottospazio generato dalle colonne. Le colonne della matrice ridotta forniscono quindi una base dello spazio delle colonne della matrice ridotta.

Tuttavia, in questo modo la base ottenuta potrebbe non essere formata da colonne originarie di $A$.

#### Riduzione per righe

Si riduce $A$ a scala mediante operazioni elementari sulle righe. Le posizioni dei pivot indicano quali colonne della matrice originale sono linearmente indipendenti.

Le colonne di $A$ corrispondenti alle posizioni dei pivot formano una base di $\operatorname{Im}(A)$.

Anche in questo caso, le colonne sono vettori di coordinate in $\mathbb{K}^m$. Per ottenere una base effettiva di $\operatorname{Im}(F)\subseteq W$, si trasformano tali vettori di coordinate nei corrispondenti vettori di $W$ usando la base $\mathcal{B}'$.

---

## 8. Rango e teorema rango-nullità

Il **rango** di un’applicazione lineare $F$ è definito come

$$
\operatorname{rank}(F)=\dim(\operatorname{Im}F).
$$

Se $A$ è una matrice associata a $F$, allora

$$
\operatorname{rank}(F)=\operatorname{rank}(A).
$$

Questo vale per qualunque scelta delle basi.

Di conseguenza, per calcolare il rango di $F$ è sufficiente calcolare il rango di una sua matrice associata.

Se $\dim V=n$, il teorema rango-nullità dà:

$$
\dim V
=
\dim(\ker F)+\dim(\operatorname{Im}F).
$$

Pertanto:

$$
\boxed{
\dim(\ker F)=n-\operatorname{rank}(F)
}
$$

e, se $A$ è una matrice associata a $F$,

$$
\boxed{
\dim(\ker F)=n-\operatorname{rank}(A)
}.
$$

---

## 9. Esempio: l’applicazione $F(X)=AX-XA$

Consideriamo lo spazio

$$
V=M_{2\times 2}(\mathbb{R}),
$$

che ha dimensione $4$.

Sia $A\in M_{2\times 2}(\mathbb{R})$ fissata e consideriamo

$$
F:V\to V,
\qquad
F(X)=AX-XA.
$$

### 9.1 Linearità

Per $X,Y\in V$:

$$
\begin{aligned}
F(X+Y)
&=A(X+Y)-(X+Y)A\\
&=AX+AY-XA-YA\\
&=(AX-XA)+(AY-YA)\\
&=F(X)+F(Y).
\end{aligned}
$$

Per $\lambda\in\mathbb{R}$:

$$
\begin{aligned}
F(\lambda X)
&=A(\lambda X)-(\lambda X)A\\
&=\lambda AX-\lambda XA\\
&=\lambda(AX-XA)\\
&=\lambda F(X).
\end{aligned}
$$

Quindi $F$ è lineare.

### 9.2 Matrice associata nella base canonica

Consideriamo la base canonica ordinata

$$
\mathcal{E}=(E_{11},E_{12},E_{21},E_{22}),
$$

dove $E_{ij}$ è la matrice che ha $1$ nella posizione $(i,j)$ e $0$ nelle altre posizioni.

Poiché $\dim V=4$, la matrice associata a $F$ rispetto alla base canonica sia in partenza sia in arrivo è una matrice $4\times4$.

Per costruirla bisogna calcolare:

$$
F(E_{11}),\quad F(E_{12}),\quad F(E_{21}),\quad F(E_{22}),
$$

e disporre le loro coordinate come colonne.

Prendiamo, come nell’esempio discusso, la matrice

$$
A=
\begin{pmatrix}
0&1\\
1&0
\end{pmatrix}.
$$

Moltiplicare $A$ a sinistra scambia le righe, moltiplicarla a destra scambia le colonne. Per esempio

$$
AE_{11}=\begin{pmatrix}0&1\\1&0\end{pmatrix}\begin{pmatrix}1&0\\0&0\end{pmatrix}=\begin{pmatrix}0&0\\1&0\end{pmatrix}=E_{21},
\qquad
E_{11}A=\begin{pmatrix}1&0\\0&0\end{pmatrix}\begin{pmatrix}0&1\\1&0\end{pmatrix}=\begin{pmatrix}0&1\\0&0\end{pmatrix}=E_{12}.
$$

Allo stesso modo si ottiene:

$$
F(E_{11})=AE_{11}-E_{11}A=E_{21}-E_{12},
$$

$$
F(E_{12})=AE_{12}-E_{12}A=E_{22}-E_{11},
$$

$$
F(E_{21})=AE_{21}-E_{21}A=E_{11}-E_{22},
$$

$$
F(E_{22})=AE_{22}-E_{22}A=E_{12}-E_{21}.
$$

Le coordinate nella base $\mathcal{E}=(E_{11},E_{12},E_{21},E_{22})$ sono quindi:

$$
[F(E_{11})]_{\mathcal{E}}
=
\begin{pmatrix}
0\\-1\\1\\0
\end{pmatrix},
\qquad
[F(E_{12})]_{\mathcal{E}}
=
\begin{pmatrix}
-1\\0\\0\\1
\end{pmatrix},
\qquad
[F(E_{21})]_{\mathcal{E}}
=
\begin{pmatrix}
1\\0\\0\\-1
\end{pmatrix},
\qquad
[F(E_{22})]_{\mathcal{E}}
=
\begin{pmatrix}
0\\1\\-1\\0
\end{pmatrix}.
$$

Pertanto:

$$
M_{\mathcal{E},\mathcal{E}}(F)
=
\begin{pmatrix}
0&-1&1&0\\
-1&0&0&1\\
1&0&0&-1\\
0&1&-1&0
\end{pmatrix}.
$$

La terza colonna è l'opposta della seconda e la quarta è l'opposta della prima, mentre le prime due sono indipendenti: il rango è $2$.

Il procedimento da ricordare è sempre lo stesso: la $j$-esima colonna è il vettore delle coordinate di $F(E_j)$.

### 9.3 Nucleo dell’applicazione

La condizione $X\in\ker F$ equivale a

$$
AX-XA=0,
$$

cioè

$$
AX=XA.
$$

Dunque il nucleo è costituito dalle matrici che commutano con $A$.

Sono esempi immediati:

- la matrice identità $I$, perché $AI=IA=A$;
- la matrice $A$ stessa, perché $AA=AA$.

Nel caso considerato il rango della matrice associata è $2$. Poiché lo spazio di partenza ha dimensione $4$,

$$
\dim\ker F=4-2=2.
$$

Le matrici $I$ e $A$ sono linearmente indipendenti e appartengono al nucleo; quindi formano una base di $\ker F$:

$$
\ker F=\operatorname{span}\{I,A\}.
$$

In coordinate, rispetto alla base canonica:

$$
[I]_{\mathcal{E}}
=
\begin{pmatrix}
1\\0\\0\\1
\end{pmatrix},
\qquad
[A]_{\mathcal{E}}
=
\begin{pmatrix}
0\\1\\1\\0
\end{pmatrix}.
$$

Se non si riconoscono immediatamente le matrici che commutano con $A$, si risolve il sistema omogeneo associato alla matrice $4\times4$, come fatto a lezione. Riducendo a scala restano due equazioni indipendenti,

$$
-x_1+x_4=0,\qquad -x_2+x_3=0,
$$

con $x_3,x_4$ libere. Scegliendo $(x_3,x_4)=(1,0)$ e $(0,1)$ si trovano le soluzioni $(0,1,1,0)$ e $(1,0,0,1)$. Sono **coordinate**, non matrici: tornando alle matrici con la base canonica si ritrovano esattamente $A$ e $I$.

### 9.4 Immagine

Poiché il rango è $2$,

$$
\dim(\operatorname{Im}F)=2.
$$

Una base dell’immagine può essere ottenuta scegliendo le colonne indipendenti della matrice associata e ritornando poi dalle coordinate alle matrici.

Nella forma a scala i pivot stanno nelle prime due colonne, quindi si prendono le prime due colonne della matrice associata, $(0,-1,1,0)$ e $(-1,0,0,1)$, e si torna alle matrici:

$$
\operatorname{Im}F
=
\operatorname{span}
\left\{\begin{pmatrix}0&-1\\1&0\end{pmatrix},\ \begin{pmatrix}-1&0\\0&1\end{pmatrix}\right\}.
$$

Si noti che entrambe hanno traccia nulla: in effetti $\operatorname{tr}(AX-XA)=\operatorname{tr}(AX)-\operatorname{tr}(XA)=0$ per ogni $X$, quindi l'immagine sta sempre nel sottospazio (di dimensione $3$) delle matrici a traccia nulla.

### 9.5 Esercizio: al variare di $A$

Esercizio lasciato a lezione: per $A=\begin{pmatrix}a&b\\c&d\end{pmatrix}$ qualsiasi, calcolare $\dim\ker F$ e $\dim\operatorname{Im}F$.

Ripetendo il calcolo con $A$ generica:

$$
F(E_{11})=\begin{pmatrix}0&-b\\c&0\end{pmatrix},\quad
F(E_{12})=\begin{pmatrix}-c&a-d\\0&c\end{pmatrix},\quad
F(E_{21})=\begin{pmatrix}b&0\\d-a&-b\end{pmatrix},\quad
F(E_{22})=\begin{pmatrix}0&b\\-c&0\end{pmatrix},
$$

quindi

$$
M_{\mathcal{E},\mathcal{E}}(F)=
\begin{pmatrix}
0&-c&b&0\\
-b&a-d&0&b\\
c&0&d-a&-c\\
0&c&-b&0
\end{pmatrix}.
$$

(Con $a=d=0$, $b=c=1$ si ritrova la matrice di §9.2.) La quarta colonna è sempre l'opposta della prima, quindi il rango è al più $3$; in realtà è al più $2$, perché $I$ e $A$ stanno sempre nel nucleo.

- **$A$ multiplo dell'identità** ($b=c=0$, $a=d$): la matrice è nulla, $F=0$, $\dim\ker F=4$, $\dim\operatorname{Im}F=0$.
- **$A$ non multiplo dell'identità**: almeno uno tra $b$, $c$, $a-d$ è non nullo, e si trovano due colonne indipendenti (se $b\neq0$ la prima e la terza; se $c\neq0$ la prima e la seconda; se $b=c=0$ e $a\neq d$ la seconda e la terza). Quindi il rango è $2$: $\dim\ker F=\dim\operatorname{Im}F=2$, con $\ker F=\operatorname{span}\{I,A\}$.

---

## 10. Spazi di applicazioni con vincoli su nucleo e immagine

### 10.1 Applicazioni che mandano un sottospazio in un altro

Siano $U\subseteq V$ e $Z\subseteq W$ sottospazi vettoriali. Si considera l’insieme

$$
\mathcal{S}
=
\{F\in\mathcal{L}(V,W):F(U)\subseteq Z\}.
$$

Questo insieme è un sottospazio vettoriale di $\mathcal{L}(V,W)$.

Infatti, se $F(U)\subseteq Z$ e $G(U)\subseteq Z$, allora per ogni $u\in U$:

$$
(F+G)(u)=F(u)+G(u)\in Z,
$$

perché $Z$ è un sottospazio. Analogamente, per ogni scalare $\lambda$,

$$
(\lambda F)(u)=\lambda F(u)\in Z.
$$

Quindi $\mathcal{S}$ è chiuso rispetto a somma e prodotto per scalare.

### 10.2 Matrice in basi adattate

Supponiamo:

$$
\dim V=n,\qquad \dim W=m,
$$

e scegliamo:

- una base $(v_1,\dots,v_k)$ di $U$, estesa a una base
  $$
  \mathcal{B}=(v_1,\dots,v_k,v_{k+1},\dots,v_n)
  $$
  di $V$;
- una base $(w_1,\dots,w_\ell)$ di $Z$, estesa a una base
  $$
  \mathcal{B}'=(w_1,\dots,w_\ell,w_{\ell+1},\dots,w_m)
  $$
  di $W$.

Se $F(U)\subseteq Z$, allora per $j=1,\dots,k$:

$$
F(v_j)\in Z.
$$

Quindi le coordinate di $F(v_j)$ rispetto a $\mathcal{B}'$ hanno nulle le ultime $m-\ell$ componenti. Le prime $k$ colonne della matrice associata hanno dunque la forma

$$
\begin{pmatrix}
*\\
\vdots\\
*\\
0\\
\vdots\\
0
\end{pmatrix},
$$

con possibili coefficienti non nulli soltanto nelle prime $\ell$ righe.

Le restanti $n-k$ colonne sono invece, in generale, arbitrarie.

La forma della matrice è quindi

$$
M_{\mathcal{B},\mathcal{B}'}(F)
=
\begin{pmatrix}
\ast & \cdots & \ast & \ast & \cdots & \ast\\
\vdots & & \vdots & \vdots & & \vdots\\
\ast & \cdots & \ast & \ast & \cdots & \ast\\
0 & \cdots & 0 & \ast & \cdots & \ast\\
\vdots & & \vdots & \vdots & & \vdots\\
0 & \cdots & 0 & \ast & \cdots & \ast
\end{pmatrix},
$$

dove le prime $k$ colonne hanno zeri nelle ultime $m-\ell$ righe.

Vale anche il viceversa: se la matrice associata ha questa forma, allora $F(v_j)\in Z$ per $j=1,\dots,k$. Poiché ogni vettore di $U$ è combinazione lineare di $v_1,\dots,v_k$, segue che

$$
F(U)\subseteq Z.
$$

### 10.3 Dimensione dello spazio delle applicazioni

Le prime $k$ colonne hanno $\ell$ coefficienti liberi ciascuna, mentre le restanti $n-k$ colonne hanno $m$ coefficienti liberi ciascuna.

Pertanto:

$$
\dim\mathcal{S}
=
k\ell+(n-k)m.
$$

Questa dimensione si può anche vedere contando le posizioni arbitrarie nella matrice associata.

**L'esempio di lezione.** $V=\mathbb R^4$, $W=\mathbb R^5$, $\dim U=2$, $\dim Z=3$. Con le basi adattate, la matrice associata è $5\times4$ e le prime due colonne devono avere zero nelle righe $4$ e $5$:

$$
\begin{pmatrix}
a_{11}&a_{12}&a_{13}&a_{14}\\
a_{21}&a_{22}&a_{23}&a_{24}\\
a_{31}&a_{32}&a_{33}&a_{34}\\
0&0&a_{43}&a_{44}\\
0&0&a_{53}&a_{54}
\end{pmatrix}.
$$

Delle $20$ posizioni di una matrice $5\times4$ ne sono vincolate $4$ (le posizioni $(4,1),(4,2),(5,1),(5,2)$), quindi $\dim\mathcal S=20-4=16$; con la formula, $k\ell+(n-k)m=2\cdot3+2\cdot5=16$. Una base di $\mathcal S$ si ottiene prendendo le $16$ matrici $E_{ij}$ della base canonica di $M_{5\times4}$ con $(i,j)$ diverso dalle quattro posizioni vincolate, e risalendo alle applicazioni: quella corrispondente a $E_{ij}$ manda $v_j$ in $w_i$ e tutti gli altri $v_h$ in $0$.

Più in generale, poiché $\Phi$ è un isomorfismo,

$$
\dim\mathcal L(V,W)=\dim M_{m\times n}(\mathbb K)=mn=\dim V\cdot\dim W.
$$

#### Caso particolare: applicazioni che annullano un sottospazio

Consideriamo

$$
\mathcal{S}_0
=
\{F\in\mathcal{L}(V,W):U\subseteq\ker F\}.
$$

In questo caso $Z=\{0\}$, quindi $\ell=0$. La matrice associata, nelle basi adattate, ha le prime $k$ colonne nulle:

$$
M_{\mathcal{B},\mathcal{B}'}(F)
=
\begin{pmatrix}
0&\cdots&0&\ast&\cdots&\ast\\
\vdots&&\vdots&\vdots&&\vdots\\
0&\cdots&0&\ast&\cdots&\ast
\end{pmatrix}.
$$

La dimensione è

$$
\dim\mathcal{S}_0
=
(n-k)m.
$$

---

## 11. Somma di applicazioni lineari

L’insieme $\mathcal{L}(V,W)$ è uno spazio vettoriale con le operazioni definite punto per punto:

$$
(F+G)(v)=F(v)+G(v),
$$

e

$$
(\lambda F)(v)=\lambda F(v).
$$

La matrice associata rispetta queste operazioni:

$$
M(F+G)=M(F)+M(G),
$$

e

$$
M(\lambda F)=\lambda M(F).
$$

Questo è precisamente il contenuto della linearità dell’isomorfismo tra $\mathcal{L}(V,W)$ e lo spazio delle matrici.

---

## 12. Composizione di applicazioni lineari

Siano

$$
F:V\to W,
\qquad
G:W\to Z
$$

applicazioni lineari. La composizione è

$$
G\circ F:V\to Z,
\qquad
(G\circ F)(v)=G(F(v)).
$$

### 12.1 La composizione è lineare

Per $u,v\in V$:

$$
\begin{aligned}
(G\circ F)(u+v)
&=G(F(u+v))\\
&=G(F(u)+F(v))\\
&=G(F(u))+G(F(v))\\
&=(G\circ F)(u)+(G\circ F)(v).
\end{aligned}
$$

Analogamente, per $\lambda\in\mathbb{K}$:

$$
\begin{aligned}
(G\circ F)(\lambda v)
&=G(F(\lambda v))\\
&=G(\lambda F(v))\\
&=\lambda G(F(v))\\
&=\lambda(G\circ F)(v).
\end{aligned}
$$

Quindi $G\circ F$ è lineare.

### 12.2 Proprietà della composizione

La composizione è associativa:

$$
(H\circ G)\circ F
=
H\circ(G\circ F).
$$

Questa proprietà vale per applicazioni in generale, non soltanto per applicazioni lineari.

Per applicazioni lineari valgono inoltre le proprietà distributive:

$$
G\circ(F_1+F_2)
=
G\circ F_1+G\circ F_2,
$$

$$
(G_1+G_2)\circ F
=
G_1\circ F+G_2\circ F,
$$

e, per ogni scalare $\lambda$,

$$
G\circ(\lambda F)
=
\lambda(G\circ F),
$$

$$
(\lambda G)\circ F
=
\lambda(G\circ F).
$$

Le verifiche si fanno applicando entrambi i membri a un vettore e usando la linearità delle applicazioni coinvolte.

---

## 13. Rango dell’applicazione e rango della matrice

Per un’applicazione lineare $F$ si definisce:

$$
\operatorname{rank}(F)
=
\dim(\operatorname{Im}F).
$$

Se $A$ è la matrice associata a $F$ rispetto a basi qualunque, allora:

$$
\boxed{
\operatorname{rank}(F)=\operatorname{rank}(A)
}
$$

Perché?

Il passaggio alle coordinate è un isomorfismo. Tramite le coordinate, $F$ viene trasformata nell’applicazione

$$
x\mapsto Ax.
$$

L’immagine di $F$ viene quindi mandata isomorficamente nell’immagine della moltiplicazione per $A$. Gli isomorfismi preservano la dimensione, dunque:

$$
\dim(\operatorname{Im}F)
=
\dim(\operatorname{Im}(x\mapsto Ax)).
$$

Ma l’immagine di $x\mapsto Ax$ è lo spazio generato dalle colonne di $A$, la cui dimensione è il rango della matrice. Pertanto:

$$
\dim(\operatorname{Im}F)
=
\operatorname{rank}(A).
$$

Quindi il rango di un’applicazione lineare può sempre essere calcolato scegliendo una matrice associata e riducendola a scala.

---

## 14. Matrice della composizione

Siano

$$
F:V\to W,
\qquad
G:W\to Z
$$

applicazioni lineari.

Scegliamo:

- una base $\mathcal{B}$ di $V$;
- una base $\mathcal{B}'$ di $W$;
- una base $\mathcal{B}''$ di $Z$.

È fondamentale che la base $\mathcal{B}'$ sia contemporaneamente:

- la base di arrivo usata per rappresentare $F$;
- la base di partenza usata per rappresentare $G$.

Supponiamo che

$$
A=M_{\mathcal{B},\mathcal{B}'}(F),
\qquad
B=M_{\mathcal{B}',\mathcal{B}''}(G).
$$

Allora la matrice associata alla composizione è

$$
\boxed{
M_{\mathcal{B},\mathcal{B}''}(G\circ F)
=
B\,A
}
$$

dove il prodotto è il prodotto righe per colonne.

Infatti, per ogni $v\in V$:

$$
[F(v)]_{\mathcal{B}'}
=
A[v]_{\mathcal{B}},
$$

e quindi

$$
\begin{aligned}
[(G\circ F)(v)]_{\mathcal{B}''}
&=[G(F(v))]_{\mathcal{B}''}\\
&=B[F(v)]_{\mathcal{B}'}\\
&=BA[v]_{\mathcal{B}}.
\end{aligned}
$$

Per l’unicità della matrice associata, segue che la matrice di $G\circ F$ è $BA$.

Questa è la ragione concettuale per cui il prodotto di matrici è definito come prodotto righe per colonne: esso rappresenta, in coordinate, la composizione di applicazioni lineari.
