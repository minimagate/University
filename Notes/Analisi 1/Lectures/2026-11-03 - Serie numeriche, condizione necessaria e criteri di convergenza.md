---
type: lecture-note
course: Analisi 1
date: '2026-11-03'
title: Serie numeriche, condizione necessaria e criteri di convergenza
source_files:
- AM1_26_L033.pdf
- AM1_26_L034.pdf
source_date: '2025-11-03'
teaching_model: anthropic/claude-sonnet-5.5
---

# Serie numeriche, condizione necessaria e criteri di convergenza

Questa nota riunisce le parti **033 e 034** della lezione del **3 novembre 2026**. La prima parte introduce le **serie numeriche** (somme di infiniti termini), le somme parziali, le serie **telescopiche** e **geometriche** e le proprietà algebriche. La seconda parte presenta la **condizione necessaria di convergenza**, le serie a termini non negativi, il **criterio del confronto** e i criteri della **radice** e del **rapporto**, con alcuni esercizi. Gli strumenti sui limiti di successioni vengono dalle note [[2026-10-07 - Successioni monotone, numero di Nepero e teoremi algebrici sui limiti]] e [[2026-10-08 - Criteri della radice e del rapporto e gerarchia degli infiniti]]. Lezione precedente: [[2026-10-30 - Funzioni iperboliche ed esercizi sugli sviluppi di Taylor]].

## 1. Serie numeriche e somme parziali

**Come sommare infiniti numeri.** Data una successione $a_n$, la scrittura

$$
\sum_{n=0}^{\infty}a_n
$$

indica la somma degli infiniti termini della successione.

**Definizione (somme parziali).** Le **somme parziali** sono definite da

$$
S_n=\sum_{k=0}^{n}a_k=a_0+a_1+a_2+\cdots+a_n,
$$

che è una sommatoria **finita**.

**Per definizione**,

$$
\boxed{\sum_{n=0}^{\infty}a_n=\lim_{n\to+\infty}S_n}
$$

e quindi, a seconda del limite:

- se il limite è $\ell\in\mathbb R$, la serie **converge** a $\ell$;
- se il limite è $+\infty$, la serie **diverge a $+\infty$**;
- se il limite è $-\infty$, la serie **diverge a $-\infty$**;
- se il limite non esiste, la serie è **indeterminata**.

### 1.1 Esempi banali

- $\sum_{n=0}^\infty 0=0$: qui $a_n\equiv0$, $S_n\equiv0\to0$.
- $\sum_{n=0}^\infty 1=+\infty$: qui $a_n\equiv1$ e $S_n=n+1$ (attenzione: c'è anche $a_0$), quindi $S_n\to+\infty$.
- $\sum_{n=0}^\infty(-1)^n$: qui $a_n=(-1)^n$ e le somme parziali sono $1-1+1-1+\cdots$. Quindi $S_n=1$ se $n$ è pari e $S_n=0$ se $n$ è dispari. Perciò $S_n$ non ha limite e la serie è **indeterminata**.

### 1.2 Osservazioni

**Osservazione 1.** In modo analogo si definisce $\sum_{n=35}^{+\infty}a_n$. L'unica variante è che $S_n=\sum_{k=35}^n a_k$ è definita per $n\ge35$.

**Osservazione 2.** Siano $a_n$ e $\hat a_n$ due successioni tali che $a_n=\hat a_n$ **definitivamente**. Allora le due serie corrispondenti hanno lo **stesso tipo di comportamento** (se convergono, possono convergere a numeri diversi).

*Dimostrazione.* Siano $S_n$ e $\hat S_n$ le due somme parziali. Se $a_n=\hat a_n$ per ogni $n\ge n_0$, allora esiste una costante $M_0$ tale che

$$
S_n=\hat S_n+M_0\qquad\forall n\ge n_0
$$

(da $n_0$ in poi la differenza rimane costante). Quindi $\lim S_n$ si comporta come $\lim\hat S_n$. $\square$

Il comportamento di una serie non dipende dunque da un numero finito di termini; cambia soltanto, nel caso della convergenza, il valore della somma.

Due classi speciali di serie: **serie telescopiche** e **serie geometriche**.

## 2. Serie telescopiche

### Esempio 1: $\displaystyle\sum_{n=1}^\infty\frac1{n(n+1)}$

La serie è $\frac1{1\cdot2}+\frac1{2\cdot3}+\frac1{3\cdot4}+\cdots$.

*Esperimenti.*

$$
S_1=\frac12,\qquad S_2=\frac12+\frac16=\frac23,\qquad
S_3=\frac12+\frac16+\frac1{12}=\frac9{12}=\frac34.
$$

Sembra ragionevole che

$$
S_n=\frac n{n+1},
$$

da dimostrare per induzione. Allora la serie converge a $1$.

**Osservazione.** Si può scrivere

$$
a_n=\frac1{n(n+1)}=\frac1n-\frac1{n+1},
$$

e perciò i termini si cancellano a coppie:

$$
S_4=a_1+a_2+a_3+a_4=\left(1-\tfrac12\right)+\left(\tfrac12-\tfrac13\right)+\left(\tfrac13-\tfrac14\right)+\left(\tfrac14-\tfrac15\right)=1-\frac15=\frac45.
$$

### Esempio 2: $\displaystyle\sum_{n=1}^\infty\log\left(1+\frac1n\right)$

Si ha

$$
\log\left(1+\frac1n\right)=\log\frac{n+1}{n}=\log(n+1)-\log n.
$$

Quindi

$$
\begin{aligned}
S_1&=a_1=\log2-\log1,\\
S_2&=a_1+a_2=\log3-\log2+\log2-\log1,\\
S_3&=a_3+a_2+a_1=\log4-\log3+\log3-\log2+\log2-\log1=\log4.
\end{aligned}
$$

Sembra ragionevole che $S_n=\log(n+1)$ (da dimostrare per induzione), e quindi la serie **diverge a $+\infty$**.

## 3. Serie geometriche

La **serie geometrica** di ragione $a$ è

$$
\sum_{n=0}^\infty a^n=1+a+a^2+a^3+a^4+\cdots
$$

Si è già visto (a suo tempo) che

$$
S_n=\sum_{k=0}^na^k=\frac{a^{n+1}-1}{a-1}\qquad(\text{almeno se }a\neq1).
$$

Si distinguono i casi:

| Caso | Comportamento |
|---|---|
| $a>1$ | la serie diverge a $+\infty$ |
| $a=1$ | è la somma di $1$: diverge a $+\infty$ |
| $-1<a<1$ | $a^{n+1}\to0$, quindi la serie converge a $\dfrac1{1-a}$ |
| $a=-1$ | la serie è indeterminata ($S_{2n}\to1$, $S_{2n+1}\to0$) |
| $a<-1$ | la serie è indeterminata ($S_{2n}\to+\infty$, $S_{2n+1}\to-\infty$); il numeratore tende a $-\infty$ e il denominatore è negativo |

**Riassunto.**

$$
\boxed{\sum_{n=0}^\infty a^n\ \begin{cases}\text{diverge a }+\infty&\text{se }a\ge1,\\[2pt]\text{converge a }\dfrac1{1-a}&\text{se }-1<a<1,\\[4pt]\text{è indeterminata}&\text{se }a\le-1.\end{cases}}
$$

**Osservazione (il caso $a=1$ come limite).** Quanto vale $\lim_{a\to1}\frac{a^{n+1}-1}{a-1}$? Ponendo $a=1+x$ diventa

$$
\lim_{x\to0}\frac{(1+x)^{n+1}-1}{x}=\lim_{x\to0}\frac{1+(n+1)x+o(x)-1}{x}=n+1,
$$

che è proprio la somma parziale nel caso $a=1$.

**Osservazione.** Telescopiche e geometriche sono quasi le uniche serie per cui è possibile avere una **formula esplicita per $S_n$**.

## 4. Proprietà algebriche

**Somma** (*quasi*):

$$
\sum_{n=0}^\infty(a_n+b_n)=\sum_{n=0}^\infty a_n+\sum_{n=0}^\infty b_n
$$

**Prodotto per costante** (*sì*):

$$
\sum_{n=0}^\infty(\lambda a_n)=\lambda\sum_{n=0}^\infty a_n.
$$

**Prodotto di termini**: $\sum_{n=0}^\infty(a_n\cdot b_n)$ non ha nessuna formula "furba". Nemmeno se ci sono solo due termini: $a_0b_0+a_1b_1\neq(a_0+a_1)(b_0+b_1)$.

*Dimostrazione (somma).* Poniamo $c_n=a_n+b_n$ e chiamiamo $S_n^a,S_n^b,S_n^c$ le somme parziali delle tre serie. Allora (per induzione)

$$
S_n^c=S_n^a+S_n^b\qquad\forall n\in\mathbb N.
$$

A questo punto

$$
\lim_{n\to+\infty}S_n^c=\lim_{n\to+\infty}S_n^a+\lim_{n\to+\infty}S_n^b
$$

con tutte le cautele del limite della somma: va male la forma $+\infty-\infty$, e ci sono problemi quando i limiti non esistono. Per questo la formula sulla somma vale "quasi": la validità è quella del teorema sul limite di una somma. $\square$

## 5. Serie e paradosso di Zenone

Nel PDF 034 la serie viene collegata al paradosso di Zenone: un percorso diviso in tratti di lunghezza $1,\frac12,\frac14,\dots$ (figura). Il tempo totale è

$$
1+\frac12+\frac14+\frac18+\cdots,
$$

cioè una serie geometrica con $a=\frac12$, che converge a

$$
\frac1{1-\frac12}=2.
$$

## 6. Come si studia una serie senza formula per $S_n$

Quando non c'è una formula esplicita per $S_n$ si usano condizioni e criteri. Lo schema della lezione è:

- **condizione necessaria**;
- serie a **segno definitivamente costante**: criterio della radice, criterio del rapporto, criterio del confronto, criterio del confronto asintotico (casi standard e casi limite);
- serie a **segno variabile**: Leibniz, assoluta convergenza, Dirichlet (annunciati, non svolti in queste pagine).

### 6.1 Condizione necessaria

**Teorema (condizione necessaria).** Se $\sum_{n=0}^\infty a_n$ converge, allora $a_n\to0$.

*Dimostrazione.* Osserviamo che $a_n=S_n-S_{n-1}\to\ell-\ell=0$, dove $S_n\to\ell$ e $S_{n-1}\to\ell$. Qui serve che $\ell$ sia **reale** (la serie converge). $\square$

**Osservazioni.**

- Se $a_n$ **non** tende a $0$ (cioè tende ad altro oppure non ha limite), la serie **non può convergere**. Restano aperte $3$ possibilità (diverge a $+\infty$, a $-\infty$, indeterminata).
- Se $a_n\to0$, allora la serie **può** convergere, ma non è obbligata. Restano aperte $4$ possibilità.

### 6.2 Serie a termini non negativi

**Proposizione.** Se $a_n\ge0$ definitivamente, allora ci sono solo **2 possibilità** per la serie: converge oppure diverge a $+\infty$.

*Dimostrazione.* La successione $S_n$ delle somme parziali è definitivamente debolmente crescente; quindi, per il teorema delle successioni monotone, può solo tendere a $\ell\in\mathbb R$ oppure a $+\infty$. $\square$

**Esempio.**

$$
\sum_{n=0}^\infty\frac{n^3+4n-1}{2n^3-75}=+\infty.
$$

Basta osservare che $a_n\ge0$ definitivamente e $a_n\to\frac12$. Poiché $a_n\ge0$, la serie può solo convergere o divergere a $+\infty$; manca la condizione necessaria, quindi non può convergere.

## 7. Criterio del confronto

**Criterio del confronto.** Supponiamo che

$$
0\le a_n\le b_n\quad\text{definitivamente.}
$$

Allora valgono le implicazioni

$$
\sum_{n=0}^\infty a_n=+\infty\ \Rightarrow\ \sum_{n=0}^\infty b_n=+\infty,
\qquad
\sum_{n=0}^\infty b_n\text{ converge}\ \Rightarrow\ \sum_{n=0}^\infty a_n\text{ converge.}
$$

*Dimostrazione.* Siano $S_n^a$ e $S_n^b$ le due somme parziali. Supponiamo che $0\le a_n\le b_n$ sia vera per ogni $n\in\mathbb N$ (posso farlo perché il comportamento non dipende da un numero finito di termini). Allora

$$
S_n^a\le S_n^b\qquad\forall n\in\mathbb N.
$$

- Se $\sum a_n=+\infty$: $S_n^a\to+\infty$ (per definizione) $\Rightarrow S_n^b\to+\infty$ (confronto per i limiti) $\Rightarrow\sum b_n=+\infty$ (per definizione). Finora non è stato usato il segno costante.
- Se $\sum b_n$ converge: $S_n^b\to\ell\in\mathbb R$ (per definizione) $\Rightarrow S_n^a\to\ell_1\in\mathbb R$ (confronto, già sapendo che $S_n^a$ ha limite, finito o infinito) $\Rightarrow\sum a_n$ converge (per definizione). Qui si usa che $a_n\ge0$. $\square$

## 8. Criterio della radice

**Criterio della radice.** Supponiamo che $a_n\ge0$ definitivamente e che $\sqrt[n]{a_n}\to\ell$. Allora:

- se $\ell>1$, la serie **diverge**;
- se $\ell<1$, la serie **converge**;
- se $\ell=1$, **non si può concludere** (il PDF scrive "boh").

*Dimostrazione.*

- Se $\ell>1$, allora $a_n\to+\infty$, quindi manca la condizione necessaria e la serie diverge per forza.
- Se $\ell<1$, allora $a_n\to0$: la condizione necessaria non basta. Come nella dimostrazione del criterio della radice per i limiti, vale definitivamente (considerando il punto $\frac{\ell+1}2$ tra $\ell$ e $1$)

$$
\sqrt[n]{a_n}\le\frac{\ell+1}2,\qquad\text{cioè}\qquad a_n\le\underbrace{\left(\frac{\ell+1}2\right)^n}_{b_n}.
$$

Osserviamo che $b_n$ è una geometrica con parametro in $(0,1)$, quindi $\sum b_n$ converge. Ma allora, per il confronto, converge anche $\sum a_n$. $\square$

## 9. Criterio del rapporto

**Criterio del rapporto.** Supponiamo che $a_n>0$ definitivamente e che

$$
\lim_{n\to+\infty}\frac{a_{n+1}}{a_n}=\ell.
$$

Allora la conclusione è la stessa del criterio della radice: se $\ell>1$ la serie diverge, se $\ell<1$ converge, se $\ell=1$ non si può concludere.

*Dimostrazione.*

- Se $\ell>1$, allora $a_n\to+\infty$, quindi non vale la condizione necessaria.
- Se $\ell<1$, allora definitivamente

$$
\frac{a_{n+1}}{a_n}\le\frac{\ell+1}2,\qquad\text{cioè}\qquad a_{n+1}\le\frac{\ell+1}2\,a_n\quad\text{definitivamente}
$$

(diciamo per ogni $n\ge n_0$). Iterando,

$$
a_n\le a_{n_0}\left(\frac{\ell+1}2\right)^{n-n_0}=\underbrace{a_{n_0}\left(\frac{\ell+1}2\right)^{-n_0}}_{\text{costante}}\cdot\underbrace{\left(\frac{\ell+1}2\right)^n}_{\text{geometrica con parametro in }(0,1)}.
$$

Per il confronto con una serie geometrica convergente, la serie converge. $\square$

(Il PDF lascia implicita la conclusione finale, che è analoga a quella del criterio della radice.)

## 10. Esercizi

**Esercizio 1.** $\displaystyle\sum_{n=0}^\infty\frac{n^{25}}{2^n}$.

Criterio della radice:

$$
\sqrt[n]{a_n}=\frac{\sqrt[n]{n^{25}}}{2}\to\frac12<1
$$

$\Rightarrow$ la serie **converge**.

**Esercizio 2.** $\displaystyle\sum_{n=0}^\infty\frac{2^n+7^n}{5^n+6^n}=+\infty$.

Si ha $a_n\sim\dfrac{7^n}{6^n}=\left(\dfrac76\right)^n\to+\infty$, quindi manca la condizione necessaria e la serie diverge.

**Esercizio 3.** $\displaystyle\sum_{n=1}^\infty\left(1+\frac1n\right)^n$.

Qui $a_n\to e$, quindi non vale la condizione necessaria $\Rightarrow$ la serie **diverge**.

**Esercizio 4.** $\displaystyle\sum_{n=1}^\infty\left(1-\frac1n\right)^{n^2}$.

Criterio della radice:

$$
\sqrt[n]{a_n}=\left(1-\frac1n\right)^n\longrightarrow\frac1e<1\ \Rightarrow\ \text{la serie converge.}
$$

Il limite si calcola così:

$$
\left(1-\frac1n\right)^n=e^{n\log\left(1-\frac1n\right)}=e^{n\left(-\frac1n+o\left(\frac1n\right)\right)}=e^{-1+o(1)}\to e^{-1}.
$$

*(Il PDF segnala "un po' di esercizi veloci nel video": non sono riportati nelle pagine.)*

## Fonti e precisazioni

- [AM1_26_L033.pdf](/Users/michelangelogubinelli/Downloads/AM1_26_L033.pdf): definizione di serie e somme parziali, osservazioni 1 e 2, serie telescopiche e geometriche, proprietà algebriche.
- [AM1_26_L034.pdf](/Users/michelangelogubinelli/Downloads/AM1_26_L034.pdf): serie e paradosso di Zenone, condizione necessaria, serie a termini non negativi, criteri del confronto, della radice e del rapporto, esercizi.

Entrambi i PDF riportano **03/11/2025**, conservato in `source_date`; la data nel corso attuale è **03/11/2026**.

Precisazioni:

- le dimostrazioni per induzione di $S_n=\frac n{n+1}$ e $S_n=\log(n+1)$ sono solo annunciate nel PDF ("sembra ragionevole... dim. per induzione") e non sono svolte;
- i criteri del confronto asintotico, di Leibniz, dell'assoluta convergenza e di Dirichlet compaiono solo nell'elenco introduttivo;
- nella proprietà della somma il PDF scrive solo "quasi" e dà la dimostrazione tramite il limite della somma; la formulazione precisa dei casi in cui vale è quella del teorema sul limite di una somma;
- nell'Esercizio 2 e nell'esempio $\sum\frac{n^3+4n-1}{2n^3-75}$ il PDF scrive "$=+\infty$" per indicare la divergenza a $+\infty$;
- la conclusione finale della dimostrazione del criterio del rapporto è lasciata implicita nel PDF.
