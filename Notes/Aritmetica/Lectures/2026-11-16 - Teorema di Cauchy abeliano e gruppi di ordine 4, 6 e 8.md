---
type: lecture-note
course: Aritmetica
date: '2026-11-16'
title: Teorema di Cauchy abeliano e gruppi di ordine 4, 6 e 8
source_files:
- 16_11_26.pdf
teaching_model: anthropic/claude-opus-5.5
---

# Teorema di Cauchy abeliano e gruppi di ordine 4, 6 e 8

Lezione di lunedì 16 novembre, ricostruita dagli appunti scritti a mano (`16_11_26.pdf`, 10 pagine, la prima è la copertina). Per questa lezione non c'è una trascrizione. La lezione riparte dal teorema fondamentale di omomorfismo della [[2026-11-11 - Quozienti, classi laterali e teoremi di isomorfismo|lezione dell'11 novembre]] e lo applica ai gruppi ciclici. Poi dimostra il teorema di Cauchy per i gruppi abeliani e lo usa per classificare i gruppi di ordine $4$ e $6$. Chiude con i gruppi di ordine $8$ e un esercizio per casa.

> [!note] Integrazioni
> Gli appunti sono in parte schematici. I passaggi aggiunti per completare un ragionamento sono segnalati come *aggiunta*. Il resto segue gli appunti, con i conti ricontrollati.

## 1. Fattorizzazione di un omomorfismo

Dal teorema fondamentale di omomorfismo: ogni omomorfismo $f : G \to G'$ si **fattorizza** come una proiezione seguita da un omomorfismo iniettivo,

$$
f = \varphi \circ \pi, \qquad \pi : G \twoheadrightarrow G/\ker f, \qquad \varphi : G/\ker f \hookrightarrow G' .
$$

$\pi$ è suriettiva, $\varphi$ è iniettiva e ha la stessa immagine di $f$. Se $f$ è suriettiva, $\varphi$ è un **isomorfismo** $G/\ker f \cong G'$.

## 2. Applicazione ai gruppi ciclici

Si vuole capire quando esiste un omomorfismo

$$
\mathbb Z/n\mathbb Z \to G, \qquad \bar 1 \mapsto g .
$$

La condizione, già vista nella [[(ex) 2026-11-09 - Omomorfismi da gruppi ciclici, automorfismi e prodotti diretti|esercitazione del 9 novembre]], è

$$
\operatorname{ord} g \mid n = \operatorname{ord} \bar 1 .
$$

Qui la si ricava dal teorema fondamentale, vedendo $\mathbb Z/n\mathbb Z$ come **quoziente di $\mathbb Z$**. Si parte da

$$
f : \mathbb Z \to G, \qquad f(k) = g^k ,
$$

che è sempre un omomorfismo. Il suo nucleo è

$$
\ker f = \{ k \in \mathbb Z \mid f(k) = g^k = e \}.
$$

Poiché $\mathbb Z$ è abeliano, tutti i suoi sottogruppi sono normali, quindi ha senso quozientare per $n\mathbb Z$. Per il teorema fondamentale, esiste $\varphi : \mathbb Z/n\mathbb Z \to G$ con $\varphi \circ \pi = f$ (il diagramma commuta) se e solo se $n\mathbb Z \subseteq \ker f$. Basta controllare il generatore $n$:

$$
f(n) = e \iff g^n = e \iff \operatorname{ord} g \mid n .
$$

In tal caso $\varphi([1]_n) = \varphi(\pi(1)) = f(1) = g$, e $\varphi$ ha la stessa immagine di $f$, cioè $\langle g \rangle$.

**Perché la condizione è necessaria.** Il nucleo di $\pi$ è $\ker \pi = n\mathbb Z$, quindi $\pi(n) = [n]_n = \bar 0$. Se il diagramma commuta, deve valere

$$
f(n) = \varphi(\pi(n)) = \varphi(\bar 0) = e ,
$$

cioè $g^n = e$.

> [!tip] Conseguenza *(aggiunta)*
> Il nucleo di $f$ è esattamente $(\operatorname{ord} g)\mathbb Z$. Con $n = \operatorname{ord} g$, la $\varphi$ è iniettiva e dal primo teorema di isomorfismo
> $$\mathbb Z/(\operatorname{ord} g)\mathbb Z \cong \langle g \rangle .$$
> Ogni gruppo ciclico di ordine $n$ è quindi isomorfo a $\mathbb Z/n\mathbb Z$.

## 3. Sottogruppi e quozienti dei gruppi ciclici

In $\mathbb Z/n\mathbb Z$, per ogni $d \mid n$ c'è un unico sottogruppo di ordine $d$:

$$
H_d = \left\langle \overline{n/d} \right\rangle = \frac{n}{d}\mathbb Z \Big/ n\mathbb Z .
$$

**Esempio.** In $\mathbb Z/100\mathbb Z$, il sottogruppo di ordine $4$ è

$$
H_4 = \left\langle \overline{100/4} \right\rangle = \langle \overline{25} \rangle = 25\mathbb Z/100\mathbb Z = \{\bar 0, \overline{25}, \overline{50}, \overline{75}\}.
$$

Si sapeva già che **ogni sottogruppo di un gruppo ciclico è ciclico**. Si dimostra anche che **ogni quoziente di un gruppo ciclico è ciclico**, con il secondo teorema di omomorfismo $(G/H)/(K/H) \cong G/K$:

$$
\frac{\mathbb Z/100\mathbb Z}{25\mathbb Z/100\mathbb Z} \cong \mathbb Z/25\mathbb Z ,
\qquad\text{e in generale}\qquad
\frac{\mathbb Z/n\mathbb Z}{\frac nd\mathbb Z/n\mathbb Z} \cong \mathbb Z\Big/\frac nd\mathbb Z .
$$

Si applica il teorema con $G = \mathbb Z$, $H = n\mathbb Z \subseteq K = \frac nd \mathbb Z$. I conti tornano: $|H_d| = d$, quindi il quoziente ha $n/d$ elementi.

> [!tip] Argomento diretto *(aggiunta)*
> Se $G = \langle g \rangle$ e $N \trianglelefteq G$, ogni classe è $g^kN = (gN)^k$, quindi $G/N = \langle gN \rangle$ è ciclico.

## 4. Teorema di Cauchy (caso abeliano)

**Teorema.** Siano $G$ un gruppo **abeliano** finito e $p$ un primo con $p \mid |G|$, cioè $|G| = pn$. Allora esiste $x \in G$ con $\operatorname{ord} x = p$.

Il teorema vale anche per i gruppi non abeliani, ma la dimostrazione qui sotto usa il quoziente per $\langle x \rangle$, che in generale non è normale.

### Dimostrazione

Per induzione forte (seconda forma) su $n$.

**Passo base $n = 1$.** $|G| = p$. Per Lagrange l'ordine di ogni elemento divide $p$, quindi ogni $x \in G \setminus \{e\}$ ha ordine $p$.

**Passo induttivo $n > 1$.** Si prende $x \in G \setminus \{e\}$ e si distinguono due casi.

- **$p \mid |\langle x \rangle|$.** Allora $\langle x \rangle$ è ciclico di ordine un multiplo di $p$ e ammette un elemento di ordine $p$: se $\operatorname{ord} x = pk$, allora $\operatorname{ord} x^k = p$.

- **$p \nmid |\langle x \rangle|$.** Poiché $G$ è abeliano, $\langle x \rangle$ è normale e si può considerare il quoziente:
  $$
  |G/\langle x \rangle| = \frac{|G|}{|\langle x \rangle|} = \frac{np}{|\langle x \rangle|} = pm .
  $$
  Qui $m = n/|\langle x\rangle|$ è intero perché $|\langle x\rangle|$ divide $pn$ ed è primo con $p$. Inoltre $m < n$ perché $x \ne e$, quindi $|\langle x \rangle| > 1$. Il quoziente $G/\langle x\rangle$ è ancora abeliano, quindi per ipotesi induttiva ha un elemento $\bar y$ di ordine $p$.

  Sia $\pi : G \to G/\langle x \rangle$, $y \mapsto \bar y$, la proiezione (suriettiva), e sia $y$ un rappresentante di $\bar y$. L'ordine dell'immagine divide l'ordine dell'elemento, quindi
  $$
  p = \operatorname{ord} \bar y = \operatorname{ord} \pi(y) \mid \operatorname{ord} y .
  $$
  Allora $y$ ha ordine un multiplo di $p$. Se $\operatorname{ord} y = ph$, si conclude $\operatorname{ord} y^h = p$. $\square$

### Il viceversa di Lagrange è falso

Cauchy garantisce elementi di ordine $p$ per i divisori **primi** di $|G|$, non per tutti i divisori.

**Esempio.** $G = \mathbb Z/4\mathbb Z \times \mathbb Z/4\mathbb Z$ ha ordine $16$, quindi $8 \mid |G|$, ma $G$ non ha elementi di ordine $8$. Per $(a,b) \in G$, con $\operatorname{ord} a = 2^\alpha$ e $\operatorname{ord} b = 2^\beta$, dove $0 \le \alpha, \beta \le 2$:

$$
\operatorname{ord}(a,b) = [\operatorname{ord} a, \operatorname{ord} b] = [2^\alpha, 2^\beta] = 2^\gamma, \qquad \gamma = \max\{\alpha, \beta\} \le 2 .
$$

Quindi ogni elemento ha ordine al più $4$.

## 5. Classificazione dei gruppi di ordine 4

**Teorema.** Un gruppo di ordine $4$ è isomorfo a $\mathbb Z/4\mathbb Z$ oppure a $\mathbb Z/2\mathbb Z \times \mathbb Z/2\mathbb Z$.

Per Lagrange gli ordini possibili sono $1, 2, 4$.

- **Esiste $g$ con $\operatorname{ord} g = 4$.** Allora $g$ genera $G$, quindi $G$ è ciclico e $G \cong \mathbb Z/4\mathbb Z$.
- **Ogni $g \ne e$ ha ordine $2$.** Allora $G$ è abeliano, come dimostrato la volta scorsa ([[2026-11-11 - Quozienti, classi laterali e teoremi di isomorfismo|esercizio 1 dell'11/11]]). Scritto $G = \{e, x, y, z\}$, la tabella moltiplicativa è forzata:

| $\cdot$ | $e$ | $x$ | $y$ | $z$ |
|---|---|---|---|---|
| $e$ | $e$ | $x$ | $y$ | $z$ |
| $x$ | $x$ | $e$ | $z$ | $y$ |
| $y$ | $y$ | $z$ | $e$ | $x$ |
| $z$ | $z$ | $y$ | $x$ | $e$ |

La diagonale è fatta di $e$ perché ogni elemento ha ordine $2$. Poi $xy$ non può essere $e$ (sarebbe $y = x^{-1} = x$) e non può essere $x$ o $y$ per la **legge di cancellazione** (da $xy = x$ seguirebbe $y = e$). Quindi $xy = z$, e così via per le altre caselle: in ogni riga e in ogni colonna ogni elemento compare una sola volta.

Per dire che questa tabella definisce davvero un gruppo bisogna verificare anche l'associatività (gli appunti: «devo vedere associatività»). Qui basta osservare che è la tabella di $\mathbb Z/2\mathbb Z \times \mathbb Z/2\mathbb Z$, con $x, y, z \leftrightarrow (1,0), (0,1), (1,1)$.

**Conclusione.** La tabella moltiplicativa è unica, quindi **a meno di isomorfismo c'è un unico gruppo non ciclico di ordine $4$**, cioè $\mathbb Z/2\mathbb Z \times \mathbb Z/2\mathbb Z$.

## 6. Classificazione dei gruppi di ordine 6

I due modelli sono $\mathbb Z/6\mathbb Z$ e

$$
S_3 = \{ e, \sigma, \sigma^2, \tau, \sigma\tau, \sigma^2\tau \},
\qquad \operatorname{ord}\sigma = 3,\quad \operatorname{ord}\tau = 2,
$$

con le relazioni

$$
\tau\sigma = \sigma^2\tau, \qquad \tau\sigma^2 = \sigma\tau .
$$

Negli appunti l'elenco salta $\tau$, ma è chiaramente un elemento di $S_3$. Si veda la [[2026-10-28 - Gruppi ciclici, sottogruppi e permutazioni|lezione del 28 ottobre]] per $\sigma = (1\ 2\ 3)$ e $\tau = (1\ 2)$.

**Teorema.** Ogni gruppo di ordine $6$ è isomorfo a $\mathbb Z/6\mathbb Z$ se è ciclico, a $S_3$ se non è ciclico.

### Caso abeliano: $G$ è ciclico

Per Cauchy (abeliano), con $6 = 2 \cdot 3$, esistono $x, y \in G$ con

$$
\operatorname{ord} x = 3, \qquad \operatorname{ord} y = 2 .
$$

**Si mostra che $\operatorname{ord}(xy) = 6$**, quindi $G$ è ciclico. Poiché $G$ è abeliano,

$$
(xy)^k = \underbrace{(xy)\cdots(xy)}_{k \text{ volte}} = x^k y^k .
$$

Con $k = 6$: $(xy)^6 = x^6 y^6 = e \cdot e = e$, quindi $\operatorname{ord}(xy) \mid 6$ e i casi sono $1, 2, 3, 6$. Si escludono i primi tre:

- **$\operatorname{ord}(xy) = 2$:** $e = (xy)^2 = x^2 y^2 = x^2$, assurdo perché $\operatorname{ord} x = 3$.
- **$\operatorname{ord}(xy) = 3$:** $e = (xy)^3 = x^3 y^3 = e \cdot y = y$, assurdo.
- **$\operatorname{ord}(xy) = 1$:** $xy = e$, cioè $x = y^{-1} = y$, assurdo perché $x$ e $y$ hanno ordini diversi.

Quindi un gruppo abeliano di ordine $6$ è ciclico, cioè $G \cong \mathbb Z/6\mathbb Z$.

### Caso non abeliano: $G \cong S_3$

Questo caso, negli appunti, è «meno semplice».

**Passo 1: esiste $x$ di ordine $3$.** Per Lagrange gli ordini possibili sono $1, 2, 3, 6$. Non ci sono elementi di ordine $6$, altrimenti $G$ sarebbe ciclico e quindi abeliano. Non possono avere tutti ordine $2$, altrimenti $G$ sarebbe abeliano (esercizio 1 dell'11/11). Quindi esiste $x \in G$ con $\operatorname{ord} x = 3$, e $\langle x \rangle = \{e, x, x^2\}$.

**Passo 2: esiste $y$ di ordine $2$.** Gli appunti provano a scrivere $G = \{e, x, x^2, y, y^2, z\}$ con $y \in G \setminus \langle x \rangle$ e chiedono se $y^2$ sia un elemento nuovo. Il conto fatto è questo: se $\operatorname{ord} y = 3$, allora $\langle y \rangle = \{e, y, y^2\}$ e $y^2 \ne e$. Inoltre $y^2 \notin \langle x \rangle$:

- se $y^2 = x$, allora $y = y^4 = x^2 \in \langle x \rangle$, no;
- se $y^2 = x^2$, allora $y = y^4 = x^4 = x \in \langle x \rangle$, no.

Gli appunti si fermano a «$z^2 = ?$». *Completamento (aggiunta):* fuori da $\langle x \rangle$ ci sono $3$ elementi. Per il conto appena fatto, quelli di ordine $3$ vanno a coppie $\{y, y^2\}$, entrambe fuori da $\langle x \rangle$. Siccome $3$ è dispari, almeno uno dei tre non ha ordine $3$, e allora ha ordine $2$. (In alternativa: gli elementi con $g \ne g^{-1}$ vanno a coppie $\{g, g^{-1}\}$, quindi in un gruppo di ordine pari c'è sempre un elemento di ordine $2$.)

**Passo 3: gli elementi di $G$.** Con $\operatorname{ord} x = 3$ e $\operatorname{ord} y = 2$, si ha $y \notin \langle x \rangle$, quindi la classe $\langle x \rangle y$ è disgiunta da $\langle x \rangle$ e

$$
G = \{ e, x, x^2, y, xy, x^2y \}.
$$

**Passo 4: la relazione $yx = x^2y$ (tesi).** Si vede quale dei sei elementi può essere $yx$:

- $yx = e$: allora $y = x^{-1} \in \langle x \rangle$, no.
- $yx = x$: allora $y = e$, no.
- $yx = x^2$: allora $y = x \in \langle x \rangle$, no.
- $yx = y$: allora $x = e$, no.
- $yx = xy$: no, perché il gruppo sarebbe abeliano (vedi sotto).

Resta $yx = x^2 y$.

Perché $xy = yx$ renderebbe $G$ abeliano: $x$ commuterebbe con $e, x, x^2, y$, quindi il **centralizzatore** $Z_G(x) = \{g \in G \mid gx = xg\}$, che è un sottogruppo, avrebbe almeno $4$ elementi. Per Lagrange $|Z_G(x)| \mid 6$, quindi $|Z_G(x)| = 6$ e $x \in Z(G)$. Per esempio $x(xy) = x(yx) = (xy)x$, e analogamente $x(x^2y) = (x^2y)x$ (lasciato come esercizio negli appunti). Lo stesso vale per $y$. Allora $x, y \in Z(G)$ e

$$
3 = \operatorname{ord} x \mid |Z(G)|, \qquad 2 = \operatorname{ord} y \mid |Z(G)| ,
$$

quindi $|Z(G)| = 6$, cioè $G = Z(G)$ è abeliano: assurdo.

**Passo 5: l'isomorfismo.** La mappa

$$
x \mapsto \sigma, \quad x^2 \mapsto \sigma^2, \quad y \mapsto \tau, \quad xy \mapsto \sigma\tau, \quad x^2y \mapsto \sigma^2\tau
$$

manda la relazione $yx = x^2y$ in $\tau\sigma = \sigma^2\tau$. In entrambi i gruppi il prodotto di due elementi qualsiasi si calcola solo con le regole $x^3 = e$, $y^2 = e$, $yx = x^2y$, quindi le due tabelle moltiplicative si corrispondono e $G \cong S_3$. Negli appunti la riga $xy \mapsto \sigma\tau$ compare due volte: la seconda è evidentemente $x^2y \mapsto \sigma^2\tau$.

## 7. Gruppi di ordine 8

I gruppi abeliani di ordine $8$ sono i prodotti di ciclici

$$
\mathbb Z/8\mathbb Z, \qquad \mathbb Z/4\mathbb Z \times \mathbb Z/2\mathbb Z, \qquad \mathbb Z/2\mathbb Z \times \mathbb Z/2\mathbb Z \times \mathbb Z/2\mathbb Z .
$$

Un esempio **non abeliano**: il gruppo delle simmetrie del quadrato (il gruppo diedrale), cioè dei movimenti che mandano il quadrato in sé. Ha $8$ elementi: **$4$ rotazioni** (di $0°, 90°, 180°, 270°$) e **$4$ simmetrie** rispetto agli assi (le due mediane e le due diagonali).

**Conteggio.** Si numerano i vertici $1, 2, 3, 4$ in ordine lungo il bordo.

- Il vertice $1$ può andare in uno qualsiasi dei $4$ vertici, diciamo $i$.
- Il vertice $2$ è adiacente a $1$, quindi deve andare in un vertice adiacente all'immagine di $1$: $i+1$ oppure $i-1 \pmod 4$. Sono $2$ possibilità.
- A quel punto le immagini di $3$ e $4$ sono obbligate.

In tutto $4 \cdot 2 = 8$ elementi. Il gruppo **non è abeliano**. *Verifica (aggiunta):* con $r$ la rotazione di $90°$ e $s$ una simmetria, vale $sr = r^{-1}s \ne rs$, perché $r^{-1} \ne r$.

> [!note] Completezza *(aggiunta)*
> Gli appunti non dicono se l'elenco è completo. I tre gruppi abeliani sono tutti quelli di ordine $8$ a meno di isomorfismo. I gruppi non abeliani di ordine $8$ sono due: il gruppo diedrale del quadrato e il gruppo dei quaternioni $Q_8$, che a lezione non compare.

## 8. Esercizio per casa

Nel gruppo

$$
G = \mathbb Z/2\mathbb Z \times \mathbb Z/8\mathbb Z \times \mathbb Z/16\mathbb Z
$$

contare gli elementi di ordine $2$ e di ordine $4$, e i sottogruppi di ordine $2$ e di ordine $4$.

**Impostazione dagli appunti** per gli elementi di ordine $4$, con inclusione-esclusione su $(a, b, c)$. Poiché $\operatorname{ord}(a,b,c) = [\operatorname{ord} a, \operatorname{ord} b, \operatorname{ord} c]$ e $\operatorname{ord} a \mid 2$ sempre, $a$ è qualsiasi e si conta

$$
\#\{\operatorname{ord} b = 4,\ \operatorname{ord} c \mid 4\} + \#\{\operatorname{ord} b \mid 4,\ \operatorname{ord} c = 4\} - \#\{\operatorname{ord} b = \operatorname{ord} c = 4\}.
$$

> [!tip]- Svolgimento *(aggiunta)*
> **Elementi.** In $\mathbb Z/m\mathbb Z$, con $d \mid m$, gli elementi di ordine che divide $d$ sono $d$, quelli di ordine esattamente $d$ sono $\varphi(d)$.
>
> - *Ordine $2$.* Gli elementi con ordine che divide $2$ hanno ogni componente di ordine che divide $2$: $2 \cdot 2 \cdot 2 = 8$. Togliendo l'identità, ci sono **$7$ elementi di ordine $2$**.
> - *Ordine $4$.* In $\mathbb Z/8$ e in $\mathbb Z/16$ ci sono $4$ elementi di ordine che divide $4$ e $\varphi(4) = 2$ di ordine esattamente $4$. Con la formula degli appunti:
>   $$2\cdot(2\cdot 4) + 2\cdot(4\cdot 2) - 2\cdot(2\cdot 2) = 16 + 16 - 8 = 24 .$$
>   Controllo: gli elementi con ordine che divide $4$ sono $2 \cdot 4 \cdot 4 = 32$, e $32 - 8 = 24$. Ci sono **$24$ elementi di ordine $4$**.
>
> **Sottogruppi.**
>
> - *Ordine $2$.* Ogni sottogruppo di ordine $2$ è generato dal suo unico elemento di ordine $2$, quindi ci sono **$7$ sottogruppi**.
> - *Ordine $4$, ciclici.* Con la formula dell'11/11, sono $24/\varphi(4) = 12$.
> - *Ordine $4$, non ciclici* ($\cong \mathbb Z/2 \times \mathbb Z/2$). Sono formati da $e$ e da tre elementi di ordine $2$, quindi stanno dentro $\{g \mid 2g = 0\} \cong (\mathbb Z/2\mathbb Z)^3$. Lì ce ne sono $\frac{7 \cdot 6}{3 \cdot 2} = 7$: si sceglie una coppia ordinata di elementi distinti di ordine $2$, e ogni sottogruppo viene contato $3 \cdot 2$ volte.
> - In totale ci sono **$12 + 7 = 19$ sottogruppi di ordine $4$**, se l'esercizio intende tutti i sottogruppi e non solo quelli ciclici.
