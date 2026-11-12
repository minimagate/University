---
type: lecture-note
course: Analisi 1
date: '2026-11-04'
title: Criterio del confronto asintotico, condensazione di Cauchy e serie armonica generalizzata
source_files:
- AM1_26_L035.pdf
- AM1_26_L036.pdf
source_date: '2025-11-04'
teaching_model: anthropic/claude-sonnet-5.5
---

# Criterio del confronto asintotico, condensazione di Cauchy e serie armonica generalizzata

Questa nota riunisce le parti **035 e 036** della lezione di mercoledì **4 novembre 2026**, dedicata alle **serie numeriche a termini non negativi**. La parte 035 contiene il **criterio del confronto asintotico**, i suoi casi limite, l'enunciato sulla **serie armonica generalizzata** e sulla sua "amica" con il logaritmo, il **criterio di condensazione di Cauchy** e una dimostrazione alternativa della convergenza/divergenza di $\sum 1/n^a$. La parte 036 è una raccolta di **dieci esercizi** in cui si usano il confronto asintotico, le parti principali (vedi [[2026-10-29 - Operazioni con Taylor e parti principali]]) e le serie armoniche generalizzate come termini di paragone. Lezione precedente: [[2026-11-03 - Serie numeriche, condizione necessaria e criteri di convergenza]].

## 1. Criterio del confronto asintotico

### 1.1 Enunciato

Siano $a_n$ e $b_n$ due successioni. Supponiamo che:

1. $a_n\ge 0$ definitivamente;
2. $b_n>0$ definitivamente;
3. esista
$$
\lim_{n\to+\infty}\frac{a_n}{b_n}=\ell\in(0,+\infty),
$$
cioè $\ell\neq0$ e $\ell\neq+\infty$.

Allora le due serie hanno **lo stesso carattere**:

$$
\boxed{\sum a_n \text{ converge}\iff\sum b_n\text{ converge.}}
$$

Attenzione (osservazione a margine nel PDF): **il valore della somma può essere diverso**; il criterio dice solo che convergono o divergono insieme.

### 1.2 Dimostrazione

Dall'ipotesi (iii) segue che, definitivamente,

$$
\frac{\ell}{4}\le\frac{a_n}{b_n}\le 4\ell .
$$

Moltiplicando per $b_n$ (lecito grazie a (ii), perché $b_n>0$) si ottiene

$$
\frac{\ell}{4}\,b_n\le a_n\le 4\ell\, b_n\qquad\text{definitivamente.}
$$

- **Caso 1.** Se $\sum b_n$ converge, allora $\sum 4\ell b_n$ converge; per la disuguaglianza di destra e il criterio del confronto ordinario, converge anche $\sum a_n$.
- **Caso 2.** Se $\sum b_n$ diverge, allora $\sum\frac{\ell}{4}b_n$ diverge; per la disuguaglianza di sinistra diverge anche $\sum a_n$.

### 1.3 Utilizzo operativo

Si deve studiare $\sum a_n$ e si spera di trovare una serie $\sum b_n$ di carattere noto tale che $a_n/b_n\to\ell\neq0,+\infty$. Nella pratica $b_n$ è la **parte principale** di $a_n$ (a meno di una costante).

### 1.4 Casi limite ($\ell=+\infty$ e $\ell=0$)

Ipotesi (i) e (ii) come sopra.

**Caso $a_n/b_n\to+\infty$.** Allora definitivamente $a_n/b_n\ge1$, cioè $a_n\ge b_n$ definitivamente. Quindi
$$
\sum b_n=+\infty\ \Longrightarrow\ \sum a_n=+\infty.
$$

**Caso $a_n/b_n\to0$.** Allora definitivamente $a_n/b_n\le1$, cioè $a_n\le b_n$ definitivamente. Quindi
$$
\sum b_n\text{ converge}\ \Longrightarrow\ \sum a_n\text{ converge.}
$$

In questi casi si ha **una sola implicazione** (quella che discende dal confronto semplice), non l'equivalenza.

## 2. Serie armonica generalizzata

Sia $a\in\mathbb R$ un parametro. (La serie armonica "vera" è il caso $a=1$.)

$$
\boxed{\sum_{n=1}^{\infty}\frac1{n^a}=
\begin{cases}\text{converge} & \text{se } a>1,\\[2pt]
\text{diverge a }+\infty & \text{se } a\le1.\end{cases}}
$$

La sua **"amica"**, che si comporta nello stesso modo, è

$$
\boxed{\sum_{n=2}^{\infty}\frac1{n(\log n)^a}=
\begin{cases}\text{converge} & \text{se } a>1,\\[2pt]
\text{diverge a }+\infty & \text{se } a\le1.\end{cases}}
$$

Il PDF segnala che esistono **almeno tre dimostrazioni**: via **condensazione di Cauchy**, via **disuguaglianze ad hoc**, via **confronto serie-integrali** (quest'ultima solo citata). Le prime due sono sviluppate qui sotto.

## 3. Criterio di condensazione di Cauchy

### 3.1 Enunciato

Sia $a_n$ una successione tale che:

1. $a_n\ge0$ definitivamente;
2. $a_{n+1}\le a_n$ definitivamente (debolmente decrescente);
3. $a_n\to0$ (ipotesi "inutile": segue già dalla convergenza di una delle due serie, nota a margine nel PDF).

Allora

$$
\boxed{\sum_{n=0}^{\infty}a_n\text{ converge}\iff\sum_{n=0}^{\infty}2^n a_{2^n}\text{ converge.}}
$$

Nella seconda serie compaiono **solo i termini il cui indice è una potenza di $2$**. Nota a margine: si può sostituire $2$ con qualunque numero $>1$.

### 3.2 Applicazione a $\sum 1/n^a$

Per $a_n=\dfrac1{n^a}$:

$$
\sum_{n=1}^{\infty}\frac1{n^a}\text{ converge}\iff
\sum_{n=1}^{\infty}2^n\frac1{(2^n)^a}=\sum_{n=1}^{\infty}\left(\frac2{2^a}\right)^n\text{ converge.}
$$

L'ultima è una **serie geometrica**, che converge se e solo se $\dfrac2{2^a}<1$, cioè se e solo se $a>1$.

*Esercizio proposto nel PDF:* provare a fare lo stesso con l'amica $\sum\frac1{n(\log n)^a}$ e **generalizzare ad amiche di ordine superiore**.

### 3.3 Idea della dimostrazione

Si confrontano i termini della serie con delle versioni "a gradini", raggruppando in blocchi di lunghezza $1,1,2,4,8,16,\dots$ (i blocchi iniziano agli indici potenze di $2$):

$$
\begin{array}{lcc}
a_0\,|\,a_1\,|\,a_2\,|\,a_3\,a_4\,|\,a_5\,a_6\,a_7\,a_8\,|\,a_9\cdots a_{16}\,|\cdots & & \text{(mia serie)}\\
a_0\,|\,a_1\,|\,a_2\,|\,a_4\,a_4\,|\,a_8\,a_8\,a_8\,a_8\,|\,a_{16}\cdots a_{16}\,|\cdots & & \text{(più piccola)}\\
a_0\,|\,a_1\,|\,a_2\,|\,a_2\,a_2\,|\,a_4\,a_4\,a_4\,a_4\,|\,a_8\cdots a_8\,|\cdots & & \text{(più grande)}
\end{array}
$$

Poiché $a_n$ è decrescente, in ogni blocco i termini della serie originale sono compresi tra quello della riga "più piccola" (si sostituisce ogni termine con l'ultimo del blocco) e quello della riga "più grande" (si sostituisce con il primo del blocco). Da questo segue la stima

$$
a_1+\frac12\sum_{k=1}^{n}2^k a_{2^k}\ \le\ \sum_{k=1}^{2^n}a_k\ \le\ a_1+a_2+\sum_{k=1}^{n-1}2^k a_{2^k},
$$

che, secondo il PDF, **si dimostra volendo per induzione**.

- **(1)** Se $\sum 2^k a_{2^k}$ converge, guardando la disuguaglianza **a destra** le somme parziali di $\sum a_k$ sono limitate, e quindi $\sum a_k$ converge.
- **(2)** Se $\sum 2^k a_{2^k}$ diverge, guardando la disuguaglianza **a sinistra** diverge anche $\sum a_k$.

## 4. Dimostrazione alternativa di $\sum 1/n^a$ "ad hoc"

Il PDF procede per fatti successivi.

**Fatto 1: $\sum\frac1n$ diverge.** Si usa il confronto asintotico con
$$
b_n=\log\left(1+\frac1n\right),
$$
la cui serie è **telescopica** (e diverge). Infatti $\sum_{n=1}^N\log\frac{n+1}{n}=\log(N+1)\to+\infty$ *(passaggio aggiunto)*. Con $a_n=1/n$ vale
$$
\lim_{n\to+\infty}\frac{a_n}{b_n}=1
$$
(solito limite notevole), con $1\neq0,+\infty$. Quindi le due serie hanno lo stesso carattere e $\sum\frac1n$ diverge.

*Subalternativa* (raggruppamento, cfr. Oresme):

$$
1+\frac12+\frac13+\frac14+\frac15+\frac16+\frac17+\frac18+\cdots
\ge 1+\frac12+\underbrace{\frac14+\frac14}_{=\,1/2}+\underbrace{\frac18+\frac18+\frac18+\frac18}_{=\,1/2}+\cdots
$$

Ad ogni blocco si aggiunge almeno $\tfrac12$, quindi la serie diverge. *(Nel PDF le parentesi sotto i blocchi riportano "1" e "1"; il valore dei blocchi dopo il primo termine è $1/2$ ciascuno, aggiustato qui per coerenza: lettura incerta.)*

**Fatto 2: divergenza per $a\le1$.** Se $a\le1$, per $n\ge1$ vale $\dfrac1{n^a}\ge\dfrac1n$. Quindi $\sum\frac1{n^a}$ diverge per confronto.

**Fatto 3: $\sum\frac1{n^2}$ converge.** La serie
$$
\sum_{n=1}^{\infty}\frac1{n(n+1)}
$$
converge perché telescopica (con $b_n=\frac1{n(n+1)}=\frac1n-\frac1{n+1}$). Posso confrontare asintoticamente $a_n=\frac1{n^2}$ con $b_n$: $a_n/b_n\to1$, quindi hanno lo stesso comportamento e $\sum\frac1{n^2}$ converge.

**Fatto 4: convergenza per $a\ge2$.** Visto che $\sum\frac1{n^2}$ converge, converge anche $\sum\frac1{n^a}$ con $a\ge2$, perché $\frac1{n^a}\le\frac1{n^2}$.

Resta scoperto il range $a\in(1,2)$.

**Esercizio (idea).** Per induzione,
$$
\sum_{k=1}^{n}\frac1{k^2}\le 2-\frac1n .
$$
Più in generale vale

$$
\boxed{\sum_{k=1}^{n}\frac1{k^a}\le\frac{a}{a-1}-\frac1{a-1}\cdot\frac1{n^{a-1}}}
$$

e dimostrarlo per induzione è "quasi un esercizio". Questa stima implica la convergenza per ogni $a>1$ perché le somme parziali sono limitate dall'alto da $a/(a-1)$.

*Domanda aperta posta nel PDF:* come farsi venire in mente la stima che implica la convergenza per ogni $a>1$?

## 5. Esercizi

La strategia è sempre la stessa: prima un'analisi **"brutale"** (si individua la parte principale di $a_n$ e si intuisce il comportamento), poi la **verifica rigorosa** con il confronto asintotico (C.A.). Il PDF ricorda: la parte principale è proprio il candidato $b_n$.

### Esercizio 1: $\displaystyle\sum_{n=7}^{\infty}\frac{n^3+1}{n^4+2n^2-3}$

*Brutale:* $a_n\sim\dfrac1n$, quindi si comporta come $\sum\frac1n$, cioè **diverge**.

*Rigoroso:* C.A. con $b_n=\frac1n$: si riduce a verificare
$$
\lim_{n\to+\infty}\frac{a_n}{b_n}=1\ (\neq0,\neq+\infty).
$$

Nota bene: $\frac1n$ è la **parte principale** di $a_n$.

### Esercizio 2: $\displaystyle\sum_{n=14}^{\infty}\sqrt n\,\sin\!\left(\frac1{n^2}\right)$ converge

*Brutale:* $a_n\sim\sqrt n\cdot\frac1{n^2}=\dfrac1{n^{3/2}}$; poiché $\tfrac32>1$, **converge**.

*Rigoroso:* C.A. con $b_n=\dfrac1{n^{3/2}}$.

### Esercizio 3: $\displaystyle\sum_{n=1}^{\infty}\left(\frac1n-\sin\frac1n\right)$

*Brutale:* da $\sin\frac1n=\frac1n-\frac16\frac1{n^3}+\cdots$ si ha
$$
a_n\sim\frac1n-\frac1n-\frac16\frac1{n^3}\ \rightsquigarrow\ a_n\text{ è definitivamente }\le0
$$
(così riportato nel PDF, con il segno "$\le0$": vedi Incertezze) e converge come $\sum\frac1{n^3}$.

*Rigoroso:* considero $b_n=\frac1{n^3}$ e calcolo, con $x=\frac1n$,
$$
\lim_{n\to+\infty}\frac{a_n}{b_n}=\lim_{n\to+\infty}\frac{\frac1n-\sin\frac1n}{\frac1{n^3}}
=\lim_{x\to0}\frac{x-\sin x}{x^3}=-\frac16\quad\text{(Taylor).}
$$

Questo mi dice che $a_n/b_n<0$ definitivamente. Essendo $b_n>0$, ciò dice che $a_n<0$ definitivamente. Porto il segno fuori (ottenendo una serie a termini positivi) e concludo con il C.A. con $\frac1{n^3}$ (essendo $\frac16\neq0,\neq+\infty$): **converge**.

### Esercizio 4: $\displaystyle\sum_{n=2}^{\infty}\left(\sqrt[n]{n}-1\right)$

Qui $a_n\to0^+$.

*Brutale:* $a_n\sim n^{1/n}-1=e^{\frac1n\log n}-1\sim\dfrac{\log n}{n}$ (**parte principale**).

*Rigoroso:* C.A. con $b_n=\dfrac{\log n}{n}$: si ha $a_n/b_n\to1$ ($\neq0,\neq+\infty$). Quindi la serie si comporta come $\sum\frac{\log n}{n}$, che **diverge** perché
$$
\frac{\log n}{n}\ge\frac1n\quad\text{definitivamente}
$$
(volendo, è l'amica con $a=-1$).

### Esercizio 5: $\displaystyle\sum_{n=3}^{\infty}\frac1{n^{\log n}}$

Definitivamente
$$
\frac1{n^{\log n}}\le\frac1{n^5},
$$
quindi **converge per confronto**.

### Esercizio 6: $\displaystyle\sum_{n=3}^{\infty}\frac1{2^{\log n}}$

*Percorso:*
$$
2^{\log n}=e^{\log n\cdot\log2}=\left(e^{\log n}\right)^{\log2}=n^{\log2}.
$$
Più in generale vale la regola

$$
\boxed{A^{\log B}=B^{\log A}.}
$$

Quindi
$$
\sum\frac1{2^{\log n}}=\sum\frac1{n^{\log2}}
$$
e **diverge** perché $\log2\in(0,1)$. (Se ci fosse stato $3^{\log n}$, converge: $\log3>1$.)

### Esercizio 7: $\displaystyle\sum_{n=3}^{\infty}\frac1{n^2\log n}$

Qui il logaritmo è **amico**, perché
$$
\frac1{n^2\log n}\le\frac1{n^2}\quad\text{definitivamente.}
$$
Quindi **converge per confronto**.

### Esercizio 8 (l'esercizio): $\displaystyle\sum_{n=3}^{\infty}\frac{(\log n)^{72}}{n^2}$

Qui il logaritmo è **nemico**: moltiplicando al numeratore peggiora la convergenza. Sull'asse degli esponenti, $\sum\frac1{n^a}$ diverge per $a\le1$ e converge per $a>1$ (punti $1\to\frac1n$, $2\to\frac1{n^2}$, $3\to\frac1{n^3}$, e il punto $\tfrac32$ segnato).

*Domanda:* $(\log n)^{72}$ sposta $\frac1{n^2}$ abbastanza a sinistra oppure no? I logaritmi sono deboli, quindi probabilmente **no**. Come lo dimostro?

Faccio C.A. (caso limite) con $b_n=\frac1{n^{3/2}}$:
$$
\lim_{n\to+\infty}\frac{a_n}{b_n}=\lim_{n\to+\infty}\frac{(\log n)^{72}}{\sqrt n}=0
$$
(la potenza batte il logaritmo). Quindi $a_n/b_n\le1$ definitivamente, cioè $a_n\le b_n$, e poiché $\sum b_n$ converge, **converge** $\sum a_n$. (Invece di $\frac32$ si poteva usare un qualunque esponente $a\in(1,2)$.)

**Fatto generale.**
$$
\boxed{\sum_{n=2}^{\infty}\frac{(\log n)^b}{n^a}\ \text{converge}\quad\forall a>1,\ \forall b\in\mathbb R.}
$$

*Osservazione:* l'amica dell'armonica è un leggero spostamento a destra rispetto a $\frac1n$.

### Esercizio 9: $\displaystyle\sum_{n=5}^{\infty}\bigl[\log(n^4-5)-4\log n\bigr]$

*Brutale:*
$$
a_n=\log\!\left[n^4\left(1-\frac5{n^4}\right)\right]-4\log n
=\log(n^4)+\log\!\left(1-\frac5{n^4}\right)-\log(n^4)\sim-\frac5{n^4}
$$
(parte principale). Quindi $a_n$ è definitivamente negativa e, messo il segno meno fuori, la serie **converge** per C.A. con $\frac1{n^4}$.

### Esercizio 10: $\displaystyle\sum_{n=1}^{\infty}\sin^2\!\left(\frac{n^{3a}+5}{n+7}\right)$ al variare di $a$

*Brutale* (con $a>0$):
$$
a_n\sim\sin^2\!\left(\frac1{n^{1-3a}}\right)\sim\frac1{n^{2-6a}}\quad(\text{per }a<\tfrac13).
$$
Quindi la serie converge se e solo se
$$
2-6a>1\iff 6a<1\iff a<\frac16 .
$$

*Osservazione:* la **condizione necessaria** (termine generale infinitesimo) è verificata se e solo se $3a<1$, cioè $a<\frac13$.

## Incertezze e note sulla trascrizione

- Entrambi i PDF riportano la data **04/11/2025**, conservata in `source_date`; la data della lezione nel corso attuale è 04/11/2026.
- La lezione è scritta a mano. Il testo è stato trascritto fedelmente; sono state aggiunte pochissime spiegazioni (marcate come *passaggio aggiunto*).
- Nello sviluppo della disuguaglianza di condensazione, il PDF scrive i termini di bordo come qui riportato; la dimostrazione è lasciata per induzione e non è sviluppata.
- Nell'Esercizio 3 la serie ha termini $\frac1n-\sin\frac1n>0$; il PDF scrive "$a_n$ è a termini definitivamente $\le0$" e calcola un limite pari a $-\frac16$. Il segno non è coerente con $\sin x\le x$ per $x>0$: con lo sviluppo $\sin x=x-\frac{x^3}6+o(x^3)$ si ha $\lim_{x\to0}\frac{x-\sin x}{x^3}=+\frac16$. Probabile svista nell'originale (il valore $-\frac16$ e il "$\le0$" sono riportati come scritti); la conclusione, convergenza, non cambia.
- Per i blocchi della "subalternativa" della serie armonica la lettura delle parentesi nel PDF è incerta (*illeggibile con sicurezza*).
- Esercizio 10: i casi $a\ge\frac13$ e $a\le0$ non sono trattati nel PDF.
