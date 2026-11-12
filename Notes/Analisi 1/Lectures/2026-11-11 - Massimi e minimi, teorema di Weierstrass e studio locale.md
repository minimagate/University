---
type: lecture-note
course: Analisi 1
date: '2026-11-11'
title: Massimi e minimi, teorema di Weierstrass e studio locale
source_files:
- AM1_26_L041.pdf
- AM1_26_L042.pdf
source_date: '2025-11-11'
teaching_model: anthropic/claude-sonnet-5.5
---

# Massimi e minimi, teorema di Weierstrass e studio locale

Questa nota riunisce le parti **041 e 042** della lezione dell'**11 novembre 2026**. La prima parte introduce **massimo e minimo** di una funzione in una variabile, enuncia il **teorema di Weierstrass** con una dimostrazione per ordinamento (via $\inf$) e spiega **dove cercare** i punti di massimo e minimo. La seconda parte presenta alcune **varianti di Weierstrass** (funzioni periodiche, funzioni che divergono agli estremi), poi passa allo **studio locale** di una funzione intorno a un punto stazionario, con il **criterio delle derivate successive** e un esempio. Gli strumenti usati sono quelli di [[2026-10-27 - Derivate, differenziabilità e regole di derivazione]], [[2026-10-28 - Teorema di De L'Hôpital e sviluppi di Taylor]] e [[2026-10-30 - Funzioni iperboliche ed esercizi sugli sviluppi di Taylor]]; per $\inf$ e $\sup$ si veda [[2026-09-28 - Assiomi dei reali e proprietà di completezza]]. Lezione precedente: [[2026-11-10 - Teorema degli zeri, valori intermedi e monotonia tramite la derivata]].

## 1. Massimo e minimo di una funzione

**Setting.** $A\subseteq\mathbb R$, $A\neq\varnothing$, $f:A\to\mathbb R$. Si indica con
$$
f(A)=\{f(x):x\in A\}
$$
l'**immagine** di $A$.

**Definizione.** Si dice che $M=\max\{f(x):x\in A\}$ se

1. $f(x)\le M$ per ogni $x\in A$;
2. esiste $x_0\in A$ tale che $f(x_0)=M$.

In tal caso tutti gli $x_0\in A$ per cui vale la (2) si chiamano **punti di massimo**. Discorso analogo per $m=\min\{f(x):x\in A\}$ (con $f(x)\ge m$ per ogni $x$ e $f(x_0)=m$ per qualche $x_0$), con **punti di minimo**.

**Osservazioni.**

1. Massimo e minimo **non sono obbligati ad esistere**.
2. Se esistono, sono per forza **unici**.
3. I punti di massimo esistono se e solo se esiste il massimo, e **non sono obbligati ad essere unici**.
4. Massimo e minimo sono **valori assunti dalla funzione** (valori delle $y$), mentre i punti di massimo/minimo stanno in $A$ (valori delle $x$).

*(Nel PDF, un grafico a "U" su $A$ illustra il minimo $m$ sull'asse $y$ e il punto di minimo $x_0$ sull'asse $x$.)*

## 2. Teorema di Weierstrass

> **Teorema (Weierstrass "baby").** Sia $[a,b]\subseteq\mathbb R$ un intervallo e sia $f:[a,b]\to\mathbb R$ **continua**. Allora esistono per forza
> $$\max\{f(x):x\in[a,b]\},\qquad \min\{f(x):x\in[a,b]\}.$$

**Le ipotesi fondamentali sono tre:**

1. la funzione è **continua ovunque**;
2. l'intervallo ha **gli estremi** (è chiuso);
3. l'intervallo è **limitato**.

Controesempi (grafici nel PDF), uno per ciascuna ipotesi che cade:

- **ipotesi (1):** funzione non continua in un solo punto: manca il massimo;
- **ipotesi (2):** funzione continua su $[a,b)$ crescente, manca l'estremo $b$ e manca il massimo;
- **ipotesi (3):** funzione definita su una semiretta $[a,+\infty)$ (crescente con asintoto orizzontale): manca il massimo.

**Esercizio.** È possibile trovare

1. $f:[0,+\infty)\to\mathbb R$ continua senza né max né min?
2. $f:[0,1)\to\mathbb R$ continua senza né max né min?
3. $f:[0,1]\to\mathbb R$ continua tranne in $\tfrac12$ senza né max né min?

*(Nel PDF l'esercizio è solo posto, senza soluzione.)*

**Achtung!** Se falliscono tutte o alcune delle ipotesi di Weierstrass, allora "boh": massimo e minimo **possono esistere lo stesso**.

*Esempio.* $f(x)=\sin x$ con $A=\mathbb R$: max e min esistono e ci sono infiniti punti di massimo/minimo. Analogo per $f(x)=\cos x$ con $A=(0,100)$.

### 2.1 Dimostrazione via ordinamento

Dimostriamo che esiste il **minimo** (per il massimo si procede in modo analogo).

Di sicuro esiste
$$
I=\inf\{f(x):x\in[a,b]\}
$$
(per ora potrebbe essere anche $-\infty$). Poniamo
$$
x_0=\inf\Bigl\{x\in[a,b]:\ \inf\{f(t):t\in[a,x]\}=I\Bigr\}.
$$
L'insieme su cui si prende l'$\inf$ **non è vuoto**, perché contiene $b$.

**Claim:** $f(x_0)=I$. (In particolare a questo punto $I$ sarà reale, e $x_0$ è un punto di minimo.)

Di sicuro $f(x_0)\ge I$, perché $I$ è l'$\inf$ su tutto $[a,b]$. Supponiamo per assurdo che $f(x_0)>I$. Ci sono due casi.

**Caso $x_0=a$.** Prendiamo un reale $c$ con $f(x_0)>c>I$. Per **continuità** esiste $\delta>0$ tale che
$$
f(x)\ge c\qquad\forall x\in[a,a+\delta].
$$
Ne segue $\inf\{f(t):t\in[a,x]\}\ge c>I$ per ogni $x\in[a,a+\delta]$, quindi nessuno di questi $x$ appartiene all'insieme di cui $x_0$ dovrebbe essere l'$\inf$: $x_0$ non è l'$\inf$. Contraddizione.

**Caso $x_0>a$.** Prendiamo $c$ come sopra. Come sopra, per continuità
$$
f(x)\ge c\qquad\forall x\in[x_0-\delta,x_0+\delta].
$$
Osserviamo inoltre che
$$
\inf\{f(t):t\in[a,x_0-\delta]\}=c_1>I,
$$
perché altrimenti $x_0$ non sarebbe l'$\inf$. Ma allora per ogni $x\in[a,x_0+\delta]$ avremmo
$$
\inf\{f(t):t\in[a,x]\}\ge\min\{c,c_1\}>I,
$$
e "non va bene": nessun punto di $[a,x_0+\delta]$ appartiene all'insieme, quindi $x_0$ non può esserne l'$\inf$. Contraddizione.

Dunque $f(x_0)=I$; in particolare $I$ è finito ed è assunto in $x_0\in[a,b]$, cioè $I$ è il **minimo**.

*(Chiarimento aggiunto: il PDF non esplicita la parte finale "x_0 non è l'inf"; il ragionamento qui riportato è quello della traccia, con la conclusione resa esplicita. Il PDF non tratta il caso in cui $[x_0-\delta,x_0+\delta]$ esca da $[a,b]$, ad esempio $x_0=b$.)*

## 3. Come trovare punti di massimo e minimo (e quindi $M$ e $m$)

**Domanda:** come trovare i punti di max/min, e quindi anche $M$ ed $m$?

**Risposta:** i punti stanno in una di queste **3 categorie** (per $f$ su $[a,b]$):

1. **punti stazionari interni:** punti $x\in(a,b)$ tali che $f'(x)=0$;
2. **punti singolari interni:** punti $x\in(a,b)$ tali che $f'(x)$ **non esiste**;
3. **punti del bordo:** $x=a$ e $x=b$.

**Operativamente:** si calcolano tutti i punti dei tipi (1), (2), (3), li si sostituisce nella funzione e si vede dove vale di più o di meno. Se si è indecisi su un punto, lo si mette comunque nella lista: non si perde nulla.

**Dimostrazione.** Max e min esistono per Weierstrass. Prendiamo un qualunque punto $x_0$ di max/min.

- Se sta sul bordo, è di tipo (3).
- Se sta in $(a,b)$ e $f'(x_0)$ non esiste, è di tipo (2).
- Se sta in $(a,b)$ e $f'(x_0)$ esiste, quanto può valere $f'(x_0)$?
  - Se fosse $f'(x_0)>0$, per monotonia $\nearrow$ $f(x)$ vale più di $f(x_0)$ un po' a destra e meno di $f(x_0)$ un po' a sinistra, quindi $f(x_0)$ non può essere max/min.
  - Se fosse $f'(x_0)<0$, idem scambiando destra e sinistra.

Quindi l'unica possibilità è $f'(x_0)=0$, e allora è di tipo (1).

**Osservazione.** Abbiamo usato che $x_0$ è **interno** nel finale, per poter spostarsi a destra e a sinistra.

**Piccola variante.** Se $x_0=a$ è punto di minimo e $f'(x_0)$ esiste, allora
$$
f'(a)\ge0
$$
(se fosse $f'(a)<0$, un po' a destra $f(x)$ varrebbe meno di $f(a)$).

## 4. Varianti di Weierstrass

### 4.1 Variante 1: funzioni periodiche

> Sia $f:\mathbb R\to\mathbb R$ **continua e periodica**. Allora max e min esistono per forza.

**Dimostrazione.** Sia $T$ un periodo. Per Weierstrass classico esistono max e min in $[0,T]$. **Claim:** gli stessi sono max e min ovunque. Preso un qualunque $x\in\mathbb R$, per periodicità esiste $\hat x\in[0,T]$ tale che $f(x)=f(\hat x)$ (il PDF si chiede "è così ovvio che esiste?"; si ottiene traslando $x$ di un multiplo opportuno di $T$). Quindi $f(x)$ è compreso tra max e min in $[0,T]$.

### 4.2 Variante 2: divergenza a $+\infty$ ai due estremi

> Sia $f:\mathbb R\to\mathbb R$ continua. Supponiamo che
> $$\lim_{x\to+\infty}f(x)=\lim_{x\to-\infty}f(x)=+\infty.$$
> Allora esiste per forza $\min\{f(x):x\in\mathbb R\}$.

**Dimostrazione.** Consideriamo un valore a caso, ad esempio $f(0)$. Dalle definizioni di limite segue che
$$
\exists A<0\ \text{t.c.}\ f(x)\ge f(0)\ \ \forall x\le A,\qquad
\exists B>0\ \text{t.c.}\ f(x)\ge f(0)\ \ \forall x\ge B.
$$
Poniamo
$$
m:=\min\{f(x):x\in[A,B]\},
$$
che esiste per Weierstrass classico. **Claim:** $m=\min\{f(x):x\in\mathbb R\}$. Basta dimostrare che $f(x)\ge m$ per ogni $x\in\mathbb R$:

- se $x\in[A,B]$: per la definizione stessa di $m$;
- se $x\ge B$: $f(x)\ge f(0)\ge m$, per la definizione di $B$ e perché $0\in[A,B]$ e $m$ è il minimo in $[A,B]$;
- se $x\le A$: $f(x)\ge f(0)\ge m$, per la definizione di $A$ e come prima.

### 4.3 Variante 3: divergenza agli estremi di $(0,+\infty)$

> Sia $f:(0,+\infty)\to\mathbb R$ continua e
> $$\lim_{x\to0^+}f(x)=\lim_{x\to+\infty}f(x)=+\infty.$$
> Allora esiste per forza $\min\{f(x):x\in(0,+\infty)\}$.

**Idea della dimostrazione** (nel PDF è indicata come "Indizio dim."). Considero $f(7)$ e dalle definizioni di limite ottengo
$$
\exists A\in(0,7)\ \text{t.c.}\ f(x)\ge f(7)\ \ \forall x\in(0,A],\qquad
\exists B>7\ \text{t.c.}\ f(x)\ge f(7)\ \ \forall x\ge B.
$$
**Claim:**
$$
\min\{f(x):x\in[A,B]\}=\min\{f(x):x\in(0,+\infty)\}.
$$
(Il PDF non sviluppa i dettagli: sono analoghi alla variante 2, con $f(7)$ al posto di $f(0)$.)

### 4.4 Meta-variante

> Sia $D\subseteq\mathbb R$, $D\ne\varnothing$, $f:D\to\mathbb R$ continua. Se esiste un intervallo $[A,B]\subseteq D$ tale che
> $$\inf\{f(x):x\in[A,B]\}=\inf\{f(x):x\in D\},$$
> allora il minimo in $[A,B]$, che esiste per forza (Weierstrass), è anche minimo su tutto $D$.

Le varianti 2 e 3 sono casi particolari: si trova un intervallo chiuso e limitato che "cattura" l'$\inf$ globale.

## 5. Studio locale di una funzione

**Obiettivo:** capire com'è fatto il grafico di $f(x)$ vicino a un punto $x_0$ dato.

La monotonia $\nearrow$ risponde alla domanda quando $f'(x_0)\ne0$. Cosa può succedere quando $f'(x_0)=0$ (cioè nei **punti stazionari**)? Ci sono **5 possibili scenari** (il quinto è "nessuno dei precedenti"); i primi quattro sono (grafici nel PDF):

- **minimo locale**;
- **massimo locale**;
- **flesso a tangente orizzontale ascendente**;
- **flesso a tangente orizzontale discendente**.

**Definizioni.**

- $x_0$ è punto di **minimo locale** (stretto) se
$$
\exists\delta>0\ \text{t.c.}\quad f(x)>f(x_0)\ \ \forall x\in(x_0-\delta,x_0),\qquad f(x)>f(x_0)\ \ \forall x\in(x_0,x_0+\delta).
$$
- $x_0$ è punto di **flesso a tangente orizzontale discendente** se
$$
\exists\delta>0\ \text{t.c.}\quad f(x)>f(x_0)\ \ \forall x\in(x_0-\delta,x_0),\qquad f(x)<f(x_0)\ \ \forall x\in(x_0,x_0+\delta).
$$

Idem gli altri: massimo locale ($f<f(x_0)$ da entrambi i lati) e flesso ascendente ($f<f(x_0)$ a sinistra, $f>f(x_0)$ a destra).

## 6. Criterio delle derivate successive

> **Criterio.** Supponiamo che
> $$f'(x_0)=f''(x_0)=\dots=f^{(k-1)}(x_0)=0\qquad\text{e}\qquad f^{(k)}(x_0)\ne0.$$
> Allora:
>
> | | $f^{(k)}(x_0)>0$ | $f^{(k)}(x_0)<0$ |
> |---|---|---|
> | $k$ **pari** | minimo locale | massimo locale |
> | $k$ **dispari** | flesso ascendente | flesso discendente |

**Dimostrazione.** Taylor! Con il resto di Peano,
$$
f(x_0+h)=f(x_0)+\frac{f^{(k)}(x_0)}{k!}h^k+o(h^k),
$$
ma allora
$$
\lim_{h\to0}\frac{f(x_0+h)-f(x_0)}{h^k}=\frac{f^{(k)}(x_0)}{k!}.
$$
Da qui segue tutto. Vediamo un paio di casi.

**$k$ pari e $f^{(k)}(x_0)<0$.** Il limite sopra è negativo, quindi esiste $\delta>0$ tale che la frazione è negativa per ogni $h\in(-\delta,\delta)\setminus\{0\}$. Essendo $k$ pari il denominatore è $>0$, quindi il numeratore è $<0$, cioè
$$
f(x_0+h)<f(x_0)\qquad\forall h\in(-\delta,\delta)\setminus\{0\},
$$
e dunque $x_0$ è un punto di massimo locale. *(Nel PDF la conclusione è scritta "punto min" ma il segno ricavato, $f(x_0+h)<f(x_0)$, corrisponde a un massimo locale; coerentemente con la tabella del criterio.)*

**$k$ dispari e $f^{(k)}(x_0)>0$.** Come sopra la frazione è positiva per ogni $h\in(-\delta,\delta)\setminus\{0\}$.

- Per $h\in(0,\delta)$ il denominatore è $>0$, quindi il numeratore è $>0$, quindi $f(x_0+h)>f(x_0)$.
- Per $h\in(-\delta,0)$ il denominatore è $<0$, quindi il numeratore è $<0$, quindi $f(x_0+h)<f(x_0)$.

Quindi **flesso ascendente**.

I due casi restanti si trattano allo stesso modo.

> **Morale.** Nell'intorno di un punto stazionario $x_0$, $f(x_0+h)-f(x_0)$ si comporta come il **primo termine non nullo** dello sviluppo di Taylor.

## 7. Esempio 1

Sia
$$
f(x)=x^{22}+x^{11}-\sin(x^2).
$$
*(Esponenti letti dal PDF come 22 e 11, con scrittura a mano poco chiara.)*

Vista come $f:\mathbb R\to\mathbb R$ **non è iniettiva né surgettiva**. Inoltre l'equazione $f(x)=0$ ha almeno **3 radici reali**.

**Due osservazioni.**

1. $\displaystyle\lim_{x\to+\infty}f(x)=\lim_{x\to-\infty}f(x)=+\infty$. Per Weierstrass generalizzato (variante 2) esiste
$$
m=\min\{f(x):x\in\mathbb R\}.
$$
Quindi:
   - $f$ non assume valori $<m$, quindi **addio surgettività**;
   - $f$ assume almeno due volte i valori $>m$, quindi **addio iniettività**.
2. Vicino a $x=0$ abbiamo
$$
f(x)=-x^2+o(x^2),
$$
quindi l'origine è un **punto di massimo relativo**. In quel punto $f(0)=0$ e il grafico sta sotto l'asse $x$ intorno a $0$: abbiamo quindi intersezioni con l'asse $x$ sia per $x>0$ sia per $x<0$ (infatti $f\to+\infty$ da entrambi i lati e $f<0$ vicino a $0$).

*(La deduzione "almeno 3 radici": una nell'origine e una per $x>0$ e una per $x<0$ per il teorema di esistenza degli zeri; il PDF la dà come conclusione grafica, senza ripetere questo ragionamento.)*

## Fonti e precisazioni

- [AM1_26_L041.pdf](/Users/michelangelogubinelli/Downloads/AM1_26_L041.pdf): definizione di max/min, teorema di Weierstrass, dimostrazione via $\inf$, ricerca dei punti di max/min.
- [AM1_26_L042.pdf](/Users/michelangelogubinelli/Downloads/AM1_26_L042.pdf): varianti di Weierstrass, studio locale, criterio delle derivate successive, esempio 1.

Entrambi i PDF sono scritti a mano e riportano **11/11/2025**, conservato in `source_date`; la data usata per la nota è l'**11/11/2026**. Precisazioni:

- l'esercizio sui tre casi di Weierstrass (sez. 2) è lasciato senza soluzione nel PDF;
- l'idea di dimostrazione della variante 3 è solo abbozzata nel PDF;
- nella dimostrazione del criterio, il caso "$k$ pari e $f^{(k)}(x_0)<0$" è etichettato nel PDF con "punto min", mentre la disuguaglianza ricavata indica un massimo locale; qui si è seguito il segno;
- i chiarimenti segnalati come "aggiunto" non sono presenti nel PDF.
