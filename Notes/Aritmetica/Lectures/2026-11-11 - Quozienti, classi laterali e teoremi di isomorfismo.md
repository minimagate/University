---
type: lecture-note
course: Aritmetica
date: 2026-11-11
title: Quozienti, classi laterali e teoremi di isomorfismo
source_transcript: _transcripts/Aritmetica/2026-11-11 - Quozienti, classi
  laterali e teoremi di isomorfismo.md
source_hash: sha256:6da66beb29e6b06ee2f1e60aba3b35163ed6539aa942a79b6fe8735ddb1326dd
teaching_model: anthropic/claude-opus-5.5
taught_at: 2026-11-12T10:44:46.400Z
---

# Quozienti, classi laterali e teoremi di isomorfismo

> [!warning] Nota sulla fonte
> Il materiale di partenza è in molti punti frammentario. Lo sviluppo che segue ricostruisce la struttura logica della lezione: classi laterali e fibre degli omomorfismi, gruppo quoziente, teorema fondamentale di omomorfismo, teoremi di isomorfismo, conteggi nei gruppi ciclici ed esercizi finali. I passaggi la cui ricostruzione è incerta sono segnalati esplicitamente.
>
> **Aggiornamento:** la nota è stata confrontata con gli appunti del corso (Del Corso, Bresciani, *Appunti personali del corso di Aritmetica 26/27*, Lez. 22 dell'11/11/2026, pp. 152–160). Gli appunti confermano la struttura e risolvono i punti prima incerti (§4, §6, esercizi). Negli appunti i teoremi si chiamano "primo, secondo e terzo **teorema di omomorfismo**".
>
> Gli appunti avvertono anche: «non faremo il teorema di corrispondenza tra sottogruppi, quindi quegli esercizi [del libro] vanno saltati».

## 1. Le fibre di un omomorfismo sono classi laterali del nucleo

### Impostazione

Siano $G, G'$ gruppi e $f : G \to G'$ un omomorfismo, con nucleo

$$
\ker f = \{ x \in G \mid f(x) = e_{G'} \}.
$$

Si chiama **fibra** (o controimmagine) di un punto $y$ dell'immagine l'insieme degli elementi del dominio che vengono mandati in $y$:

$$
f^{-1}(y) = \{ x \in G \mid f(x) = y \}, \qquad y \in \operatorname{Im} f .
$$

La mappa $f$ non è necessariamente iniettiva. Se lo è, ogni fibra contiene un solo punto; altrimenti le fibre contengono più elementi.

### Proposizione

Per $x, y \in G$:

$$
f(x) = f(y) \iff x^{-1}y \in \ker f \iff x\ker f = y \ker f .
$$

In altre parole, due elementi hanno la stessa immagine se e solo se appartengono alla stessa classe laterale del nucleo. Le fibre di $f$ sono quindi esattamente le classi laterali di $\ker f$ in $G$.

**Dimostrazione.**

$$
\begin{aligned}
f(x) = f(y) &\iff f(x)^{-1} f(y) = e_{G'} \\
&\iff f(x^{-1}) f(y) = e_{G'} \\
&\iff f(x^{-1} y) = e_{G'} \\
&\iff x^{-1}y \in \ker f .
\end{aligned}
$$

Dalla teoria delle classi laterali si ha $x^{-1}y \in \ker f \iff y \in x\ker f$. Le classi laterali sono le classi di una relazione di equivalenza: due classi o sono disgiunte o coincidono. Quindi $y \in x\ker f$ equivale a $x \ker f = y \ker f$. $\square$

> [!note]
> Nella lezione compare anche la forma con $x y^{-1}$, cioè con le classi laterali destre. Il nucleo è un sottogruppo normale, quindi classi laterali destre e sinistre coincidono e le due formulazioni sono equivalenti.

### Significato: gli omomorfismi sono "regolari"

Il professore ha insistito sul contenuto sostanziale del teorema: **gli omomorfismi non si comportano a caso**.

- Una funzione qualsiasi può mandare cinque elementi in un punto e un solo elemento in un altro, quindi le sue fibre possono avere cardinalità diverse.
- Per un omomorfismo, invece, tutte le fibre sono classi laterali dello stesso sottogruppo $\ker f$. Come già dimostrato, tutte le classi laterali di un sottogruppo hanno la stessa cardinalità. Quindi **tutte le fibre hanno la stessa cardinalità**, pari a $|\ker f|$.

Questo vale anche per gruppi infiniti, ma nel caso finito il fenomeno si visualizza meglio. Partendo dalla fibra dell'identità, cioè dal nucleo, la fibra di un altro punto dell'immagine è una classe laterale $x\ker f$, quella di un terzo punto è un'altra classe laterale, e così via.

> [!warning]
> Le fibre vanno considerate solo sui punti dell'**immagine**. Il codominio, per la struttura della funzione, "non conta nulla": può essere grande quanto si vuole, ma i punti fuori dall'immagine hanno fibra vuota.

Una conseguenza di conteggio, nel caso finito: $G$ è unione disgiunta delle fibre, che sono $|\operatorname{Im} f|$ e hanno tutte $|\ker f|$ elementi. Quindi

$$
|G| = |\ker f| \cdot |\operatorname{Im} f| .
$$

### Esempio

Sia $f : \mathbb{Z} \to \mathbb{Z}_3$ l'omomorfismo che associa a ogni intero la sua classe resto modulo $3$. Il nucleo è $3\mathbb{Z}$, cioè la classe di $0$. Le fibre sono le tre classi laterali:

$$
f^{-1}([0]) = 3\mathbb{Z}, \qquad f^{-1}([1]) = 1 + 3\mathbb{Z}, \qquad f^{-1}([2]) = 2 + 3\mathbb{Z}.
$$

Sono tutte classi laterali del nucleo e hanno tutte la stessa cardinalità.

## 2. Il gruppo quoziente

### Classi laterali e indice

Sia $N$ un sottogruppo di $G$. L'insieme delle classi laterali di $N$ in $G$ si ottiene prendendo gli elementi $g \in G$ e formando le classi $gN$. Molti elementi danno la stessa classe, quindi le classi sono "poche" rispetto agli elementi.

L'**indice** $[G:N]$ è stato definito come il numero delle classi laterali. Nel caso finito, poiché le classi hanno tutte cardinalità $|N|$ e formano una partizione di $G$,

$$
|G| = |N| \cdot [G:N].
$$

Su questo insieme vogliamo ora definire un'operazione che lo renda un gruppo.

### Collegamento con $\mathbb{Z}/n\mathbb{Z}$

La costruzione generalizza quanto già fatto per $\mathbb{Z}/n\mathbb{Z}$. Lì la somma di due classi si calcola prendendo dei rappresentanti, sommandoli e prendendo la classe del risultato. Ora si fa lo stesso per un gruppo qualsiasi, con un sottogruppo $N$ che deve essere **normale**: è esattamente l'ipotesi che fa funzionare la costruzione.

### Definizione dell'operazione

Sia $N \trianglelefteq G$. Sull'insieme $G/N$ delle classi laterali di $N$ definiamo

$$
(g_1 N)(g_2 N) := (g_1 g_2) N .
$$

Si prendono dei rappresentanti delle due classi, si moltiplicano in $G$ e si prende la classe laterale del prodotto.

L'intuizione proposta a lezione è quella dei "sacchetti". Ogni classe laterale è un sacchetto di elementi; si pesca a caso un elemento dal primo sacchetto e uno dal secondo, li si moltiplica e si guarda in quale sacchetto cade il prodotto. La domanda è se, pescando altri elementi, il prodotto cade sempre nello stesso sacchetto. Se la risposta fosse no, l'operazione non sarebbe definita.

> [!warning] Buona definizione
> Se si definisse l'operazione direttamente sulle classi, senza passare per i rappresentanti, non ci sarebbe nulla da verificare. Poiché la si definisce **tramite rappresentanti**, bisogna dimostrare che il risultato non dipende dalla scelta dei rappresentanti. Il professore ha sottolineato che queste verifiche sono facili, ma è importante scriverle.

### Proposizione (buona definizione)

Se $N \trianglelefteq G$, $x_1 \in g_1N$ e $x_2 \in g_2N$, allora

$$
(x_1x_2)N = (g_1g_2)N .
$$

**Dimostrazione.** Di $x_1$ sappiamo solo che sta nella classe di $g_1$, cioè

$$
x_1 = g_1 n_1 \quad \text{per un certo } n_1 \in N, \qquad x_2 = g_2 n_2 \quad \text{per un certo } n_2 \in N .
$$

Allora

$$
x_1 x_2 = g_1 n_1 g_2 n_2 .
$$

Qui si usa che $N$ è normale. Questo non significa che gli elementi di $N$ commutino con quelli di $G$. Significa che $g_2 N = N g_2$, cioè che un elemento di $N$ si può spostare dall'altra parte di $g_2$ a patto di cambiarlo con un altro elemento di $N$:

$$
n_1 g_2 = g_2 n_1' \quad \text{per un certo } n_1' \in N .
$$

Quindi

$$
x_1 x_2 = g_1 g_2 \, n_1' n_2 , \qquad n_1' n_2 \in N ,
$$

cioè $x_1x_2 \in (g_1g_2)N$. Le classi laterali o sono disgiunte o coincidono. Poiché $x_1x_2$ appartiene sia a $(x_1x_2)N$ sia a $(g_1g_2)N$, le due classi coincidono. $\square$

### Teorema: $G/N$ è un gruppo

Con questa operazione, $G/N$ è un gruppo, detto **gruppo quoziente**.

- **Associatività.** Discende immediatamente dall'associatività in $G$:

  $$
  \big((g_1N)(g_2N)\big)(g_3N) = \big((g_1g_2)g_3\big)N = \big(g_1(g_2g_3)\big)N = (g_1N)\big((g_2N)(g_3N)\big).
  $$

- **Elemento neutro.** È la classe banale $eN = N$:

  $$
  (gN)(eN) = (ge)N = gN, \qquad (eN)(gN) = gN .
  $$

- **Inverso.** L'inverso di $gN$ è $g^{-1}N$, poiché $(gN)(g^{-1}N) = (gg^{-1})N = N$.

Una caratterizzazione utile: $gN = N \iff g \in N$, cioè $g$ è un rappresentante della classe banale se e solo se sta in $N$. Vale anche il viceverso.

> [!note]
> Gli elementi di $G/N$ sono classi laterali, quindi a priori sottoinsiemi di $G$. Nel quoziente, però, li si tratta come singoli elementi di un nuovo gruppo.

### La proiezione canonica

La mappa

$$
\pi : G \to G/N, \qquad \pi(g) = gN ,
$$

che associa a ogni elemento la sua classe laterale, si chiama **proiezione modulo $N$**. Per come è definita l'operazione è un omomorfismo:

$$
\pi(g_1g_2) = (g_1g_2)N = (g_1N)(g_2N) = \pi(g_1)\pi(g_2).
$$

È suriettiva e ha nucleo

$$
\ker \pi = \{ g \in G \mid gN = N \} = N .
$$

Si dice che l'operazione di $G$ è stata **trasportata** su $G/N$ mediante la mappa $\pi$.

Ne segue che ogni sottogruppo normale è il nucleo di un omomorfismo, quello di proiezione. Viceversa, ogni nucleo è un sottogruppo normale.

## 3. Teorema fondamentale di omomorfismo

### Diagrammi commutativi

Un diagramma di mappe si dice **commutativo** se, comunque lo si percorra da un punto di partenza a uno di arrivo, il risultato non dipende dal cammino scelto.

Nel caso presente: partendo da $g \in G$, si può applicare direttamente $f$ e arrivare in $G'$, oppure applicare prima $\pi$, ottenendo $gN$, e poi $\varphi$. Il diagramma commuta se si ottiene lo stesso elemento, cioè se

$$
\varphi \circ \pi = f .
$$

> [!note]
> A lezione c'è stata un'osservazione sul modo di disegnare la freccia di $\varphi$ nel diagramma, tratteggiata o meno. Il contenuto preciso dell'osservazione non è recuperabile.

### Enunciato

**Teorema (fondamentale di omomorfismo).** Siano $f : G \to G'$ un omomorfismo e $N \trianglelefteq G$ con

$$
N \subseteq \ker f .
$$

Allora esiste un **unico** omomorfismo $\varphi : G/N \to G'$ che fa commutare il diagramma, cioè tale che $\varphi \circ \pi = f$:

$$
\varphi(gN) = f(g) \qquad \forall g \in G .
$$

Inoltre $\operatorname{Im}\varphi = \operatorname{Im} f$ e $\ker \varphi = \ker f / N$, cioè l'insieme delle classi laterali di $N$ con rappresentante nel nucleo. Ha senso parlare di $\ker f/N$ perché $N$ è contenuto in $\ker f$ ed è normale anche in $\ker f$.

### Dimostrazione

**Unicità: non c'è scelta.** Il dominio di $\varphi$ è $G/N$, i cui elementi sono classi laterali. Per definire $\varphi$ bisogna dire quanto vale su una classe $gN$. Se si vuole che il diagramma commuti, cioè $\varphi(\pi(g)) = f(g)$, si è costretti a porre

$$
\varphi(gN) := f(g).
$$

Quindi una mappa con questa proprietà, se esiste, è unica. Resta da mostrare che questa definizione, data tramite un rappresentante, è ben posta e che dà un omomorfismo.

**Buona definizione.** Questo è il punto in cui si usa l'ipotesi $N \subseteq \ker f$. Occorre verificare che

$$
x \in gN \implies f(x) = f(g),
$$

cioè che tutti gli elementi di una classe laterale hanno la stessa immagine. Se $x \in gN$, allora $x = gn$ con $n \in N$, e

$$
f(x) = f(gn) = f(g) f(n) = f(g) \cdot e_{G'} = f(g),
$$

perché $n \in N \subseteq \ker f$. Quindi, avendo preso le classi laterali modulo un sottogruppo contenuto nel nucleo, le immagini sono costanti su ogni classe.

Lo stesso risultato si può leggere tramite la proposizione della sezione 1. Elementi della stessa classe modulo $\ker f$ hanno la stessa immagine; le classi modulo $N \subseteq \ker f$ sono contenute in quelle modulo $\ker f$, quindi a maggior ragione i loro elementi hanno la stessa immagine.

**Omomorfismo.**

$$
\varphi\big((g_1N)(g_2N)\big) = \varphi\big((g_1g_2)N\big) = f(g_1g_2) = f(g_1)f(g_2) = \varphi(g_1N)\,\varphi(g_2N).
$$

**Immagine.** $\varphi(gN) = f(g)$ al variare di $g$ in $G$, quindi $\operatorname{Im}\varphi = \operatorname{Im} f$.

**Nucleo.** $\varphi(gN) = e_{G'} \iff f(g) = e_{G'} \iff g \in \ker f$. Quindi il nucleo di $\varphi$ è formato dalle classi laterali di $N$ con rappresentante in $\ker f$, cioè $\ker f/N$. $\square$

### Il caso $N = \ker f$: primo teorema di isomorfismo

**Corollario (primo teorema di isomorfismo).** Se $f : G \to G'$ è un omomorfismo, allora

$$
G/\ker f \;\cong\; \operatorname{Im} f .
$$

**Dimostrazione.** Si applica il teorema fondamentale con $N = \ker f$, ammesso perché $\ker f$ è normale e contenuto in sé stesso. Si ottiene un unico $\varphi : G/\ker f \to G'$ con $\varphi(g\ker f) = f(g)$.

- **Iniettività.** $\ker\varphi = \ker f/\ker f$ è la sola classe banale, quindi $\varphi$ è iniettiva.
- **Immagine.** $\operatorname{Im}\varphi = \operatorname{Im} f$. Considerando $\varphi$ come mappa a valori in $\operatorname{Im} f$, essa è suriettiva.

Quindi $\varphi : G/\ker f \to \operatorname{Im} f$ è un isomorfismo. $\square$

### Interpretazione

Il professore ha ripreso l'esempio $\mathbb{Z} \to \mathbb{Z}_3$. Gli elementi di $\mathbb{Z}/3\mathbb{Z}$ sono le classi laterali modulo $3$, cioè esattamente gli insiemi di interi che vanno nello stesso elemento.

L'idea generale, già incontrata nel "teorema di omomorfismo per insiemi", è questa. Data una funzione qualsiasi, si possono identificare gli elementi che hanno la stessa immagine; si ottiene così una mappa iniettiva dall'insieme delle fibre all'immagine.

Per gli omomorfismi c'è in più la regolarità: non succede che in un elemento ne vadano $7$ e in un altro $19$, perché le fibre sono le classi laterali del nucleo. Quozientando per il nucleo, ogni classe laterale diventa un unico elemento. La mappa indotta è ben definita perché tutti gli elementi di una classe hanno la stessa immagine, ed è iniettiva.

## 4. Quoziente di quozienti: secondo teorema di omomorfismo

> [!note] Fonte
> Gli appunti del corso confermano enunciato e dimostrazione. Nel corso questo è il **secondo teorema di omomorfismo** (Teorema 22.2). L'idea, dagli appunti: «posso semplificare come con le frazioni», cioè "cancellare" $H$. $K/H$ è un sottogruppo di $G/H$ «perché sono alcune delle classi laterali modulo $H$».

Siano $H, K$ sottogruppi normali di $G$ con $H \subseteq K$. Allora $K/H$, cioè l'insieme di alcune delle classi laterali di $H$ (quelle con rappresentante in $K$), è un sottogruppo, normale, di $G/H$, e

$$
(G/H)\big/(K/H) \;\cong\; G/K .
$$

**Schema di dimostrazione.** Si considera la proiezione $\pi_K : G \to G/K$. Il suo nucleo è $K \supseteq H$, quindi per il teorema fondamentale esiste un unico omomorfismo

$$
\psi : G/H \to G/K, \qquad \psi(gH) = gK,
$$

che fa commutare il diagramma.

- **Suriettività.** $\psi$ ha la stessa immagine di $\pi_K$, che è suriettiva: si ottengono tutte le classi laterali di $K$.
- **Nucleo.** Per la sezione 3, il nucleo di $\psi$ è $\ker \pi_K / H = K/H$.

Applicando ora il primo teorema di isomorfismo a $\psi$ si ottiene l'isomorfismo voluto. Il teorema fondamentale viene così usato "due volte".

> [!todo] Per casa (dagli appunti)
> Scrivere esplicitamente la mappa che dà l'isomorfismo.
>
> *Risposta (aggiunta):* è $(gH)(K/H)\mapsto gK$, cioè la mappa indotta da $\psi(gH)=gK$ sul quoziente per $\ker\psi=K/H$.

## 5. Prodotto di sottogruppi e terzo teorema di omomorfismo

### Il prodotto $HK$

Dati due sottogruppi $H, K \le G$, si considera

$$
HK = \{ hk \mid h \in H, \ k \in K \}.
$$

In generale **$HK$ non è un sottogruppo**. Vale la caratterizzazione seguente, lasciata **per casa** (dagli appunti: «dovrebbe essere un esercizio dell'Herstein»):

$$
HK \le G \iff HK = KH .
$$

> [!warning] Errore comune
> La condizione $HK = KH$ **non** significa che gli elementi di $H$ commutino con quelli di $K$. Significa che ogni prodotto $hk$ si può riscrivere come $k'h'$ con $k' \in K$, $h' \in H$, eventualmente diversi da $k$ e $h$: si scambia l'ordine mantenendo l'appartenenza a $H$ e a $K$, ma cambiando gli elementi.

Ad esempio, per la chiusura bisogna mostrare che $hk\,h'k' \in HK$. Usando $kh' = h''k''$ si ottiene

$$
hk\,h'k' = h\,h''\,k''k' \in HK .
$$

**Caso importante.** Se almeno uno dei due sottogruppi è normale, ne basta uno, allora $HK = KH$ e quindi $HK$ è un sottogruppo. Se per esempio $H$ è normale, $kH = Hk$ per ogni $k$, e quindi $KH = HK$.

### Enunciato

> [!note]
> Nel corso questo è il **terzo teorema di omomorfismo** (Teorema 22.3). Gli appunti lo enunciano con $H,K\trianglelefteq G$, ma nella dimostrazione serve solo che $H$ sia normale. Anche negli appunti in un passaggio $H$ e $K$ sono scambiati; la mappa è comunque $k\mapsto kH$. Per ricordare l'enunciato, dagli appunti: «$H$ compare tre volte e $K$ compare tre volte».

**Teorema (terzo teorema di omomorfismo).** Siano $H \trianglelefteq G$ e $K \le G$. Allora:

1. $HK$ è un sottogruppo di $G$;
2. $H \subseteq HK$ e $H$ è normale in $HK$;
3. $H \cap K \trianglelefteq K$ e
   $$
   K/(H\cap K) \;\cong\; HK/H .
   $$

### Dimostrazione

**Punti 1 e 2.** $HK$ è un sottogruppo perché $H$ è normale. $H$ è contenuto in $HK$, poiché $h = h\,e$ con $e \in K$: tra i prodotti c'è anche quello con l'identità. Inoltre $H$, essendo normale in tutto $G$, è a maggior ragione normale nel sottogruppo $HK$. Ha quindi senso il quoziente $HK/H$.

**La mappa.** Si considera

$$
F : K \to HK/H, \qquad F(k) = kH ,
$$

cioè la restrizione a $K$ della proiezione modulo $H$. È un omomorfismo perché lo è la proiezione.

**Nucleo.** Il nucleo è l'insieme dei $k \in K$ che vanno nell'identità del quoziente. In un gruppo quoziente l'identità è la classe banale $H$, e $kH = H$ se e solo se $k \in H$: i rappresentanti di una classe sono soltanto gli elementi di quella classe. Quindi

$$
\ker F = \{ k \in K \mid k \in H \} = H \cap K .
$$

In particolare $H\cap K$, essendo un nucleo, è normale in $K$.

**Suriettività.** Bisogna mostrare che ogni classe di $HK/H$ ha un rappresentante in $K$. Si prende una classe qualsiasi $xH$ con $x \in HK$, quindi $x = hk$ con $h \in H$, $k \in K$. Per la normalità di $H$, $hk = k h'$ per un certo $h' \in H$. Allora

$$
xH = hkH = kh'H = kH = F(k).
$$

Quindi la classe di un rappresentante qualsiasi di $HK$ è rappresentata anche da un elemento di $K$.

> [!note]
> La suriettività non è ovvia a priori. Prendendo soltanto rappresentanti in $K$, si poteva temere di non ottenere tutte le classi laterali di $HK/H$. È proprio la normalità a garantire che si ottengono tutte.

**Conclusione.** Per il primo teorema di isomorfismo, equivalentemente per il teorema fondamentale con $N = \ker F$, la mappa indotta $K/(H\cap K) \to HK/H$ è iniettiva, perché si è quozientato per il nucleo. Ha inoltre la stessa immagine di $F$, quindi è suriettiva. È dunque un isomorfismo. $\square$

## 6. Conteggi nei gruppi ciclici: elementi di ordine $d$

### Idea

L'argomento è dello stesso tipo del teorema sulle fibre: si costruisce una mappa e si contano gli elementi tramite le sue fibre. Il professore ha osservato che, nello studio dei gruppi, contare gli elementi di un certo ordine è uno degli strumenti principali. Nei casi che si incontreranno, ad esempio gruppi ciclici e prodotti diretti, si sapranno contare elementi e sottogruppi.

Sia $G$ un gruppo finito. Si considera la mappa che associa a ogni elemento $x$ il sottogruppo ciclico che genera:

$$
x \longmapsto \langle x \rangle .
$$

Questa mappa in generale non è iniettiva: elementi diversi possono generare lo stesso sottogruppo ciclico. Fissato un sottogruppo ciclico $C = \langle y\rangle$ di ordine $d$, la sua fibra è formata dai generatori di $C$. Tutti i sottogruppi ciclici dello stesso ordine $d$ hanno lo stesso numero di generatori, quindi la mappa è "regolare" sui sottogruppi di uno stesso ordine.

### Generatori di un gruppo ciclico di ordine $d$

Sia $\langle y\rangle$ ciclico di ordine $d$, con elementi

$$
\langle y \rangle = \{ y^0 = e, \ y, \ y^2, \ \dots, \ y^{d-1} \}.
$$

Si ricorda la formula, già dimostrata:

$$
o(y^k) = \frac{o(y)}{\operatorname{MCD}(o(y), k)} .
$$

Perché $y^k$ abbia ordine esattamente $d = o(y)$, cioè generi tutto $\langle y\rangle$, occorre che $\operatorname{MCD}(d,k) = 1$. Il numero dei generatori è quindi

$$
\varphi(d) = \#\{ k \in \{0, \dots, d-1\} \mid \operatorname{MCD}(k,d) = 1 \}.
$$

### Conseguenza

Il numero di elementi di ordine $d$ in $G$ è uguale al numero di sottogruppi ciclici di ordine $d$ moltiplicato per $\varphi(d)$:

$$
\#\{x \in G \mid o(x) = d\} = \varphi(d) \cdot \#\{ C \le G \mid C \text{ ciclico}, \ |C| = d\}.
$$

In un gruppo ciclico di ordine $n$ c'è un unico sottogruppo di ordine $d$ per ogni $d \mid n$. Gli elementi di ordine $d$ sono allora esattamente $\varphi(d)$ e, ripartendo gli $n$ elementi secondo il loro ordine,

$$
n = \sum_{d \mid n} \varphi(d).
$$

**Esempio: $\mathbb Z/12\mathbb Z$.** Per ogni divisore $d$ di $12$ c'è un solo sottogruppo di ordine $d$, cioè $\langle 12/d\rangle$, e i suoi generatori sono gli elementi di ordine $d$:

| $d$ | sottogruppo | elementi di ordine $d$ | $\varphi(d)$ |
|---|---|---|---|
| $1$ | $\{0\}$ | $0$ | $1$ |
| $2$ | $\langle 6\rangle$ | $6$ | $1$ |
| $3$ | $\langle 4\rangle$ | $4,8$ | $2$ |
| $4$ | $\langle 3\rangle$ | $3,9$ | $2$ |
| $6$ | $\langle 2\rangle$ | $2,10$ | $2$ |
| $12$ | $\mathbb Z/12\mathbb Z$ | $1,5,7,11$ | $4$ |

e infatti $1+1+2+2+2+4=12$: ogni elemento compare in esattamente una riga. In un gruppo non ciclico il conteggio cambia: in $\mathbb Z/2\times\mathbb Z/2$ ci sono tre sottogruppi ciclici di ordine $2$, quindi $3\cdot\varphi(2)=3$ elementi di ordine $2$.

> [!note] Fonte
> Negli appunti del corso il risultato della lezione è scritto come
> $$\#\{\text{sottogruppi ciclici di ordine } d\}=\frac{\#\{\text{elementi di ordine } d\}}{\varphi(d)},$$
> perché la mappa $x\mapsto\langle x\rangle$ è "$\varphi(d)$ a $1$". Gli appunti la spiegano così: è come contare le persone in un'aula contando le braccia e dividendo per due; con i capelli non si può fare, perché ognuno ne ha un numero diverso. La formula $n=\sum_{d\mid n}\varphi(d)$ era già stata vista negli appunti della Lez. 16 (28/10).

## 7. Esercizi

### Esercizio 1: gruppi in cui ogni elemento ha quadrato uguale all'identità

**Enunciato** («esercizio facile, dall'Herstein»). Un gruppo in cui tutti gli elementi diversi dall'identità hanno ordine $2$, cioè $a^2=e$ per ogni $a\in G$, è abeliano.

**Svolgimento.** Si osserva che

$$
a^2 = e \iff a = a^{-1},
$$

cioè ogni elemento è l'inverso di sé stesso. Presi $a, b \in G$, anche $ab$ ha quadrato uguale all'identità:

$$
(ab)^2 = abab = e .
$$

Si moltiplica a sinistra per $a^{-1}$ e a destra per $b^{-1}$, ricordando che le moltiplicazioni vanno fatte dallo stesso lato in entrambi i membri:

$$
ba = a^{-1} b^{-1} .
$$

Poiché $a^{-1} = a$ e $b^{-1} = b$, si ottiene $ba = ab$. $\square$

> [!note] Fonte
> Enunciato e svolgimento sono confermati dagli appunti del corso (p. 159–160).

### Esercizio 2 (per casa)

Dagli appunti del corso: «Ogni gruppo di ordine $4$ è abeliano. Dimostrare che ogni gruppo di ordine $4$ o è ciclico (quindi è $\mathbb Z/4\mathbb Z$) o è isomorfo a $\mathbb Z/2\mathbb Z\times\mathbb Z/2\mathbb Z$.»

> [!tip] Traccia di soluzione *(aggiunta)*
> Sia $|G|=4$. Per Lagrange ogni elemento ha ordine $1$, $2$ o $4$.
> - Se c'è un elemento di ordine $4$, esso genera $G$: $G$ è ciclico, quindi $G\cong\mathbb Z/4\mathbb Z$ (e in particolare è abeliano).
> - Altrimenti ogni $a\ne e$ ha ordine $2$. Per l'esercizio 1 $G$ è abeliano. Scritto $G=\{e,a,b,c\}$, il prodotto $ab$ non può essere $e$ (sarebbe $b=a^{-1}=a$), né $a$ o $b$ (sarebbe $b=e$ o $a=e$). Quindi $ab=c$. La mappa $\mathbb Z/2\times\mathbb Z/2\to G$, $(i,j)\mapsto a^ib^j$, è allora un omomorfismo (perché $G$ è abeliano) e biiettivo: $(0,0),(1,0),(0,1),(1,1)\mapsto e,a,b,c$.
