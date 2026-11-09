---
type: lecture-note
course: Geometria 1
date: '2026-11-05'
title: Sistemi lineari e somme dirette di sottospazi
source_transcript: _transcripts/Geometria 1/2026-11-04 - Sistemi lineari e somme dirette di sottospazi.md
source_hash: sha256:ac4b8c8aacd19b6e540afb35eeeab7f351d4b048906b8da1606c3f8b553f8806
teaching_model: anthropic/claude-opus-5.5
taught_at: '2026-11-04T13:37:33.673Z'
original_date: '2026-11-04'
date_adjustment: Shifted forward one day to keep one note per course and date.
---

# Sistemi lineari e somme dirette di sottospazi

## 1. Molteplicità di una radice e derivata di un polinomio

In questa sezione si lavora su $\mathbb R$ o $\mathbb C$, o più in generale su un campo di caratteristica zero. In caratteristica positiva il risultato richiede che la caratteristica non divida $m$: per esempio, in caratteristica $p$ si ha $(x^p)'=0$. Per $m=1$, «molteplicità $0$» significa che il punto non è una radice della derivata.

Sia $P(x)$ un polinomio e sia $x_0$ una sua radice di molteplicità $m\geq 1$. Per definizione, esiste un polinomio $Q(x)$ tale che

$$
P(x)=(x-x_0)^mQ(x),
$$

con

$$
Q(x_0)\neq 0.
$$

La condizione $Q(x_0)\neq 0$ è essenziale: se fosse $Q(x_0)=0$, il fattore $(x-x_0)$ potrebbe essere estratto ulteriormente e la molteplicità sarebbe maggiore di $m$.

### Derivazione

Derivando il prodotto si ottiene

$$
P'(x)
=
m(x-x_0)^{m-1}Q(x)
+
(x-x_0)^mQ'(x).
$$

Si raccoglie il fattore comune $(x-x_0)^{m-1}$:

$$
P'(x)
=
(x-x_0)^{m-1}
\left[
mQ(x)+(x-x_0)Q'(x)
\right].
$$

Pertanto $x_0$ è certamente una radice di $P'(x)$ di molteplicità almeno $m-1$.

Per determinare la molteplicità esatta, si valuta il polinomio tra parentesi in $x_0$:

$$
mQ(x_0)+(x_0-x_0)Q'(x_0)
=
mQ(x_0).
$$

Poiché $m\neq 0$ e $Q(x_0)\neq 0$, si ha

$$
mQ(x_0)\neq 0.
$$

Quindi il fattore tra parentesi non è divisibile per $(x-x_0)$ e la molteplicità di $x_0$ come radice di $P'(x)$ è esattamente $m-1$.

### Risultato

Se $x_0$ è radice di $P$ di molteplicità $m$, allora $x_0$ è radice di $P'$ di molteplicità $m-1$:

$$
\operatorname{mult}_{P'}(x_0)
=
\operatorname{mult}_{P}(x_0)-1.
$$

Esempi:

- radice semplice di $P$ ($m=1$): non è radice di $P'$;
- radice doppia di $P$ ($m=2$): è radice semplice di $P'$;
- radice tripla di $P$ ($m=3$): è radice doppia di $P'$.

Questa relazione esaurisce tutti i possibili valori della molteplicità $m\geq 1$.

> [!warning]
> Vale l’implicazione
>
> $$
> x_0\text{ radice di }P\text{ di molteplicità }m
> \Longrightarrow
> x_0\text{ radice di }P'\text{ di molteplicità }m-1.
> $$
>
> In generale non vale il contrario. Dal fatto che $x_0$ sia radice di $P'$ non si può concludere automaticamente che sia radice di $P$.

---

## 2. Trasposta del prodotto di matrici

Siano $A$ e $B$ due matrici per cui il prodotto $AB$ sia definito. Se

$$
A=(a_{ij}),\qquad B=(b_{jk}),
$$

allora l’elemento $(i,k)$ della matrice $AB$ è

$$
(AB)_{ik}
=
\sum_j a_{ij}b_{jk}.
$$

La trasposta di $AB$ ha quindi elemento $(k,i)$ uguale a

$$
\bigl((AB)^T\bigr)_{ki}
=
(AB)_{ik}
=
\sum_j a_{ij}b_{jk}.
$$

D’altra parte,

$$
(B^TA^T)_{ki}
=
\sum_j (B^T)_{kj}(A^T)_{ji}
=
\sum_j b_{jk}a_{ij}.
$$

Poiché gli elementi sono scalari e quindi commutano,

$$
\sum_j b_{jk}a_{ij}
=
\sum_j a_{ij}b_{jk}.
$$

Ne segue la proprietà fondamentale:

$$
\boxed{(AB)^T=B^TA^T.}
$$

L’ordine dei fattori si inverte. In particolare, non è corretto scrivere generalmente $(AB)^T=A^TB^T$.

---

## 3. Risoluzione dei sistemi lineari con il metodo di Gauss

### 3.1. Matrice completa e forma a scala

Un sistema lineare può essere rappresentato mediante la sua matrice completa, cioè la matrice dei coefficienti affiancata dalla colonna dei termini noti.

Le operazioni elementari sulle righe sono:

1. scambiare due righe;
2. moltiplicare una riga per uno scalare non nullo;
3. sommare a una riga un multiplo di un’altra riga.

Queste operazioni non modificano l’insieme delle soluzioni del sistema.

L’obiettivo del metodo di Gauss è portare la matrice in forma a scala, così da poter ricavare le incognite partendo dall’ultima riga e procedendo a ritroso.

#### Scelta del pivot

Per iniziare l’eliminazione è opportuno scegliere come prima riga una riga il cui primo coefficiente sia non nullo. Se nella prima posizione compare uno zero, si possono scambiare le righe per portare in alto una riga con coefficiente non nullo.

È spesso conveniente scegliere come pivot un coefficiente uguale a $1$ o $-1$, in modo da evitare divisioni e semplificare i calcoli.

> [!warning]
> Dividere per un’espressione contenente un parametro richiede una distinzione di casi. Se si divide per $c-1$, per esempio, bisogna separare il caso $c\neq 1$ dal caso $c=1$.
>
> Quando possibile, è preferibile usare operazioni del tipo
>
> $$
> R_i\longleftarrow R_i+\lambda R_j
> $$
>
> invece di dividere per quantità che potrebbero annullarsi.

---

### 3.2. Interpretazione delle righe finali

Dopo la riduzione, possono comparire tre situazioni fondamentali.

#### Sistema incompatibile

Se compare una riga del tipo

$$
\begin{bmatrix}
0&0&\cdots&0&\mid&\alpha
\end{bmatrix},
\qquad \alpha\neq 0,
$$

questa riga rappresenta l’equazione impossibile

$$
0=\alpha.
$$

Il sistema non ha soluzioni.

In termini di rango:

$$
\operatorname{rank}(A)
<
\operatorname{rank}(A\mid b).
$$

#### Sistema compatibile determinato

Se il sistema è compatibile e ogni incognita corrisponde a una colonna pivot, allora esiste un’unica soluzione.

Se il numero delle incognite è $n$, la condizione è

$$
\operatorname{rank}(A)=\operatorname{rank}(A\mid b)=n.
$$

#### Sistema compatibile indeterminato

Se il sistema è compatibile e alcune colonne non sono pivot, le corrispondenti incognite sono parametri liberi. Le soluzioni dipendono da tanti parametri quante sono le variabili libere:

$$
\text{numero di parametri liberi}
=
n-\operatorname{rank}(A).
$$

In questo caso esistono infinite soluzioni se il campo è infinito. Su un campo finito con $q$ elementi, le soluzioni sono $q^{n-\operatorname{rank}(A)}$.

---

## 4. Soluzione particolare e soluzione dell’omogenea

Consideriamo un sistema lineare non omogeneo

$$
A x=b.
$$

Se il sistema è compatibile, si può scegliere una soluzione particolare $x_p$ tale che

$$
Ax_p=b.
$$

Si considera poi il sistema omogeneo associato

$$
Ax=0.
$$

L’insieme delle soluzioni dell’omogenea è il nucleo di $A$:

$$
\ker A=\{x\mid Ax=0\}.
$$

Se $x$ è una soluzione qualunque del sistema non omogeneo, allora

$$
A(x-x_p)=Ax-Ax_p=b-b=0.
$$

Quindi $x-x_p\in\ker A$, cioè esiste $u\in\ker A$ tale che

$$
x=x_p+u.
$$

Viceversa, se $u\in\ker A$, allora

$$
A(x_p+u)=Ax_p+Au=b+0=b.
$$

Pertanto l’insieme delle soluzioni del sistema non omogeneo è

$$
\boxed{x_p+\ker A.}
$$

Se $\{q_1,\dots,q_k\}$ è una base dello spazio delle soluzioni dell’omogenea, la soluzione generale si scrive

$$
\boxed{
x=x_p+\lambda_1q_1+\cdots+\lambda_kq_k,
\qquad
\lambda_1,\dots,\lambda_k\in\mathbb{R}.
}
$$

Geometricamente, l’insieme delle soluzioni è una traslazione del sottospazio $\ker A$.

### Costruzione della soluzione particolare

Una soluzione particolare si può ottenere ponendo tutti i parametri liberi uguali a zero. Questa scelta non è l’unica possibile: qualunque scelta dei parametri produce una soluzione particolare.

Per esempio, se la soluzione generale è

$$
x=
\begin{pmatrix}
1\\
0\\
3\\
0\\
0
\end{pmatrix}
+
\lambda_1q_1+\lambda_2q_2,
$$

allora ponendo $\lambda_1=\lambda_2=0$ si ottiene la soluzione particolare

$$
x_p=
\begin{pmatrix}
1\\
0\\
3\\
0\\
0
\end{pmatrix}.
$$

I vettori $q_1,q_2$ sono invece generatori dello spazio delle soluzioni dell’omogenea. Se sono linearmente indipendenti, formano una base di tale spazio.

> [!note]
> Per risolvere il sistema non omogeneo non è necessario rifare da zero tutti i calcoli:
>
> 1. si trova una soluzione particolare;
> 2. si risolve il sistema omogeneo associato;
> 3. si sommano la soluzione particolare e tutte le soluzioni dell’omogenea.

---

## 5. Sistemi dipendenti da un parametro

Quando i coefficienti del sistema dipendono da un parametro, la forma a scala può cambiare per particolari valori del parametro. Occorre quindi studiare separatamente i casi in cui alcuni pivot si annullano.

Un procedimento corretto è:

1. scrivere la matrice completa;
2. eseguire operazioni di riga valide senza dividere per espressioni eventualmente nulle;
3. portare la matrice il più possibile in forma a scala;
4. individuare i coefficienti che possono annullarsi;
5. distinguere i casi corrispondenti;
6. confrontare il rango della matrice incompleta con quello della matrice completa.

### Rango e compatibilità

Per il sistema

$$
Ax=b
$$

vale il teorema di Rouché–Capelli:

- il sistema è compatibile se e solo se
  $$
  \operatorname{rank}(A)=\operatorname{rank}(A\mid b);
  $$
- se il rango comune è uguale al numero $n$ delle incognite, la soluzione è unica;
- se il rango comune $r$ è minore di $n$, ci sono $n-r$ parametri liberi: infinite soluzioni su un campo infinito, oppure $q^{n-r}$ su un campo con $q$ elementi;
- se
  $$
  \operatorname{rank}(A)<\operatorname{rank}(A\mid b),
  $$
  il sistema è incompatibile.

Nel caso parametrico, un valore speciale del parametro può far annullare un pivot della matrice incompleta. Se contemporaneamente nella matrice completa compare un elemento non nullo nella colonna dei termini noti, si ottiene una riga del tipo

$$
0=1
$$

o, più in generale,

$$
0=\alpha,\qquad \alpha\neq 0,
$$

e il sistema non ha soluzioni.

Se invece l’annullamento di un pivot avviene sia nella parte dei coefficienti sia nel termine noto, può aumentare il numero di variabili libere e quindi comparire una famiglia infinita di soluzioni.

#### Attenzione alle operazioni con parametri

Una trasformazione come

$$
R_i\longleftarrow R_i+\lambda(c)R_j
$$

è lecita per ogni valore del parametro, perché non richiede che alcun coefficiente sia non nullo.

Al contrario, la trasformazione

$$
R_i\longleftarrow \frac{1}{c-1}R_i
$$

è lecita solo se $c\neq 1$. Se si vuole usare questa operazione, è necessario dividere il procedimento in due casi:

- caso $c\neq 1$;
- caso $c=1$.

Per evitare errori e casi superflui, conviene mantenere i prodotti e usare somme di multipli di righe finché possibile.

---

## 6. Verifica delle soluzioni

Una volta ottenuta una soluzione, è importante sostituirla nel sistema iniziale.

La verifica permette di individuare:

- errori di calcolo;
- errori logici;
- errori nella trascrizione della matrice;
- parametri assegnati in modo scorretto;
- segni sbagliati durante l’eliminazione.

La verifica non deve essere considerata un’aggiunta facoltativa: fa parte della risoluzione dell’esercizio. Se il sistema iniziale è semplice, spesso è possibile controllare rapidamente tutte le equazioni sostituendo il vettore trovato.

In particolare, dopo aver risolto un sistema ridotto, non bisogna limitarsi a considerare il risultato come corretto solo perché deriva da una successione di passaggi formali. È necessario controllare che il vettore soddisfi effettivamente le equazioni originarie.

---

## 7. Metodo di studio degli esercizi

Per esercizi di questo tipo è utile procedere gradualmente:

1. ripassare la tecnica generale, per esempio l’eliminazione di Gauss;
2. svolgere un esercizio semplice subito dopo aver studiato la tecnica;
3. controllare esplicitamente il risultato;
4. passare a esercizi con parametri o con condizioni aggiuntive;
5. confrontare i diversi casi e capire quale strumento è stato necessario in ciascuno.

L’obiettivo non è solo memorizzare una sequenza di operazioni, ma riconoscere la struttura del problema: scelta dei pivot, variabili libere, compatibilità, spazio delle soluzioni e verifica finale.

---

## 8. Basi di sottospazi definiti da equazioni

Consideriamo un sottospazio $W\subseteq\mathbb{R}^5$ definito da un’equazione lineare omogenea, per esempio

$$
x_1+2x_2+3x_3+4x_4+5x_5=0.
$$

Essendo presente una sola equazione indipendente in cinque incognite, ci sono quattro parametri liberi. Si possono scegliere, ad esempio, $x_2,x_3,x_4,x_5$ come parametri e ricavare $x_1$:

$$
x_1=-2x_2-3x_3-4x_4-5x_5.
$$

Quindi un vettore generico di $W$ è

$$
\begin{pmatrix}
x_1\\x_2\\x_3\\x_4\\x_5
\end{pmatrix}
=
x_2
\begin{pmatrix}
-2\\1\\0\\0\\0
\end{pmatrix}
+
x_3
\begin{pmatrix}
-3\\0\\1\\0\\0
\end{pmatrix}
+
x_4
\begin{pmatrix}
-4\\0\\0\\1\\0
\end{pmatrix}
+
x_5
\begin{pmatrix}
-5\\0\\0\\0\\1
\end{pmatrix}.
$$

Una base di $W$ è quindi

$$
\left\{
\begin{pmatrix}
-2\\1\\0\\0\\0
\end{pmatrix},
\begin{pmatrix}
-3\\0\\1\\0\\0
\end{pmatrix},
\begin{pmatrix}
-4\\0\\0\\1\\0
\end{pmatrix},
\begin{pmatrix}
-5\\0\\0\\0\\1
\end{pmatrix}
\right\}.
$$

La dimensione è

$$
\dim W=4.
$$

### Perché non si può usare direttamente la base canonica di $\mathbb{R}^5$

La base canonica di $\mathbb{R}^5$ è una base dello spazio ambiente, ma in generale non è una base del sottospazio $W$.

Per esempio,

$$
e_1=
\begin{pmatrix}
1\\0\\0\\0\\0
\end{pmatrix}
$$

non appartiene a $W$, perché sostituendolo nell’equazione si ottiene

$$
1+2\cdot 0+3\cdot 0+4\cdot 0+5\cdot 0=1\neq 0.
$$

La base di un sottospazio deve essere costituita da vettori appartenenti al sottospazio stesso.

La base canonica dello spazio dei parametri liberi può però essere utilizzata per costruire una base di $W$: si assegnano uno alla volta i parametri liberi uguali a $1$, lasciando gli altri uguali a $0$, e si ricostruisce la coordinata dipendente tramite l’equazione.

---

## 9. Somma diretta di due sottospazi

Siano $U,V$ sottospazi di uno spazio vettoriale $W$. La somma $U+V$ è l’insieme dei vettori della forma

$$
u+v,
\qquad u\in U,\ v\in V.
$$

Si dice che la somma è diretta, e si scrive

$$
U\oplus V,
$$

se ogni vettore di $U+V$ si scrive in modo unico come somma di un vettore di $U$ e di un vettore di $V$.

La caratterizzazione fondamentale è

$$
\boxed{
U+V\text{ è somma diretta}
\Longleftrightarrow
U\cap V=\{0\}.
}
$$

Infatti, se

$$
u_1+v_1=u_2+v_2,
$$

allora

$$
u_1-u_2=v_2-v_1.
$$

Il vettore comune appartiene sia a $U$ sia a $V$, dunque appartiene a $U\cap V$. Se l’intersezione è $\{0\}$, si ha

$$
u_1-u_2=0,\qquad v_2-v_1=0,
$$

e quindi

$$
u_1=u_2,\qquad v_1=v_2.
$$

La rappresentazione è unica.

### Basi e dimensione

Se $\mathcal{B}_U$ è una base di $U$ e $\mathcal{B}_V$ è una base di $V$, allora, quando la somma è diretta, l’unione delle due basi è una base di $U\oplus V$:

$$
\mathcal{B}_{U\oplus V}
=
\mathcal{B}_U\cup\mathcal{B}_V.
$$

Di conseguenza,

$$
\boxed{
\dim(U\oplus V)
=
\dim U+\dim V.
}
$$

Più in generale, senza ipotesi di somma diretta,

$$
\dim(U+V)
=
\dim U+\dim V-\dim(U\cap V).
$$

La somma delle dimensioni è quindi valida senza il termine correttivo solo quando l’intersezione è banale.

---

## 10. Somma diretta di tre o più sottospazi

Siano $U,V,Z$ sottospazi di uno spazio vettoriale. La scrittura

$$
U\oplus V\oplus Z
$$

significa che ogni vettore della somma si scrive in modo unico nella forma

$$
w=u+v+z,
\qquad
u\in U,\ v\in V,\ z\in Z.
$$

È importante non interpretare questa condizione semplicemente come

$$
U\cap V\cap Z=\{0\}.
$$

Questa condizione, da sola, è troppo debole.

Anche richiedere che tutte le intersezioni a due a due siano banali,

$$
U\cap V=\{0\},\qquad
U\cap Z=\{0\},\qquad
V\cap Z=\{0\},
$$

non è sufficiente in generale per garantire che $U+V+Z$ sia una somma diretta.

### Esempio nel piano

Nel piano $\mathbb{R}^2$ si possono prendere tre rette distinte passanti per l’origine. Ognuna ha dimensione $1$ e due rette distinte hanno intersezione $\{0\}$.

Tuttavia non possono essere in somma diretta tutte e tre, perché

$$
\dim R_1+\dim R_2+\dim R_3=1+1+1=3,
$$

mentre lo spazio ambiente ha dimensione $2$.

Se fossero in somma diretta, la somma avrebbe dimensione $3$, impossibile in $\mathbb{R}^2$.

---

### 10.1. Caratterizzazione tramite somme progressive

La condizione corretta può essere espressa imponendo che ciascun sottospazio abbia intersezione banale con la somma di tutti quelli precedenti. Per esempio:

$$
U\oplus V\oplus Z
$$

può essere interpretata come

$$
(U\oplus V)\oplus Z,
$$

cioè devono valere entrambe le condizioni:

$$
U\cap V=\{0\}
$$

e

$$
(U+V)\cap Z=\{0\}.
$$

Equivalentemente, si può raggruppare in altro modo:

$$
U\oplus(V\oplus Z),
$$

ottenendo

$$
V\cap Z=\{0\}
$$

e

$$
U\cap(V+Z)=\{0\}.
$$

Queste formulazioni sono equivalenti perché la somma diretta è associativa.

Per tre sottospazi si può quindi usare la condizione:

$$
U\cap V=\{0\}
\quad\text{e}\quad
(U+V)\cap Z=\{0\}.
$$

Oppure, in una forma più simmetrica e generale:

$$
\boxed{
V_i\cap\sum_{j\neq i}V_j=\{0\}
\qquad
\text{per ogni }i.
}
$$

Questa condizione dice che ogni sottospazio deve avere intersezione banale con la somma di tutti gli altri sottospazi.

---

### 10.2. Unicità della decomposizione

La somma

$$
U\oplus V\oplus Z
$$

è diretta se e solo se ogni vettore $w$ della somma ammette un’unica rappresentazione

$$
w=u+v+z.
$$

Se esistessero due rappresentazioni,

$$
w=u_1+v_1+z_1
=
u_2+v_2+z_2,
$$

si avrebbe

$$
(u_1-u_2)+(v_1-v_2)+(z_1-z_2)=0.
$$

La somma è diretta esattamente quando l’unica relazione lineare di questo tipo è quella banale:

$$
u_1-u_2=0,\qquad
v_1-v_2=0,\qquad
z_1-z_2=0.
$$

Quindi la nozione di somma diretta può essere espressa in due modi equivalenti:

1. tramite condizioni sulle intersezioni;
2. tramite unicità della scrittura dei vettori come somme di componenti appartenenti ai diversi sottospazi.

---

### 10.3. Basi e dimensione nel caso di più sottospazi

Se

$$
W=U\oplus V\oplus Z
$$

e $\mathcal{B}_U,\mathcal{B}_V,\mathcal{B}_Z$ sono basi dei tre sottospazi, allora

$$
\mathcal{B}_U\cup\mathcal{B}_V\cup\mathcal{B}_Z
$$

è una base di $W$.

Di conseguenza,

$$
\boxed{
\dim W
=
\dim U+\dim V+\dim Z.
}
$$

Il ragionamento si può ottenere applicando due volte il risultato per la somma diretta di due sottospazi:

$$
\dim\bigl((U\oplus V)\oplus Z\bigr)
=
\dim(U\oplus V)+\dim Z
=
\dim U+\dim V+\dim Z.
$$

Più in generale, se

$$
W=V_1\oplus\cdots\oplus V_k,
$$

allora la base di $W$ si ottiene riunendo le basi dei singoli sottospazi e

$$
\dim W
=
\sum_{i=1}^k\dim V_i.
$$

---

## 11. Costruzione di sottospazi in somma diretta

Per costruire tre sottospazi di uno spazio ambiente $W$ in somma diretta, una strategia naturale è partire da una base di $W$ e suddividerne i vettori in gruppi disgiunti.

Se una base di $W$ è

$$
\mathcal{B}=\{b_1,\dots,b_n\},
$$

si possono definire, ad esempio,

$$
U=\operatorname{span}(b_1,\dots,b_r),
$$

$$
V=\operatorname{span}(b_{r+1},\dots,b_s),
$$

$$
Z=\operatorname{span}(b_{s+1},\dots,b_n).
$$

Poiché tutti i vettori appartengono a una stessa base, sono linearmente indipendenti. Di conseguenza, i sottospazi così ottenuti sono in somma diretta e

$$
W=U\oplus V\oplus Z.
$$

Questo è il ragionamento inverso rispetto a quello usato per costruire una base della somma diretta: se si prendono basi dei singoli sottospazi e le si uniscono, si ottiene una base dello spazio totale; viceversa, partendo da una base dello spazio totale, si possono distribuire i vettori tra i diversi sottospazi.

---

## 12. Intersezione tra un sottospazio generato e uno definito da equazioni

Un sottospazio può essere descritto in due modi:

- tramite generatori:
  $$
  W=\operatorname{span}(v_1,\dots,v_k);
  $$
- tramite equazioni lineari:
  $$
  Z=\{x\mid \text{alcune condizioni lineari sono soddisfatte}\}.
  $$

Per trovare $W\cap Z$, si parte da un vettore generico di $W$:

$$
w=\alpha_1v_1+\cdots+\alpha_kv_k.
$$

Poi si impongono su $w$ le equazioni che definiscono $Z$.

In questo modo si ottiene un sistema lineare nelle variabili $\alpha_1,\dots,\alpha_k$. Le soluzioni del sistema forniscono le combinazioni lineari dei generatori di $W$ che appartengono anche a $Z$.

### Descrizione tramite applicazione lineare

Supponiamo che $Z$ sia il nucleo di un’applicazione lineare $F$:

$$
Z=\ker F.
$$

Allora

$$
W\cap Z
=
W\cap\ker F
=
\ker(F|_W),
$$

dove $F|_W$ è la restrizione di $F$ a $W$.

Per studiare questa restrizione è sufficiente conoscere l’immagine dei vettori di una base di $W$. Se

$$
w=\alpha_1v_1+\cdots+\alpha_kv_k,
$$

per linearità si ha

$$
F(w)
=
\alpha_1F(v_1)+\cdots+\alpha_kF(v_k).
$$

La condizione $w\in\ker F$ diventa quindi

$$
\alpha_1F(v_1)+\cdots+\alpha_kF(v_k)=0.
$$

Si risolve il sistema nelle coordinate $\alpha_i$ e si sostituiscono le soluzioni nell’espressione di $w$.

---

### Esempio di applicazione

Supponiamo che $W$ sia generato da tre vettori $v_1,v_2,v_3$ e che una condizione lineare definisca il sottospazio $Z$ tramite una forma lineare $f$:

$$
Z=\ker f.
$$

Supponiamo inoltre che

$$
f(v_1)=2,\qquad
f(v_2)=1,\qquad
f(v_3)=-1.
$$

Un vettore generico di $W$ è

$$
w=\alpha_1v_1+\alpha_2v_2+\alpha_3v_3.
$$

La condizione $w\in Z$ equivale a

$$
f(w)=0.
$$

Per linearità:

$$
f(w)
=
\alpha_1f(v_1)+\alpha_2f(v_2)+\alpha_3f(v_3)
=
2\alpha_1+\alpha_2-\alpha_3.
$$

Quindi bisogna risolvere

$$
2\alpha_1+\alpha_2-\alpha_3=0.
$$

Si tratta di un sistema omogeneo con una sola equazione e tre incognite, quindi ci sono due parametri liberi. Risolvendo, ad esempio rispetto ad $\alpha_1$:

$$
\alpha_1
=
-\frac{1}{2}\alpha_2+\frac{1}{2}\alpha_3.
$$

Ponendo alternativamente

$$
(\alpha_2,\alpha_3)=(1,0)
$$

e

$$
(\alpha_2,\alpha_3)=(0,1),
$$

si ottengono due soluzioni linearmente indipendenti nello spazio dei coefficienti. Sostituendole nella combinazione

$$
\alpha_1v_1+\alpha_2v_2+\alpha_3v_3,
$$

si ottengono due vettori che formano una base di $W\cap Z$, purché siano linearmente indipendenti.

Il punto essenziale è che non si cercano direttamente i vettori dell’intersezione: si cercano prima le combinazioni lineari dei generatori di $W$ che soddisfano le equazioni che definiscono $Z$.

---

## 13. Completamento di una base

Se si possiedono alcuni vettori linearmente indipendenti e si vuole completarli a una base dello spazio ambiente, si possono aggiungere vettori della base canonica e verificare l’indipendenza.

Procedura generale:

1. si dispongono i vettori come colonne di una matrice;
2. si applica l’eliminazione di Gauss;
3. si individuano le colonne pivot;
4. si aggiungono vettori della base canonica finché il rango raggiunge la dimensione dello spazio.

Per esempio, in $\mathbb{R}^4$ si possono iniziare ad aggiungere

$$
e_1=
\begin{pmatrix}
1\\0\\0\\0
\end{pmatrix},
\quad
e_2=
\begin{pmatrix}
0\\1\\0\\0
\end{pmatrix},
\quad
e_3=
\begin{pmatrix}
0\\0\\1\\0
\end{pmatrix},
\quad
e_4=
\begin{pmatrix}
0\\0\\0\\1
\end{pmatrix}.
$$

Non è però necessario aggiungerli tutti senza controllo. Se i vettori iniziali sono già indipendenti, si possono provare i vettori canonici uno alla volta e tenere solo quelli che aumentano il rango.

Una volta ottenuti quattro vettori linearmente indipendenti in $\mathbb{R}^4$, essi formano automaticamente una base.

Anche in questo caso l’algoritmo di Gauss è il metodo generale e sicuro. L’osservazione della posizione degli zeri può talvolta rendere evidente quali vettori aggiungere, ma il controllo tramite il rango resta il procedimento affidabile.
