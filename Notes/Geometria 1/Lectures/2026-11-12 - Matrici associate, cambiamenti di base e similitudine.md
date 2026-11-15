---
type: lecture-note
course: Geometria 1
date: 2026-11-12
title: Matrici associate, cambiamenti di base e similitudine
source_transcript: _transcripts/Geometria 1/2026-11-12 - Matrici associate,
  cambiamenti di base e similitudine.md
source_hash: sha256:f30ffdd56e1447c652d4f369234e2e740c79e1cf8d7835c2317d1315b943b68c
teaching_model: anthropic/claude-opus-5.5
taught_at: 2026-11-15T12:19:18.640Z
---

# Matrici associate, cambiamenti di base e similitudine

> [!note]
> Ampie parti della registrazione sono inintelligibili. La struttura e i contenuti qui riportati sono quelli riconoscibili con ragionevole sicurezza. Dove un passaggio è incerto, lo si segnala esplicitamente.

**Notazione.** Per un'applicazione lineare $F: V \to W$, con $\mathcal{B}$ base di $V$ (partenza) e $\mathcal{C}$ base di $W$ (arrivo), indichiamo con

$$
M_{\mathcal{B}}^{\mathcal{C}}(F)
$$

la matrice associata a $F$ rispetto a queste basi. Il pedice indica la base di partenza, l'apice quella di arrivo. Per $A \in M_{m\times n}(K)$, $F_A: K^n \to K^m$ è l'applicazione $x \mapsto Ax$.

## 1. Matrice associata e formula fondamentale

### Formula fondamentale

Sia $F: V\to W$ lineare, con $\mathcal{B} = (v_1,\dots,v_n)$ base di $V$ e $\mathcal{C}$ base di $W$.

Per definizione, la $j$-esima colonna di $M_{\mathcal{B}}^{\mathcal{C}}(F)$ è il vettore delle coordinate di $F(v_j)$ rispetto alla base $\mathcal{C}$.

Da qui segue la **formula fondamentale**: le coordinate dell'immagine di un vettore si ottengono moltiplicando la matrice associata per le coordinate del vettore,

$$
[F(v)]_{\mathcal{C}} = M_{\mathcal{B}}^{\mathcal{C}}(F)\,[v]_{\mathcal{B}} \qquad \forall v\in V .
$$

### Teorema: matrice della composizione

Siano $F: U \to V$ e $G: V\to W$ lineari, con basi $\mathcal{A}$ di $U$, $\mathcal{B}$ di $V$, $\mathcal{C}$ di $W$. Allora:

$$
M_{\mathcal{A}}^{\mathcal{C}}(G\circ F) = M_{\mathcal{B}}^{\mathcal{C}}(G)\; M_{\mathcal{A}}^{\mathcal{B}}(F).
$$

**Idea della dimostrazione.** Si confrontano le colonne.

- La $j$-esima colonna della matrice di $G\circ F$ è $[G(F(u_j))]_{\mathcal{C}}$.
- Per la formula fondamentale applicata a $G$, essa vale $M_{\mathcal{B}}^{\mathcal{C}}(G)\,[F(u_j)]_{\mathcal{B}}$.
- $[F(u_j)]_{\mathcal{B}}$ è la $j$-esima colonna di $M_{\mathcal{A}}^{\mathcal{B}}(F)$.
- Per la definizione di prodotto righe per colonne, la $j$-esima colonna di un prodotto $C = AB$ è $A$ per la $j$-esima colonna di $B$.

Le due matrici hanno quindi le stesse colonne.

**Osservazione del docente.** Questo risultato dà una motivazione, per così dire geometrica, della definizione del prodotto righe per colonne. Il prodotto di matrici è definito in quel modo proprio perché corrisponde alla composizione di applicazioni lineari.

### Generalizzazione a più applicazioni

Il teorema si estende a più di due applicazioni. Consideriamo una catena

$$
V_1 \xrightarrow{F_1} V_2 \xrightarrow{F_2} V_3 \longrightarrow \cdots \longrightarrow V_{k-1} \xrightarrow{F_{k-1}} V_k
$$

con basi $\mathcal{B}_1, \mathcal{B}_2, \dots, \mathcal{B}_k$. La matrice della composizione totale è il prodotto delle matrici intermedie:

$$
M_{\mathcal{B}_1}^{\mathcal{B}_k}(F_{k-1}\circ\cdots\circ F_1) = M_{\mathcal{B}_{k-1}}^{\mathcal{B}_k}(F_{k-1})\cdots M_{\mathcal{B}_1}^{\mathcal{B}_2}(F_1).
$$

Si dimostra per induzione dal caso di due applicazioni.

## 2. Rango e prodotto di matrici

### Richiami

Il **rango** di un'applicazione lineare $F$ è la dimensione della sua immagine:

$$
\operatorname{rk}(F) = \dim \operatorname{Im}(F).
$$

Per $F_A: K^n\to K^m$ si è già visto che le colonne di $A$ generano esattamente $\operatorname{Im}(F_A)$. Quindi:

$$
\operatorname{rk}(A) = \operatorname{rk}(F_A).
$$

Inoltre $F_{AB} = F_A\circ F_B$, perché $(AB)x = A(Bx)$ per l'associatività del prodotto.

### Esercizio: $\operatorname{rk}(AB)\le \min\{\operatorname{rk}A,\operatorname{rk}B\}$

Siano $A$ e $B$ matrici di dimensioni compatibili. Allora

$$
\operatorname{rk}(AB) = \operatorname{rk}(F_A\circ F_B) = \dim\operatorname{Im}(F_A\circ F_B).
$$

Le due disuguaglianze si dimostrano separatamente.

**Prima disuguaglianza: $\operatorname{rk}(AB)\le\operatorname{rk}A$.** È evidente, perché

$$
\operatorname{Im}(F_A\circ F_B) \subseteq \operatorname{Im}(F_A),
$$

e quindi la dimensione è minore o uguale.

**Seconda disuguaglianza: $\operatorname{rk}(AB)\le\operatorname{rk}B$.** L'immagine di $F_A\circ F_B$ è l'immagine della restrizione di $F_A$ al sottospazio $\operatorname{Im}(F_B)$:

$$
\operatorname{Im}(F_A\circ F_B) = F_A\big(\operatorname{Im}(F_B)\big) = \operatorname{Im}\big(F_A|_{\operatorname{Im}F_B}\big).
$$

Applichiamo la formula delle dimensioni alla restrizione $F_A|_{\operatorname{Im}F_B}$:

$$
\dim\operatorname{Im}(F_B) = \dim\ker\big(F_A|_{\operatorname{Im}F_B}\big) + \dim\operatorname{Im}\big(F_A|_{\operatorname{Im}F_B}\big).
$$

Ne segue $\dim\operatorname{Im}(F_A\circ F_B)\le\dim\operatorname{Im}(F_B) = \operatorname{rk}B$.

Il nucleo della restrizione è $\ker F_A\cap\operatorname{Im}F_B$. Il docente ha richiamato a questo proposito l'esercizio 5 della lezione precedente.

**Morale.** Applicando un'applicazione lineare a un sottospazio, la dimensione dell'immagine è minore o uguale a quella del sottospazio: non può aumentare.

### Esercizio successivo (contenuto incerto)

È stato svolto un ulteriore esercizio, presentato come "più interessante". Dai frammenti si riconoscono:

- sottospazi complementari;
- la somma delle dimensioni;
- un enunciato del tipo "se e soltanto se il rango di [un prodotto/composizione] è uguale al rango di [uno dei fattori]".

Una formulazione compatibile con la dimostrazione precedente è la seguente:

$$
\operatorname{rk}(AB)=\operatorname{rk}(B) \iff \ker F_A\cap\operatorname{Im}F_B=\{0\}.
$$

Segue dalla formula delle dimensioni della restrizione. Il testo esatto dell'esercizio però non è ricostruibile con certezza.

> [!tip] Dimostrazioni *(aggiunte)*
> Siano $A\in M_{m\times n}$ e $B\in M_{n\times p}$, e sia $U=\operatorname{Im}F_B\subseteq K^n$. Per la formula della restrizione (vedi anche [[2026-11-13 - Conseguenze del teorema rango-nullità, restrizioni e cambiamenti di base#3. Restrizione a un sottospazio|lezione del 13 novembre, §3]]):
> $$\operatorname{rk}(AB)=\dim F_A(U)=\dim U-\dim(\ker F_A\cap U)=\operatorname{rk}B-\dim(\ker F_A\cap\operatorname{Im}F_B).$$
> **(1)** Quindi $\operatorname{rk}(AB)=\operatorname{rk}B\iff\ker F_A\cap\operatorname{Im}F_B=\{0\}$.
>
> **(2)** Versione con **sottospazi complementari** e **somma delle dimensioni**, compatibile con i frammenti. Per Grassmann e rango-nullità ($\dim\ker F_A=n-\operatorname{rk}A$):
> $$\dim(\operatorname{Im}F_B+\ker F_A)=\operatorname{rk}B+(n-\operatorname{rk}A)-\dim(\ker F_A\cap\operatorname{Im}F_B)=n-\operatorname{rk}A+\operatorname{rk}(AB).$$
> Quindi $\operatorname{rk}(AB)=\operatorname{rk}A\iff\operatorname{Im}F_B+\ker F_A=K^n$.
>
> In particolare, se $\operatorname{Im}F_B$ e $\ker F_A$ sono **complementari** ($K^n=\operatorname{Im}F_B\oplus\ker F_A$), valgono entrambe: $\operatorname{rk}(AB)=\operatorname{rk}A=\operatorname{rk}B$.
>
> Quale delle due versioni sia stata svolta in classe resta incerto.

## 3. L'algebra degli endomorfismi $L(V)$

Sia $L(V)$ l'insieme delle applicazioni lineari $V\to V$, cioè degli endomorfismi di $V$.

- Con la somma di applicazioni lineari e il prodotto per scalari, $L(V)$ è uno spazio vettoriale.
- Su $L(V)$ c'è anche un'altra operazione, la **composizione**. Essa:
  - è associativa;
  - è distributiva rispetto alla somma;
  - ha elemento neutro, l'identità $\mathrm{id}_V$.

Scelta una base di $V$ (la stessa in partenza e in arrivo), $L(V)$ corrisponde all'insieme $M_n(K)$ delle matrici quadrate di ordine $n=\dim V$. In questa corrispondenza la composizione diventa il prodotto righe per colonne, che ha le stesse proprietà.

### Elementi invertibili

Ha senso chiedersi quali elementi siano invertibili rispetto alla composizione. $F\in L(V)$ è invertibile se esiste $G\in L(V)$ con

$$
G\circ F = F\circ G = \mathrm{id}_V.
$$

Le matrici corrispondenti sono le matrici invertibili, che formano $GL_n(K)$.

### Equivalenze per applicazioni tra spazi della stessa dimensione

Sia $F:V\to W$ lineare con $\dim V=\dim W=n$. Le seguenti condizioni sono equivalenti:

1. $F$ è invertibile (isomorfismo);
2. $F$ è iniettiva;
3. $F$ è suriettiva;
4. $\operatorname{rk}(F)=n$.

Il docente ha sottolineato che l'equivalenza tra 2, 3 e 4 deriva dalla formula delle dimensioni, usando che gli spazi hanno la stessa dimensione:

$$
n = \dim\ker F + \dim\operatorname{Im}F.
$$

Infatti $\ker F=\{0\}\iff\dim\operatorname{Im}F=n\iff\operatorname{Im}F=W$.

> [!note]
> L'esatta numerazione ed elencazione delle condizioni non è chiaramente udibile. La lista sopra è la forma standard compatibile con quanto detto.

### Matrice dell'identità e matrice dell'inversa

L'identità manda ogni vettore in se stesso. Se si usa la stessa base $\mathcal{B}$ in partenza e in arrivo, per qualunque base si ha

$$
M_{\mathcal{B}}^{\mathcal{B}}(\mathrm{id}_V) = I_n .
$$

Sia ora $F:V\to W$ invertibile, con basi $\mathcal{B}$ di $V$ e $\mathcal{C}$ di $W$. Dalla formula della composizione applicata a $F^{-1}\circ F=\mathrm{id}_V$ e a $F\circ F^{-1}=\mathrm{id}_W$ si ottiene:

$$
M_{\mathcal{C}}^{\mathcal{B}}(F^{-1})\,M_{\mathcal{B}}^{\mathcal{C}}(F) = I_n,\qquad M_{\mathcal{B}}^{\mathcal{C}}(F)\,M_{\mathcal{C}}^{\mathcal{B}}(F^{-1}) = I_n.
$$

Quindi la matrice dell'inversa è l'inversa della matrice, purché si scambino le basi di partenza e di arrivo:

$$
M_{\mathcal{C}}^{\mathcal{B}}(F^{-1}) = \big(M_{\mathcal{B}}^{\mathcal{C}}(F)\big)^{-1}.
$$

### Proposizione: $A$ invertibile se e solo se $F_A$ invertibile

Sia $A\in M_n(K)$. Allora $A$ è la matrice di $F_A$ nelle basi canoniche:

$$
A = M_{\mathcal{E}}^{\mathcal{E}}(F_A),
$$

dove $\mathcal{E}$ è la base canonica di $K^n$. Questo permette di passare dalle matrici alle applicazioni lineari.

- Se $F_A$ è invertibile, la matrice della sua inversa nelle basi canoniche è l'inversa di $A$. Quindi $A$ è invertibile.
- **Viceversa** (lasciato come esercizio a casa; il docente osserva che si può dimostrare in molti modi): se $A$ è invertibile con inversa $B$, allora $F_B\circ F_A=F_{BA}=F_{I}=\mathrm{id}$ e analogamente $F_A\circ F_B=\mathrm{id}$. Quindi $F_B$ è l'inversa di $F_A$, e $F_A$ è invertibile.

## 4. Formula del cambiamento di base

### Situazione

Sia $F:V\to W$ lineare. Siano $\mathcal{B},\mathcal{B}'$ due basi di $V$ e $\mathcal{C},\mathcal{C}'$ due basi di $W$. Vogliamo confrontare $M_{\mathcal{B}}^{\mathcal{C}}(F)$ e $M_{\mathcal{B}'}^{\mathcal{C}'}(F)$, cioè capire come cambia la matrice associata quando si cambiano le basi.

Si usa il diagramma

$$
(V,\mathcal{B}') \xrightarrow{\ \mathrm{id}_V\ } (V,\mathcal{B}) \xrightarrow{\ F\ } (W,\mathcal{C}) \xrightarrow{\ \mathrm{id}_W\ } (W,\mathcal{C}'),
$$

perché ovviamente

$$
F = \mathrm{id}_W\circ F\circ\mathrm{id}_V .
$$

Applicando la formula della matrice di una composizione si ottiene la **formula del cambiamento di base**:

$$
M_{\mathcal{B}'}^{\mathcal{C}'}(F) = M_{\mathcal{C}}^{\mathcal{C}'}(\mathrm{id}_W)\; M_{\mathcal{B}}^{\mathcal{C}}(F)\; M_{\mathcal{B}'}^{\mathcal{B}}(\mathrm{id}_V).
$$

### Matrici di cambiamento di base

La matrice dell'identità rispetto a due basi diverse non è, in generale, la matrice identità. Se si prendono le stesse basi si ottiene $I_n$.

Per costruire $M_{\mathcal{B}'}^{\mathcal{B}}(\mathrm{id}_V)$ si prendono i vettori della nuova base $\mathcal{B}'=(v_1',\dots,v_n')$ e li si esprime in termini della base $\mathcal{B}$:

- la prima colonna è $[v_1']_{\mathcal{B}}$;
- in generale, la $j$-esima colonna è $[v_j']_{\mathcal{B}}$.

L'identità è invertibile, quindi queste matrici sono invertibili:

$$
M_{\mathcal{B}'}^{\mathcal{B}}(\mathrm{id}_V)\in GL_n(K),\qquad M_{\mathcal{C}}^{\mathcal{C}'}(\mathrm{id}_W)\in GL_m(K),
$$

con $n=\dim V$ e $m=\dim W$.

### Equivalenza sinistra-destra (SD-equivalenza)

Poniamo $A=M_{\mathcal{B}}^{\mathcal{C}}(F)$ e $B=M_{\mathcal{B}'}^{\mathcal{C}'}(F)$. La formula dice che esistono $Q\in GL_m(K)$ e $P\in GL_n(K)$ tali che

$$
B = Q\,A\,P .
$$

Due matrici $A,B\in M_{m\times n}(K)$ legate in questo modo si dicono **SD-equivalenti** (equivalenti a sinistra e a destra). Matrici associate alla stessa applicazione lineare rispetto a basi diverse sono SD-equivalenti.

**Collegamento con il materiale precedente.** In precedenza la stessa relazione era stata ottenuta con le operazioni elementari di riga e di colonna. Moltiplicare a sinistra per una matrice invertibile corrisponde a operazioni di riga, moltiplicare a destra a operazioni di colonna.

### Teorema: forma canonica rispetto alla SD-equivalenza

Il risultato era già stato visto con le operazioni elementari: una matrice di rango $r$ si riduce alla forma con $I_r$ in alto a sinistra e zeri altrove. Qui lo si ridimostra con il linguaggio dei cambiamenti di base.

**Teorema.** Sia $F:V\to W$ lineare con $\operatorname{rk}F=r$, cioè $\dim\operatorname{Im}F=r$, e siano $\dim V=n$, $\dim W=m$. Esistono basi $\mathcal{B}$ di $V$ e $\mathcal{C}$ di $W$ tali che

$$
M_{\mathcal{B}}^{\mathcal{C}}(F) = \begin{pmatrix} I_r & 0\\ 0 & 0\end{pmatrix}\in M_{m\times n}(K).
$$

La matrice in generale non è quadrata.

**Dimostrazione.**

1. *Scelta della base di partenza.* Si vuole che le ultime colonne siano nulle, quindi gli ultimi vettori della base devono stare nel nucleo. Per la formula delle dimensioni, $\dim\ker F=n-r$. Si prende una base $v_{r+1},\dots,v_n$ di $\ker F$ e la si completa a una base di $V$:
   $$
   \mathcal{B}=(v_1,\dots,v_r,v_{r+1},\dots,v_n).
   $$

2. *I vettori $F(v_1),\dots,F(v_r)$ sono linearmente indipendenti.* Supponiamo di avere una combinazione nulla:
   $$
   \lambda_1F(v_1)+\cdots+\lambda_rF(v_r)=0 .
   $$
   Per linearità $F(\lambda_1v_1+\cdots+\lambda_rv_r)=0$, quindi $\lambda_1v_1+\cdots+\lambda_rv_r\in\ker F$. Allora questo vettore è combinazione di $v_{r+1},\dots,v_n$. Per l'indipendenza lineare di $\mathcal{B}$, tutti i coefficienti sono nulli, in particolare $\lambda_1=\cdots=\lambda_r=0$.

3. *Generano l'immagine.* $\operatorname{Im}F$ è generata da $F(v_1),\dots,F(v_n)$, e $F(v_{r+1})=\cdots=F(v_n)=0$. Quindi $F(v_1),\dots,F(v_r)$ generano $\operatorname{Im}F$, che ha dimensione $r$, e ne sono una base.

4. *Scelta della base di arrivo.* Si pone $w_i=F(v_i)$ per $i=1,\dots,r$ e si completa a una base di $W$:
   $$
   \mathcal{C}=(w_1,\dots,w_r,w_{r+1},\dots,w_m).
   $$

5. *Calcolo della matrice.* Per $i\le r$ si ha $[F(v_i)]_{\mathcal{C}}=e_i$, cioè coordinate $(0,\dots,1,\dots,0)$ con $1$ al posto $i$. Per $i>r$ si ha $[F(v_i)]_{\mathcal{C}}=0$. La matrice ha quindi la forma voluta. $\blacksquare$

**Corollario.** Due matrici $A,B\in M_{m\times n}(K)$ sono SD-equivalenti se e solo se hanno lo stesso rango.

*Motivazione.*

- Se $B=QAP$ con $Q$ e $P$ invertibili, $A$ e $B$ rappresentano la stessa applicazione rispetto a basi diverse. Quindi hanno lo stesso rango, che è il rango dell'applicazione.
- Viceversa, se entrambe hanno rango $r$, entrambe sono SD-equivalenti alla forma canonica $\begin{pmatrix} I_r & 0\\ 0&0\end{pmatrix}$. Si conclude perché la SD-equivalenza è una relazione di equivalenza.

Il rango è dunque l'unico invariante della SD-equivalenza: le classi sono determinate dal rango.

## 5. Endomorfismi e similitudine

### Cambiamento di base per un endomorfismo

Sia ora $F:V\to V$ un endomorfismo, con $\dim V=n$. In questo caso si usa la **stessa** base in partenza e in arrivo. Se $\mathcal{B}$ e $\mathcal{C}$ sono due basi di $V$, siano

$$
A=M_{\mathcal{B}}^{\mathcal{B}}(F),\qquad B=M_{\mathcal{C}}^{\mathcal{C}}(F).
$$

Il diagramma diventa

$$
(V,\mathcal{C}) \xrightarrow{\ \mathrm{id}\ } (V,\mathcal{B}) \xrightarrow{\ F\ } (V,\mathcal{B}) \xrightarrow{\ \mathrm{id}\ } (V,\mathcal{C}).
$$

Poniamo $P=M_{\mathcal{C}}^{\mathcal{B}}(\mathrm{id})\in GL_n(K)$. Per la formula sulla matrice dell'inversa, $M_{\mathcal{B}}^{\mathcal{C}}(\mathrm{id})=P^{-1}$, perché l'inversa dell'identità è l'identità. Si ottiene:

$$
B = P^{-1}AP,\qquad P\in GL_n(K).
$$

Tutte le matrici coinvolte sono quadrate di ordine $n=\dim V$.

### Definizione di matrici simili

Due matrici $A,B\in M_n(K)$ si dicono **simili** se esiste $P\in GL_n(K)$ tale che

$$
B=P^{-1}AP .
$$

Nel caso degli endomorfismi la relazione non si chiama più SD-equivalenza ma **similitudine**. Matrici associate allo stesso endomorfismo rispetto a basi diverse sono simili.

Anche la similitudine è una relazione di equivalenza. Per esempio, si può passare da $B$ ad $A$:

$$
A = (P^{-1})^{-1}\,B\,P^{-1} = P\,B\,P^{-1}.
$$

> [!warning]
> Il prodotto di matrici non è commutativo. In $P^{-1}AP$ non si possono spostare i fattori: $P^{-1}AP$ in generale è diverso da $A$.

### Invarianti per similitudine

**Il rango è invariante.** Matrici simili hanno lo stesso rango, perché rappresentano lo stesso endomorfismo, oppure perché la similitudine è un caso particolare di SD-equivalenza.

**Il rango non basta a determinare le classi.** L'identità è simile solo a se stessa, perché

$$
P^{-1}I_nP = I_n \qquad\forall P\in GL_n(K).
$$

Quindi una qualunque matrice invertibile diversa da $I_n$ ha rango $n$ come $I_n$, ma sicuramente non è simile a $I_n$. Servono altri invarianti.

### La traccia

Data $A=(a_{ij})\in M_n(K)$ quadrata, si definisce la **traccia** come la somma degli elementi diagonali:

$$
\operatorname{tr}(A)=\sum_{i=1}^n a_{ii}.
$$

È un numero.

**Lemma.** Per $A,B\in M_n(K)$ vale $\operatorname{tr}(AB)=\operatorname{tr}(BA)$.

*Dimostrazione.* L'elemento di posto $(i,i)$ di $AB$ è la riga $i$ di $A$ per la colonna $i$ di $B$, cioè $\sum_k a_{ik}b_{ki}$. Quindi:

$$
\operatorname{tr}(AB)=\sum_{i=1}^n\sum_{k=1}^n a_{ik}b_{ki},
\qquad
\operatorname{tr}(BA)=\sum_{k=1}^n\sum_{i=1}^n b_{ki}a_{ik}.
$$

Gli indici sono muti e si possono chiamare come si vuole. Gli addendi sono prodotti di numeri del campo, che commutano, e si possono scambiare le somme finite. Le due espressioni coincidono. $\blacksquare$

**Corollario (la traccia è invariante per similitudine).** Per ogni $P\in GL_n(K)$,

$$
\operatorname{tr}(P^{-1}AP)=\operatorname{tr}(A).
$$

*Dimostrazione.* Si usa l'associatività e si applica il lemma alle matrici $P^{-1}$ e $AP$:

$$
\operatorname{tr}\big(P^{-1}(AP)\big)=\operatorname{tr}\big((AP)P^{-1}\big)=\operatorname{tr}\big(A(PP^{-1})\big)=\operatorname{tr}(A). \qquad\blacksquare
$$

Matrici con traccia diversa non sono quindi simili. Come conseguenza, si può definire la traccia di un endomorfismo come la traccia di una qualsiasi sua matrice associata: non dipende dalla base scelta.

## 6. Lo spazio quoziente

> [!warning] Sezione ricostruita
> Nella registrazione si sentono solo frammenti di fine lezione: "si definisce l'insieme … delle classi di equivalenza di una certa relazione", "viene partizionato in classi". Che la relazione sia $v - w \in U$ e che si tratti dello spazio quoziente $V/U$ è un'interpretazione, compatibile con quei frammenti ma non confermata dall'audio. Verifica su appunti o libro.

### Costruzione

Siano $V$ uno spazio vettoriale e $U\subseteq V$ un sottospazio. Si definisce su $V$ la relazione

$$
v\sim w \iff v-w\in U .
$$

**È una relazione di equivalenza.**

- *Riflessiva:* $v-v=0\in U$.
- *Simmetrica:* se $v-w\in U$, allora $w-v=-(v-w)\in U$.
- *Transitiva:* se $v-w\in U$ e $w-z\in U$, allora $v-z=(v-w)+(w-z)\in U$.

Lo spazio $V$ viene così partizionato in classi di equivalenza. La classe di $v$ è

$$
[v]=v+U=\{v+u : u\in U\},
$$

cioè il traslato del sottospazio $U$ che passa per $v$. Si definisce l'insieme quoziente

$$
V/U=\{\,v+U : v\in V\,\},
$$

l'insieme delle classi di equivalenza.

### Operazioni

Su $V/U$ si definiscono:

$$
[v]+[w]=[v+w],\qquad \lambda[v]=[\lambda v]\quad(\lambda\in K).
$$

**Buona definizione.** Bisogna verificare che il risultato non cambia se si cambiano i rappresentanti delle classi. Siano $v'\sim v$ e $w'\sim w$, cioè $v'=v+u_1$ e $w'=w+u_2$ con $u_1,u_2\in U$. Allora:

$$
v'+w'=(v+w)+(u_1+u_2),\qquad u_1+u_2\in U,
$$

quindi $v'+w'$ sta nella stessa classe di $v+w$. Analogamente:

$$
\lambda v'=\lambda v+\lambda u_1,\qquad \lambda u_1\in U .
$$

La classe del risultato non cambia.

**Struttura di spazio vettoriale.** Con queste operazioni $V/U$ è uno spazio vettoriale.

- Lo zero è la classe $[0]=0+U=U$.
- L'opposto di una classe $[u]$ è $[-u]=-u+U$.
- Gli altri assiomi seguono da quelli di $V$.