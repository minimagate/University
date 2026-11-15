---
type: lecture-note
course: Geometria 1
date: 2026-11-10
title: Forma a scala e sottospazi associati
source_transcript: _transcripts/Geometria 1/2026-11-10 - Forma a scala e sottospazi associati.md
source_hash: sha256:113e597b660159276edbb870bb5847fb48cafe59112f233175409dbb85636de7
teaching_model: anthropic/claude-opus-5.5
taught_at: 2026-11-12T10:46:20.968Z
---

# Forma a scala e sottospazi associati

> [!warning] Nota sulla fonte
> Il materiale di questa lezione è arrivato in forma molto frammentaria. Le parti seguenti ricostruiscono gli argomenti e i ragionamenti solo dove la loro struttura matematica è riconoscibile senza ambiguità.
>
> **Aggiornamento:** la nota è stata confrontata con gli appunti scritti a mano della lezione (`10_11_26.pdf`). Questi confermano la struttura e forniscono i dati mancanti: l'esempio del §1, l'esercizio del §5 (Martelli 4.2) e i numeri degli esercizi assegnati.

## 1. Algoritmo per base della somma e dell'intersezione di due sottospazi

### Il problema

Siano $U, W \subseteq K^n$ due sottospazi, ciascuno assegnato tramite un insieme di generatori:

$$
U = \operatorname{Span}(u_1, \dots, u_p), \qquad W = \operatorname{Span}(w_1, \dots, w_q).
$$

Si vuole un procedimento meccanico, una "macchinetta" in cui inserire i generatori, che produca contemporaneamente una base di $U+W$ e una base di $U \cap W$, con una sola riduzione a scala.

> [!note] Osservazione del docente
> Questo algoritmo non è sempre necessario. L'esperienza degli anni passati mostra che molti studenti si lanciano in conti inutili, quando si potrebbe procedere molto più semplicemente. Per esempio, se dei sottospazi si conoscono già le equazioni, oppure se il calcolo si può fare in modo diretto, conviene farlo così. L'algoritmo va visto come un esercizio e come un procedimento in più da conoscere: "magari una volta nella vita vi potrà capitare". Molto più spesso, con gli strumenti già noti, si arriva al risultato in modo più semplice che riducendo a scala una matrice così grande.

### Costruzione della matrice

Si costruisce una matrice $A$ con $p+q$ righe e $2n$ colonne. Ogni riga è quindi un vettore di $K^{2n} = K^n \times K^n$, diviso in una metà sinistra e una metà destra.

- Nelle prime $p$ righe si mette ciascun generatore $u_i$ di $U$ ripetuto uguale nelle due metà: $(u_i, u_i)$.
- Sotto si mettono i generatori di $W$, nella forma $(w_j, 0)$.

$$
A = \begin{pmatrix}
u_1 & u_1 \\
\vdots & \vdots \\
u_p & u_p \\
w_1 & 0 \\
\vdots & \vdots \\
w_q & 0
\end{pmatrix}
$$

Si riduce poi $A$ a una matrice a scala $S$ con mosse di riga. Ogni riga di $S$ si scrive come

$$
s_i = (s_i', s_i''), \qquad s_i', s_i'' \in K^n,
$$

dove $s_i'$ è la metà sinistra della riga e $s_i''$ la metà destra.

### Enunciato

Sia $r$ l'indice dell'ultima riga di $S$ il cui pivot sta nella metà sinistra. Le righe successive non nulle, con indici da $r+1$ a $r+c$, hanno il pivot nella metà destra. Allora:

$$
\{s_1', \dots, s_r'\} \text{ è una base di } U+W,
$$

$$
\{s_{r+1}'', \dots, s_{r+c}''\} \text{ è una base di } U \cap W.
$$

Il fatto che $S$ sia a scala è ciò che permette di individuare l'indice dell'ultimo pivot "fermo" a sinistra della metà della matrice. Le righe sotto, a sinistra, sono tutte nulle.

### Dimostrazione

**Sottospazi di $K^{2n}$.** Dentro $K^{2n} = K^n \times K^n$ si considerano

$$
\hat U = \{(u,u) : u \in U\}, \qquad \hat W = \{(w,0) : w \in W\}.
$$

Le prime $p$ righe di $A$ generano $\hat U$, le altre $q$ generano $\hat W$. Tutte insieme generano

$$
Z = \hat U + \hat W.
$$

La somma è diretta: se $(u,u) = (w,0)$, allora $u = 0$ e $w = 0$. Inoltre $\dim \hat U = \dim U$ e $\dim \hat W = \dim W$, perché le mappe $u \mapsto (u,u)$ e $w \mapsto (w,0)$ sono biiezioni lineari tra $U$ e $\hat U$ e tra $W$ e $\hat W$. Quindi

$$
\dim Z = \dim U + \dim W.
$$

Le righe di $S$ generano lo stesso sottospazio $Z$, perché le mosse di riga non cambiano lo span delle righe.

**La proiezione.** Si considera la proiezione sul primo fattore

$$
\pi : K^n \times K^n \to K^n, \qquad (v, v') \mapsto v,
$$

e la sua restrizione $\pi|_Z$. Applicare $\pi$ a una riga significa esattamente buttare via le ultime $n$ coordinate, cioè prendere la prima metà della riga.

**Immagine.** Un vettore generico di $Z$ è della forma

$$
(u,u) + (w,0) = (u+w,\, u), \qquad u \in U,\ w \in W.
$$

Dimenticando la seconda metà resta $u+w$. Al variare di $u$ e $w$ si ottengono tutti i vettori somma, quindi

$$
\operatorname{Im}(\pi|_Z) = U + W.
$$

**Nucleo.** Il nucleo è formato dai vettori $(u+w, u)$ con $u+w = 0$. Questo significa $u = -w$, cioè $u \in U \cap W$, perché $W$ è un sottospazio e quindi $-w \in W$. Viceversa, ogni $(0,u)$ con $u \in U\cap W$ si scrive come $(u,u) + (-u, 0)$ e sta in $Z$. Quindi

$$
\ker(\pi|_Z) = \{(0,u) : u \in U \cap W\} = Z \cap (\{0\} \times K^n).
$$

In particolare $\ker(\pi|_Z) \cong U \cap W$ tramite $(0,u) \mapsto u$.

**Formula della dimensione.** Dal teorema nullità più rango applicato a $\pi|_Z$:

$$
\dim Z = \dim(U+W) + \dim(U\cap W),
$$

cioè $\dim U + \dim W = \dim(U+W) + \dim(U\cap W)$. Si ritrova così la formula di Grassmann.

**Base della somma.** Le prime $r$ righe di $S$ sono quelle con pivot a sinistra. Le loro parti sinistre $s_1', \dots, s_r'$ hanno le seguenti proprietà.

- Generano l'immagine. L'immagine è generata dalle prime metà di tutte le righe di $S$, ma le righe sotto la $r$-esima hanno la prima metà nulla.
- Sono linearmente indipendenti, perché formano a loro volta una matrice a scala con righe non nulle.

Quindi sono una base di $U+W$, e in particolare $r = \dim(U+W)$.

**Base dell'intersezione.** Le righe $s_{r+1}, \dots, s_{r+c}$ hanno parte sinistra nulla, quindi stanno nel nucleo di $\pi|_Z$. Sono della forma $(0, s_i'')$ e quindi $s_i'' \in U \cap W$. Sono linearmente indipendenti perché sono righe non nulle di una matrice a scala.

Si conta poi quante sono. Il numero totale di pivot è $\operatorname{rk} S = \dim Z$. I pivot a sinistra sono $r = \dim(U+W)$. Quindi

$$
c = \dim Z - \dim(U+W) = \dim(U\cap W).
$$

Sono dunque vettori indipendenti del sottospazio, in numero pari alla sua dimensione, e ne formano una base.

### Esempio numerico (dagli appunti)

L'esempio svolto in classe è in $\mathbb R^4$:

$$
U=\operatorname{Span}\big((1,-1,1,0),\,(1,-1,-1,2)\big),\qquad W=\operatorname{Span}\big((5,5,-6,1),\,(0,-5,3,2)\big).
$$

> [!warning] Un dato da controllare
> Negli appunti il secondo generatore di $W$ è scritto $(0,-5,1,2)$. Però tutta la riduzione successiva usa la riga $(0,-5,3,2)$, e il risultato finale torna solo con $3$. Con $(0,-5,1,2)$ i quattro generatori sarebbero indipendenti: $U+W=\mathbb R^4$ e $U\cap W=\{0\}$. Qui si usa $(0,-5,3,2)$. Controlla sul testo o con un compagno.

Si scrive la matrice $4\times 8$ con le righe $(u_i,u_i)$ e $(w_j,0)$:

$$
A=\left(\begin{array}{cccc|cccc}
1&-1&1&0&1&-1&1&0\\
1&-1&-1&2&1&-1&-1&2\\
5&5&-6&1&0&0&0&0\\
0&-5&3&2&0&0&0&0
\end{array}\right).
$$

**Riduzione.**

1. $R_2\to R_2-R_1$ e $R_3\to R_3-5R_1$:
$$
\left(\begin{array}{cccc|cccc}
1&-1&1&0&1&-1&1&0\\
0&0&-2&2&0&0&-2&2\\
0&10&-11&1&-5&5&-5&0\\
0&-5&3&2&0&0&0&0
\end{array}\right).
$$
2. Si scambiano la seconda e la quarta riga. La terza riga ha $10$ nella seconda colonna, il doppio (cambiato di segno) del $-5$ della nuova seconda riga: $R_3\to R_3+2R_2$ dà $(0,0,-5,5\mid-5,5,-5,0)$, che si divide per $5$.
3. $R_4\to R_4-2R_3$ dà $(0,0,0,0\mid 2,-2,0,2)$, che si divide per $2$.

$$
S=\left(\begin{array}{cccc|cccc}
1&-1&1&0&1&-1&1&0\\
0&-5&3&2&0&0&0&0\\
0&0&-1&1&-1&1&-1&0\\
0&0&0&0&1&-1&0&1
\end{array}\right).
$$

**Lettura del risultato.** Le prime $r=3$ righe hanno il pivot a sinistra:

$$
U+W=\operatorname{Span}\big((1,-1,1,0),\,(0,-5,3,2),\,(0,0,-1,1)\big),\qquad \dim(U+W)=3.
$$

L'ultima riga ha metà sinistra nulla, e la sua metà destra dà

$$
U\cap W=\operatorname{Span}\big((1,-1,0,1)\big),\qquad \dim(U\cap W)=1.
$$

**Controllo.** $(1,-1,0,1)=\tfrac12\big[(1,-1,1,0)+(1,-1,-1,2)\big]\in U$ e $(1,-1,0,1)=\tfrac15(5,5,-6,1)+\tfrac25(0,-5,3,2)\in W$. Grassmann: $2+2=3+1$.

> [!tip] Un secondo esempio *(aggiunto)*
> Lo stesso procedimento in $\mathbb R^3$, con $U=\operatorname{Span}((1,1,0),(0,1,1))$ e $W=\operatorname{Span}((1,0,0),(0,0,1))$. La matrice
> $$\left(\begin{array}{ccc|ccc}1&1&0&1&1&0\\0&1&1&0&1&1\\1&0&0&0&0&0\\0&0&1&0&0&0\end{array}\right)$$
> si riduce a
> $$\left(\begin{array}{ccc|ccc}1&1&0&1&1&0\\0&1&1&0&1&1\\0&0&1&-1&0&1\\0&0&0&1&0&-1\end{array}\right).$$
> Quindi $U+W=\mathbb R^3$ e $U\cap W=\operatorname{Span}((1,0,-1))$: in effetti $U$ è il piano $x-y+z=0$, $W$ il piano $y=0$.

## 2. Calcolo della matrice inversa tramite mosse di riga

### Idea

Sia $A \in M_{n\times n}(K)$ di rango $n$. Con mosse di riga si porta $A$ in forma a scala, che avrà $n$ pivot. Si può però fare di meglio.

- Dividendo le righe per opportuni coefficienti, si rendono tutti i pivot uguali a $1$.
- Si mette la matrice in **forma a scala completa** (ridotta), in cui sopra ogni pivot ci sono solo zeri.

Con $n$ pivot tutti uguali a $1$ e zeri sopra e sotto, la matrice ottenuta è l'identità $I_n$.

Ogni successione di mosse di riga corrisponde a moltiplicare $A$ a sinistra per una matrice invertibile $P$. Quindi esiste $P$ invertibile con

$$
PA = I_n,
$$

cioè $P = A^{-1}$. In particolare, avere rango $n$ equivale a essere invertibile.

### Come tenere traccia delle mosse

Le mosse si fanno una alla volta, ma servirebbe ricordarle tutte insieme. Per farlo, invece di scrivere solo $A$, si scrive la matrice affiancata

$$
\left(\, A \;\middle|\; I_n \,\right),
$$

tenendo l'identità a destra "come promemoria". Ogni mossa di riga agisce su tutta la riga, quindi la parte destra subisce le stesse mosse della parte sinistra. Riducendo a scala completa si ottiene

$$
\left(\, A \;\middle|\; I_n \,\right) \longrightarrow \left(\, PA \;\middle|\; P\, I_n \,\right) = \left(\, I_n \;\middle|\; P \,\right).
$$

Poiché $PA = I_n$, la matrice $P$ è l'inversa di $A$. Quindi, una volta ridotta a scala completa la parte sinistra, sulla destra ci si ritrova forzatamente $A^{-1}$.

### Esempio

Sia

$$
A = \begin{pmatrix} 1 & i \\ -i & -1 \end{pmatrix} \in M_{2\times 2}(\mathbb{C}).
$$

Si parte da

$$
\left(\begin{array}{cc|cc} 1 & i & 1 & 0 \\ -i & -1 & 0 & 1 \end{array}\right).
$$

Primo passo: si somma alla seconda riga $i$ volte la prima. Si ha $-1 + i\cdot i = -2$, quindi

$$
\left(\begin{array}{cc|cc} 1 & i & 1 & 0 \\ 0 & -2 & i & 1 \end{array}\right).
$$

Secondo passo: si divide la seconda riga per $-2$:

$$
\left(\begin{array}{cc|cc} 1 & i & 1 & 0 \\ 0 & 1 & -\frac{i}{2} & -\frac{1}{2} \end{array}\right).
$$

Terzo passo: alla prima riga si sottrae $i$ volte la seconda. Si usa $i \cdot \left(-\frac{i}{2}\right) = \frac{1}{2}$, quindi

$$
\left(\begin{array}{cc|cc} 1 & 0 & \frac{1}{2} & \frac{i}{2} \\ 0 & 1 & -\frac{i}{2} & -\frac{1}{2} \end{array}\right).
$$

Dunque

$$
A^{-1} = \begin{pmatrix} \frac{1}{2} & \frac{i}{2} \\ -\frac{i}{2} & -\frac{1}{2} \end{pmatrix} = \frac{1}{2}A.
$$

La relazione $A^{-1} = \frac12 A$ equivale a $A^2 = 2I$, e si controlla subito: $A^2=\begin{pmatrix}1+i(-i) & i+i(-1)\\ -i+(-1)(-i) & (-i)i+1\end{pmatrix}=\begin{pmatrix}2&0\\0&2\end{pmatrix}$.

**Verifica.** Il docente ha controllato il risultato calcolando il prodotto riga per colonna di $A$ per la matrice trovata e ottenendo l'identità. Per esempio, prima riga per prima colonna:

$$
1\cdot\tfrac12 + i\cdot\left(-\tfrac{i}{2}\right) = \tfrac12 + \tfrac12 = 1.
$$

> [!warning] Raccomandazione del docente
> Controllare i propri calcoli non è un'opzione, soprattutto quando il controllo è facile, come qui: basta un prodotto di matrici. Nel corso non si impara solo a fare le cose, ma anche a verificarle. Un risultato sbagliato per un errore di calcolo che si poteva scoprire con una semplice verifica non è gradito. Il modo di controllare lo si sceglie liberamente, ma va fatto.

## 3. Mosse di riga e sottomatrici di colonne

**Proposizione.** Siano $A, B \in M_{m\times n}(K)$ equivalenti per mosse di riga. Negli appunti la relazione si scrive $A\sim_s B$ ("$S$-equivalenza"). Siano $j_1 < \dots < j_k$ indici di colonna. Indichiamo con $A_{j_1,\dots,j_k}$ la sottomatrice di $A$ formata dalle sole colonne $j_1, \dots, j_k$, e analogamente $B_{j_1,\dots,j_k}$. Allora

$$
A_{j_1,\dots,j_k} \text{ è equivalente per mosse di riga a } B_{j_1,\dots,j_k}.
$$

**Dimostrazione.** Che $A$ sia equivalente a $B$ significa che esiste una matrice invertibile $P$, corrispondente alle mosse di riga eseguite, con $B = PA$. Il prodotto si calcola colonna per colonna: la $j$-esima colonna di $PA$ è $P$ per la $j$-esima colonna di $A$. Quindi

$$
B_{j_1,\dots,j_k} = P\, A_{j_1,\dots,j_k}.
$$

Detto altrimenti, le stesse mosse di riga si possono eseguire guardando soltanto un sottoinsieme di colonne. $\square$

**Conseguenza.** Matrici equivalenti per righe hanno rango uguale. Dunque, per ogni scelta di colonne,

$$
\operatorname{rk} A_{j_1,\dots,j_k} = \operatorname{rk} B_{j_1,\dots,j_k}.
$$

## 4. Unicità della forma a scala completa

### Forma a scala completa

Una matrice è **a scala completa** (ridotta) se è a scala, ogni pivot vale $1$ e sopra ogni pivot ci sono solo zeri. Poiché è a scala, anche sotto ogni pivot ci sono solo zeri. Quindi la colonna di un pivot contiene un unico $1$ e tutti gli altri elementi nulli. Nelle altre posizioni possono esserci elementi qualsiasi.

### Primo passo: le colonne dei pivot coincidono

**Proposizione.** Siano $A, B \in M_{m\times n}(K)$ entrambe a scala completa ed equivalenti per mosse di riga. Allora hanno i pivot nelle stesse colonne.

**Idea della dimostrazione.** Per $h = 1, \dots, n$, sia $A_{(h)}$ la sottomatrice formata dalle prime $h$ colonne di $A$. Per una matrice a scala vale:

$$
\text{la colonna } h \text{ contiene un pivot} \iff \operatorname{rk} A_{(h)} = \operatorname{rk} A_{(h-1)} + 1,
$$

con la convenzione $\operatorname{rk} A_{(0)} = 0$.

- Se nella prima colonna c'è un pivot, il rango della prima colonna è $1$; se non c'è, la colonna è nulla e il rango è $0$.
- In generale, aggiungendo una colonna con un pivot il rango aumenta di uno; aggiungendo una colonna senza pivot il rango non aumenta.

Per la sezione 3, le sottomatrici $A_{(h)}$ e $B_{(h)}$ sono equivalenti e quindi hanno lo stesso rango per ogni $h$. Allora il rango "sale" esattamente alle stesse colonne in $A$ e in $B$, e le colonne dei pivot coincidono.

Si può anche ragionare così: si prendono le colonne dei pivot di una delle due matrici e si guardano le stesse colonne nell'altra. Poiché le sottomatrici sono equivalenti, devono avere lo stesso rango, e quindi anche nell'altra matrice in quelle colonne devono comparire i pivot.

**Esempio.** Il docente ha considerato una matrice a scala completa con pivot nella seconda e nella terza colonna, confrontando poi quelle colonne con altre scelte (per esempio la seconda e la quarta). Un esempio di questo tipo:

$$
A=\begin{pmatrix}0&1&0&2\\0&0&1&3\end{pmatrix}.
$$

I ranghi delle sottomatrici formate dalle prime $h$ colonne sono

| $h$ | 1 | 2 | 3 | 4 |
|---|---|---|---|---|
| $\operatorname{rk}A_{(h)}$ | 0 | 1 | 2 | 2 |

Il rango sale esattamente in corrispondenza delle colonne $2$ e $3$, che sono le colonne dei pivot. La sottomatrice delle colonne $2$ e $4$, $\begin{pmatrix}1&2\\0&3\end{pmatrix}$, ha anch'essa rango $2$, ma la colonna $4$ non contiene un pivot: per individuare i pivot bisogna guardare i ranghi delle sottomatrici formate dalle **prime** $h$ colonne, non di colonne scelte a caso.

### Secondo passo: le matrici coincidono

**Teorema.** Siano $A, B \in M_{m\times n}(K)$ a scala completa, con pivot nelle stesse colonne $j_1 < \dots < j_k$. Allora

$$
A \text{ è equivalente a } B \iff A = B.
$$

Ne segue che la forma a scala completa è una **forma normale** per l'equivalenza per righe. Ogni matrice è equivalente a una e una sola matrice a scala completa, e due matrici sono equivalenti se e solo se hanno la stessa forma a scala completa.

**Dimostrazione.** Siano $a_1, \dots, a_k$ le righe non nulle di $A$ e $b_1,\dots,b_k$ quelle di $B$. Il loro numero è lo stesso, perché è il numero di pivot. Le mosse di riga non cambiano lo span delle righe, quindi

$$
W := \operatorname{Span}(a_1,\dots,a_k) = \operatorname{Span}(b_1,\dots,b_k).
$$

Basta allora mostrare che le righe di una matrice a scala completa si ricostruiscono a partire da $W$ e dalle colonne dei pivot.

Consideriamo un elemento di $W$, cioè una combinazione lineare delle righe:

$$
x = \sum_{l=1}^k c_l\, a_l.
$$

Nella colonna $j_s$ l'unico elemento non nullo di $A$ è l'$1$ della riga $s$. Quindi la coordinata $j_s$ di $x$ è esattamente il coefficiente $c_s$:

$$
x_{j_s} = c_s \qquad \text{per ogni } s = 1, \dots, k.
$$

Fissato $i$, intersechiamo $W$ con il sottoinsieme

$$
H_i = \{x \in K^n : x_{j_i} = 1,\ x_{j_s} = 0 \ \forall s \neq i\}.
$$

Imporre queste condizioni equivale a risolvere un sistema lineare nei coefficienti, che dà $c_i = 1$ e $c_s = 0$ per $s \ne i$. Quindi l'intersezione contiene un solo vettore riga:

$$
W \cap H_i = \{a_i\}.
$$

Lo stesso ragionamento applicato a $B$, che ha lo stesso $W$ e le stesse colonne dei pivot, dà $W \cap H_i = \{b_i\}$. Dunque $a_i = b_i$ per ogni $i$. Le righe restanti sono nulle in entrambe, e quindi $A = B$.

Il viceversa è ovvio. $\square$

> [!note] Intuizione
> Conoscendo il sottospazio generato dalle righe e le colonne dei pivot, si conosce interamente la matrice a scala completa. Ogni riga è l'unico vettore del sottospazio che, lungo le colonne dei pivot, ha $1$ nella "sua" posizione e $0$ in tutte le altre.

## 5. Esercizio 4.2 (Martelli): matrice di una restrizione

Dagli appunti: sia $F:\mathbb R^3\to\mathbb R^3$,

$$
F\begin{pmatrix}x\\y\\z\end{pmatrix}=\begin{pmatrix}2x-y+z\\x+y+z\\y-z\end{pmatrix},\qquad U=\{x+y-z=0\}.
$$

Si cerca la matrice di $F|_U:U\to\mathbb R^3$ rispetto alla base $\mathcal B=\{(1,0,1),(0,1,1)\}$ di $U$ e alla base canonica $\mathcal E$ di $\mathbb R^3$.

**Forma della matrice.** Lo spazio di partenza ha dimensione $2$ e quello di arrivo dimensione $3$, quindi $[F|_U]^{\mathcal B}_{\mathcal E}\in M_{3\times 2}(\mathbb R)$.

**Costruzione.** Ogni colonna contiene le coordinate, nella base canonica, dell'immagine di un vettore di $\mathcal B$. Nella base canonica le coordinate di un vettore sono le sue componenti.

$$
F(1,0,1)=(3,2,-1),\qquad F(0,1,1)=(0,2,0),
$$

$$
[F|_U]^{\mathcal B}_{\mathcal E}=\begin{pmatrix}3&0\\2&2\\-1&0\end{pmatrix}.
$$

> [!tip] Seguito
> Lo stesso esercizio prosegue nella [[2026-11-13 - Conseguenze del teorema rango-nullità, restrizioni e cambiamenti di base#4. Esempio: matrice della restrizione e cambiamento di base|lezione del 13 novembre]], dove la matrice si ricalcola rispetto a un'altra base dell'arrivo.

## Esercizi assegnati

Dal testo di Martelli (numeri dagli appunti scritti a mano):

- **3.5, 4.10, 4.13**, assegnati dopo il calcolo della matrice inversa;
- **4.4**, assegnato dopo l'esercizio 4.2 svolto in classe.

Il docente ha annunciato che metterà online il materiale entro il giorno successivo.