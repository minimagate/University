---
type: lecture-note
course: Geometria 1
date: '2026-11-13'
title: Conseguenze del teorema rango-nullità, restrizioni e cambiamenti di base
source_files:
- 13_11_26.pdf
teaching_model: anthropic/claude-opus-5.5
---

# Conseguenze del teorema rango-nullità, restrizioni e cambiamenti di base

Lezione di venerdì 13 novembre, ricostruita dagli appunti scritti a mano (`13_11_26.pdf`, 10 pagine). Prosegue il lavoro sulle applicazioni lineari della [[2026-11-04 - Applicazioni lineari e matrici associate|lezione del 4 novembre]] (teorema rango-nullità, matrice associata, spazi di applicazioni con vincoli), mette in pratica la formula del cambiamento di base della [[2026-11-12 - Matrici associate, cambiamenti di base e similitudine|lezione del 12 novembre]] e completa l'esercizio sulla matrice di $F|_U$ lasciato a metà nella [[2026-11-10 - Forma a scala e sottospazi associati|lezione del 10 novembre]].

**Notazione.** Per $F : V \to W$, con $\mathcal B$ base di $V$ e $\mathcal E$ base di $W$, $[F]^{\mathcal B}_{\mathcal E}$ è la matrice che ha per colonne le coordinate in $\mathcal E$ delle immagini dei vettori di $\mathcal B$: base di partenza in alto, base di arrivo in basso. La formula fondamentale è

$$
[F(v)]_{\mathcal E} = [F]^{\mathcal B}_{\mathcal E}\,[v]_{\mathcal B}.
$$

> [!note] Correzioni rispetto agli appunti
> Tutti i conti sono stati ricontrollati. Tre punti degli appunti contengono sviste, segnalate nel testo dove compaiono: il piano dell'esercizio in §5, il riquadro $A^3 = -A^1 + A^2$ (sempre in §5) e la formula finale $\dim\mathcal J = (m-\ell)m$ in §4.

## 1. Conseguenze del teorema rango-nullità

Sia $F : V \to W$ lineare con $V$ di dimensione finita. Il punto di partenza è sempre

$$
\dim V = \dim \ker F + \dim \operatorname{Im} F .
$$

**Iniettiva $\Rightarrow \dim V \le \dim W$.** Se $F$ è iniettiva, $\ker F = \{0\}$, quindi

$$
\dim V = \underbrace{\dim \ker F}_{=0} + \dim \operatorname{Im} F = \dim \operatorname{Im} F \le \dim W,
$$

perché $\operatorname{Im} F \subseteq W$. Il viceversa è falso: $\dim V \le \dim W$ non basta a rendere $F$ iniettiva (per esempio, l'applicazione nulla).

**Suriettiva $\Rightarrow \dim V \ge \dim W$.** Se $F$ è suriettiva, $\operatorname{Im} F = W$, quindi

$$
\dim V = \dim \ker F + \dim W \ge \dim W.
$$

Anche qui il viceversa è falso.

**Isomorfismo $\Rightarrow \dim V = \dim W$.** Basta combinare i due punti precedenti.

### Il caso $\dim V = \dim W$ (finita)

> [!important] Proposizione
> Se $F : V \to W$ è lineare e $\dim V = \dim W < \infty$, allora
> $$ F \text{ iniettiva} \iff F \text{ suriettiva} \iff F \text{ isomorfismo}. $$

*Dimostrazione.* $F$ è iniettiva $\iff \dim\ker F = 0 \iff \dim\operatorname{Im}F = \dim V = \dim W \iff \operatorname{Im}F = W$ (un sottospazio di $W$ con la stessa dimensione finita coincide con $W$) $\iff F$ è suriettiva. Iniettiva e suriettiva insieme significano isomorfismo. $\square$

In pratica, tra spazi della stessa dimensione basta verificare *una sola* delle due proprietà.

## 2. Un'applicazione iniettiva conserva l'indipendenza lineare

**Esercizio.** Sia $F : V \to W$ iniettiva e siano $v_1, \dots, v_n \in V$ linearmente indipendenti. Allora $F(v_1), \dots, F(v_n)$ sono linearmente indipendenti.

*Dimostrazione.* Supponiamo $\sum_i \lambda_i F(v_i) = 0$. Per linearità $F\left(\sum_i \lambda_i v_i\right) = 0$, cioè $\sum_i \lambda_i v_i \in \ker F = \{0\}$. Quindi $\sum_i \lambda_i v_i = 0$, e per l'indipendenza dei $v_i$ si ha $\lambda_i = 0$ per ogni $i$. $\square$

## 3. Restrizione a un sottospazio

Sia $F : V \to W$ lineare e $U \subseteq V$ un sottospazio. La **restrizione** è

$$
F|_U : U \to W, \qquad u \mapsto F(u),
$$

ed è lineare. La sua immagine è l'immagine di $U$:

$$
\operatorname{Im} F|_U = \{F|_U(u) \mid u \in U\} = \{F(u) \mid u \in U\} = F(U).
$$

Il suo nucleo è fatto dai vettori di $U$ che $F$ annulla:

$$
\ker F|_U = \ker F \cap U .
$$

Applicando il teorema rango-nullità a $F|_U$ (lo spazio di partenza ora è $U$):

$$
\dim U = \dim(\ker F \cap U) + \dim F(U)
\qquad\Longrightarrow\qquad
\boxed{\dim F(U) = \dim U - \dim(\ker F \cap U)}.
$$

In particolare, se $F$ è iniettiva anche $F|_U$ lo è, e $\dim F(U) = \dim U$.

## 4. Esempio: matrice della restrizione e cambiamento di base

### Dati

$$
F : \mathbb R^3 \to \mathbb R^3, \qquad
F\begin{pmatrix} x\\ y\\ z\end{pmatrix} = \begin{pmatrix} 2x - y + z\\ x + y + z\\ y - z\end{pmatrix},
\qquad
U = \{x + y - z = 0\}.
$$

Si sceglie la base di $U$

$$
\mathcal B = \{u_1, u_2\}, \qquad u_1 = \begin{pmatrix}1\\0\\1\end{pmatrix},\quad u_2 = \begin{pmatrix}0\\1\\1\end{pmatrix}
$$

(entrambi soddisfano $x+y-z=0$, e $\dim U = 2$).

### Matrice rispetto a $\mathcal B$ e alla base canonica

$$
F(u_1) = \begin{pmatrix}3\\2\\-1\end{pmatrix}, \qquad F(u_2) = \begin{pmatrix}0\\2\\0\end{pmatrix}
\qquad\Longrightarrow\qquad
[F|_U]^{\mathcal B}_{can} = \begin{pmatrix} 3 & 0\\ 2 & 2\\ -1 & 0\end{pmatrix}.
$$

È una matrice $3 \times 2$: due colonne perché $\dim U = 2$, tre righe perché lo spazio d'arrivo è $\mathbb R^3$. Nella base canonica le coordinate di un vettore sono le sue componenti, quindi le colonne sono direttamente $F(u_1)$ e $F(u_2)$.

> [!tip] Verifica (aggiunta)
> La matrice di $F$ nella base canonica ha determinante $-4 \neq 0$, quindi $F$ è iniettiva e, per §3, $\dim F(U) = \dim U = 2$. Infatti le due colonne qui sopra sono indipendenti.

### Matrice rispetto a $\mathcal B$ e a un'altra base $\mathcal E$ di $\mathbb R^3$

Sia

$$
\mathcal E = \{v_1, v_2, v_3\}, \qquad v_1 = \begin{pmatrix}-1\\1\\0\end{pmatrix},\ v_2 = \begin{pmatrix}1\\0\\1\end{pmatrix},\ v_3 = \begin{pmatrix}0\\0\\1\end{pmatrix}.
$$

Le colonne di $[F|_U]^{\mathcal B}_{\mathcal E}$ sono $[F(u_1)]_{\mathcal E}$ e $[F(u_2)]_{\mathcal E}$: bisogna scrivere $F(u_j)$ come combinazione dei $v_i$.

**Prima colonna.** $\begin{pmatrix}3\\2\\-1\end{pmatrix} = \lambda_1 v_1 + \lambda_2 v_2 + \lambda_3 v_3 = \begin{pmatrix}-\lambda_1 + \lambda_2\\ \lambda_1\\ \lambda_2 + \lambda_3\end{pmatrix}$.
Dalla seconda coordinata $\lambda_1 = 2$; dalla prima $\lambda_2 = 5$; dalla terza $\lambda_3 = -6$.

**Seconda colonna.** $\begin{pmatrix}0\\2\\0\end{pmatrix}$: allo stesso modo $\lambda_1 = 2$, $\lambda_2 = 2$, $\lambda_3 = -2$.

$$
[F|_U]^{\mathcal B}_{\mathcal E} = \begin{pmatrix} 2 & 2\\ 5 & 2\\ -6 & -2\end{pmatrix}.
$$

Controllo sulla prima colonna: $2v_1 + 5v_2 - 6v_3 = (-2+5,\ 2,\ 5-6) = (3, 2, -1) = F(u_1)$. ✓

### Le basi sono ordinate: l'ordine conta

Se si usano gli stessi vettori in ordine diverso, $\mathcal E' = (v_1, v_3, v_2)$, la base è *diversa* e le righe della matrice si permutano di conseguenza:

$$
[F|_U]^{\mathcal B}_{\mathcal E'} = \begin{pmatrix} 2 & 2\\ -6 & -2\\ 5 & 2\end{pmatrix} \neq [F|_U]^{\mathcal B}_{\mathcal E}.
$$

### Secondo metodo: composizione con l'identità

La stessa matrice si ottiene senza risolvere sistemi per ogni colonna, componendo con l'identità:

$$
U \xrightarrow[\ \mathcal B \to can\ ]{F} \mathbb R^3 \xrightarrow[\ can \to \mathcal E\ ]{\mathrm{id}} \mathbb R^3 .
$$

Per la matrice della composizione, $[g\circ f]^{\mathcal B}_{\mathcal D} = [g]^{\mathcal E}_{\mathcal D}\,[f]^{\mathcal B}_{\mathcal E}$, si ha

$$
[F|_U]^{\mathcal B}_{\mathcal E} = [\mathrm{id}]^{can}_{\mathcal E}\,[F|_U]^{\mathcal B}_{can}.
$$

**La matrice di cambiamento di base.** La matrice "facile" è quella nella direzione opposta: $[\mathrm{id}]^{\mathcal E}_{can}$ ha per colonne i vettori di $\mathcal E$ scritti nella base canonica,

$$
[\mathrm{id}]^{\mathcal E}_{can} = \begin{pmatrix} -1 & 1 & 0\\ 1 & 0 & 0\\ 0 & 1 & 1\end{pmatrix}.
$$

Poiché $[\mathrm{id}]^{\mathcal E}_{can}\,[\mathrm{id}]^{can}_{\mathcal E} = [\mathrm{id}]^{can}_{can} = I_3$, la matrice cercata è l'inversa:

$$
[\mathrm{id}]^{can}_{\mathcal E} = \left([\mathrm{id}]^{\mathcal E}_{can}\right)^{-1}.
$$

Si calcola con le mosse di riga sulla matrice affiancata all'identità (metodo della [[2026-11-10 - Forma a scala e sottospazi associati#2. Calcolo della matrice inversa tramite mosse di riga|lezione del 10 novembre]]):

$$
\left(\begin{array}{ccc|ccc} -1 & 1 & 0 & 1 & 0 & 0\\ 1 & 0 & 0 & 0 & 1 & 0\\ 0 & 1 & 1 & 0 & 0 & 1 \end{array}\right)
\rightsquigarrow
\left(\begin{array}{ccc|ccc} -1 & 1 & 0 & 1 & 0 & 0\\ 0 & 1 & 0 & 1 & 1 & 0\\ 0 & 1 & 1 & 0 & 0 & 1 \end{array}\right)
\rightsquigarrow
\left(\begin{array}{ccc|ccc} -1 & 1 & 0 & 1 & 0 & 0\\ 0 & 1 & 0 & 1 & 1 & 0\\ 0 & 0 & 1 & -1 & -1 & 1 \end{array}\right)
\rightsquigarrow
\left(\begin{array}{ccc|ccc} 1 & 0 & 0 & 0 & 1 & 0\\ 0 & 1 & 0 & 1 & 1 & 0\\ 0 & 0 & 1 & -1 & -1 & 1 \end{array}\right)
$$

(mosse: $R_2 \leftarrow R_2 + R_1$; $R_3 \leftarrow R_3 - R_2$; $R_1 \leftarrow -(R_1 - R_2)$). Quindi

$$
[\mathrm{id}]^{can}_{\mathcal E} = \begin{pmatrix} 0 & 1 & 0\\ 1 & 1 & 0\\ -1 & -1 & 1\end{pmatrix},
$$

e si verifica che il prodotto con $[\mathrm{id}]^{\mathcal E}_{can}$ dà $I_3$. Infine

$$
[\mathrm{id}]^{can}_{\mathcal E}\,[F|_U]^{\mathcal B}_{can}
= \begin{pmatrix} 0 & 1 & 0\\ 1 & 1 & 0\\ -1 & -1 & 1\end{pmatrix}\begin{pmatrix} 3 & 0\\ 2 & 2\\ -1 & 0\end{pmatrix}
= \begin{pmatrix} 2 & 2\\ 5 & 2\\ -6 & -2\end{pmatrix},
$$

la stessa matrice di prima: **l'abbiamo trovata in due modi diversi**.

Lo stesso schema vale per qualsiasi catena $V \xrightarrow{f} W \xrightarrow{g} Z$ con basi $\mathcal B, \mathcal E, \mathcal D$:

$$
[g(f(v))]_{\mathcal D} = [g]^{\mathcal E}_{\mathcal D}\,[f]^{\mathcal B}_{\mathcal E}\,[v]_{\mathcal B}.
$$

## 5. Spazi di applicazioni con vincoli su nucleo e immagine

Riprende la [[2026-11-04 - Applicazioni lineari e matrici associate#10. Spazi di applicazioni con vincoli su nucleo e immagine|§10 della lezione del 4 novembre]]. Notazione: $\dim V = n$, $\dim W = m$, $U \subseteq V$ con $\dim U = \ell$. Fissate le basi $\mathcal B$ di $V$ ed $\mathcal E$ di $W$, la mappa $f \mapsto [f]^{\mathcal B}_{\mathcal E}$ è un isomorfismo $\mathcal L(V,W) \cong M_{m,n}(\mathbb K)$.

### Applicazioni che annullano $U$

$$
\mathcal J = \{F \in \mathcal L(V,W) \mid \ker F \supseteq U\}, \qquad \dim\mathcal J = ?
$$

**È un sottospazio.** $0 \in \mathcal J$; se $F_1, F_2 \in \mathcal J$ anche $F_1 + F_2$ annulla $U$; e $\lambda F_1 \in \mathcal J$.

**Base adattata.** Si prende una base $\mathcal D = \{v_1, \dots, v_\ell\}$ di $U$ e la si completa a una base $\mathcal B = \{v_1, \dots, v_\ell, v_{\ell+1}, \dots, v_n\}$ di $V$. Le prime $\ell$ colonne di $[F]^{\mathcal B}_{\mathcal E}$ sono $[F(v_1)]_{\mathcal E}, \dots, [F(v_\ell)]_{\mathcal E}$, e

$$
U \subseteq \ker F \iff F(v_1) = \dots = F(v_\ell) = 0 \iff
[F]^{\mathcal B}_{\mathcal E} = \Big(\ 0_{m\times \ell}\ \Big|\ A\ \Big), \quad A \in M_{m,\,n-\ell}(\mathbb K) \text{ qualsiasi}.
$$

L'isomorfismo manda quindi $\mathcal J$ esattamente sul sottospazio delle matrici della forma $(0 \mid *)$, che ha $m(n-\ell)$ entrate libere:

$$
\boxed{\dim \mathcal J = m\,(n - \ell)}.
$$

> [!warning] Svista negli appunti
> Negli appunti la riga finale è scritta $(m-\ell)\,m$; dal ragionamento (le colonne libere sono $n-\ell$) la dimensione corretta è $(n-\ell)\,m$.

### Esercizio: trovare una matrice con nucleo e immagine assegnati

Trovare $A \in M_{3,3}(\mathbb R)$ tale che, per $f_A : \mathbb R^3 \to \mathbb R^3$, $v \mapsto Av$,

$$
\ker f_A = \operatorname{Span}(e_1 + e_2 + e_3) = \operatorname{Span}\begin{pmatrix}1\\1\\1\end{pmatrix}, \qquad \operatorname{Im} f_A = \text{un piano assegnato}.
$$

**Metodo.** Scritta $A = (A^1 \mid A^2 \mid A^3)$ per colonne:

- $A\begin{pmatrix}1\\1\\1\end{pmatrix} = 0 \iff A^1 + A^2 + A^3 = 0 \iff A^3 = -A^1 - A^2$;
- $\operatorname{Im} f_A = \operatorname{Span}(A^1, A^2, A^3) = \operatorname{Span}(A^1, A^2)$, quindi basta prendere come $A^1, A^2$ una base del piano.

Con la base del piano usata negli appunti, $\left\langle (2,1,0),\ (-1,0,1)\right\rangle$:

$$
A = \begin{pmatrix} 2 & -1 & -1\\ 1 & 0 & -1\\ 0 & 1 & -1\end{pmatrix}.
$$

Ha rango 2 (le prime due colonne sono indipendenti), quindi $\dim\ker f_A = 1$ e il nucleo è esattamente $\operatorname{Span}(1,1,1)$. ✓

> [!warning] Sviste negli appunti
> - Il piano è scritto $\{x - 2y - z = 0\}$, ma $(-1, 0, 1)$ **non** vi appartiene ($-1 - 0 - 1 = -2$). I due vettori usati generano invece $\{x - 2y + z = 0\}$, e la matrice sopra risolve l'esercizio per quel piano. Se il piano corretto è proprio $x - 2y - z = 0$, una base è $(2,1,0),\ (1,0,1)$ e si ottiene $A = \begin{pmatrix} 2 & 1 & -3\\ 1 & 0 & -1\\ 0 & 1 & -1\end{pmatrix}$.
> - Il riquadro dice $A^3 = -A^1 + A^2$, ma da $A^1 + A^2 + A^3 = 0$ segue $A^3 = -A^1 - A^2$, che è quanto usato davvero nella matrice.

### Vincolo anche sull'immagine

Siano ora $U \subseteq V$ con $\dim U = \ell$ e $Z \subseteq W$ con $\dim Z = k$:

$$
\mathcal J = \{F \in \mathcal L(V,W) \mid \ker F \supseteq U,\ \operatorname{Im} F \subseteq Z\}, \qquad \dim\mathcal J = ?
$$

Si adattano entrambe le basi: $\mathcal B = \{v_1, \dots, v_\ell, v_{\ell+1}, \dots, v_n\}$ con $\{v_1,\dots,v_\ell\}$ base di $U$, ed $\mathcal E = \{w_1, \dots, w_k, w_{k+1}, \dots, w_m\}$ con $\{w_1, \dots, w_k\}$ base di $Z$. Allora:

- le prime $\ell$ colonne sono nulle ($U \subseteq \ker F$);
- ogni colonna è un vettore di $Z$, quindi le sue ultime $m - k$ coordinate sono nulle ($\operatorname{Im} F \subseteq Z$).

$$
[F]^{\mathcal B}_{\mathcal E} =
\left(\begin{array}{c|c}
0 & * \\ \hline
0 & 0
\end{array}\right)
\begin{array}{l} \}\,k \\ \}\,m-k \end{array},
\qquad * \in M_{k,\,n-\ell}(\mathbb K),
$$

con il blocco nullo di sinistra largo $\ell$ colonne e quello libero largo $n - \ell$. Quindi

$$
\boxed{\dim\mathcal J = k\,(n - \ell)}.
$$

Per $Z = W$ ($k = m$) si ritrova il caso precedente.

## 6. Esercizio 4.10: composizioni che possono essere isomorfismi

Siano $F : \mathbb C^3 \to \mathbb C^2$ e $g : \mathbb C^2 \to \mathbb C^3$ lineari. (Negli appunti $g$ compare prima come $\mathbb C^2 \to \mathbb C^2$, ma perché le composizioni abbiano senso deve essere $\mathbb C^2 \to \mathbb C^3$, come nei diagrammi successivi.)

**$F \circ g : \mathbb C^2 \to \mathbb C^2$ può essere un isomorfismo? Sì.** Basta un esempio:

$$
g\begin{pmatrix} z_1\\ z_2\end{pmatrix} = \begin{pmatrix} z_1\\ z_2\\ 0\end{pmatrix},
\qquad
F\begin{pmatrix} z_1\\ z_2\\ z_3\end{pmatrix} = \begin{pmatrix} z_1\\ z_2\end{pmatrix},
\qquad
F \circ g = \mathrm{id}_{\mathbb C^2}.
$$

**$g \circ F : \mathbb C^3 \to \mathbb C^3$ può essere un isomorfismo? No.** Gli appunti si fermano alle osservazioni $\operatorname{Im} g \neq \mathbb C^3$ e $\ker F \neq 0$, confrontando $\operatorname{Im}(g\circ F)$ e $\ker(g\circ F)$. Il ragionamento completo (esplicitato qui) è:

- $\operatorname{Im}(g \circ F) \subseteq \operatorname{Im} g$, e $\dim \operatorname{Im} g \le \dim \mathbb C^2 = 2 < 3$, quindi $g \circ F$ non è suriettiva;
- equivalentemente, $\dim\ker F = 3 - \dim\operatorname{Im}F \ge 3 - 2 = 1$, e $\ker F \subseteq \ker(g\circ F)$, quindi $g \circ F$ non è iniettiva.

In generale, una composizione che passa per uno spazio di dimensione più piccola ha rango al più quella dimensione.

## Esercizi assegnati

Dal testo di Martelli: **4.11, 4.12, 4.13, 4.15, 4.16** (il 4.10 è stato avviato in classe, §6).
