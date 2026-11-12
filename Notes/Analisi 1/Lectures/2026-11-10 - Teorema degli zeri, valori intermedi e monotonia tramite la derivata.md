---
type: lecture-note
course: Analisi 1
date: '2026-11-10'
title: Teorema degli zeri, valori intermedi e monotonia tramite la derivata
source_files:
- AM1_26_L039.pdf
- AM1_26_L040.pdf
source_date: '2025-11-10'
teaching_model: anthropic/claude-sonnet-5.5
---

# Teorema degli zeri, valori intermedi e monotonia tramite la derivata

Questa nota riunisce due PDF. Il primo (**L039**) contiene il **teorema di esistenza degli zeri** con tre dimostrazioni, il **teorema dei valori intermedi** e un'osservazione sui sottoinsiemi connessi di $\mathbb R$ ("effetto ottico"). Il secondo (**L040**) studia i **legami tra monotonia e segno della derivata prima** (Monotonia 1, 2, 3, con il teorema di Lagrange) e li applica a tre esercizi su suriettività, biiettività e numero di soluzioni. Per le derivate si veda [[2026-10-27 - Derivate, differenziabilità e regole di derivazione]]. Lezione precedente: [[2026-11-05 - Serie a segni alterni, convergenza assoluta ed esercizi]].

## 1. Teorema di esistenza degli zeri

**Teorema.** Sia $[a,b]\subseteq\mathbb R$ un intervallo e sia $f:[a,b]\to\mathbb R$. Supponiamo che

1. $f$ sia **continua** su $[a,b]$;
2. $f(a)\cdot f(b)<0$, cioè $f$ ha **segno diverso agli estremi**.

Allora esiste almeno un punto $c\in(a,b)$ tale che
$$
\boxed{f(c)=0.}
$$

### 1.1 Osservazioni

1. Il punto $c$ **non è obbligato a essere unico**: il grafico può attraversare l'asse più volte (figura 1 del PDF, con tre zeri).
2. La **continuità su tutto $[a,b]$** è fondamentale: una funzione con un salto che scavalca l'asse, senza attraversarlo, ha segni opposti agli estremi ma nessuno zero (figura 2).
3. I **numeri reali** sono fondamentali: la funzione $f(x)=x^2-2$ su $[0,2]$ ha $f(0)=-2<0$ e $f(2)=2>0$, ma **in $\mathbb Q$ non ha radici**. La dimostrazione usa infatti la completezza (estremo inferiore, successioni monotone limitate).

### 1.2 Dimostrazione 1 (con l'estremo inferiore, per assurdo)

Senza perdita di generalità $f(a)<0$ e $f(b)>0$. Poniamo
$$
c:=\inf\{x\in[a,b]:\ f(x)>0\}.
$$
L'insieme è **non vuoto** perché contiene almeno $b$; è limitato inferiormente da $a$, quindi $c$ esiste. 

**Claim:** $f(c)=0$. Si escludono gli altri due casi.

- **Caso $f(c)>0$.** Per la continuità (permanenza del segno) esiste $\delta>0$ tale che $f(x)>0$ per ogni $x\in(c-\delta,c)$. Allora $c$ non può essere l'estremo inferiore, perché punti più a sinistra stanno nell'insieme. **Assurdo.**
- **Caso $f(c)<0$.** Per continuità esiste $\delta>0$ tale che $f(x)<0$ per ogni $x\in(c,c+\delta)$. Ma per la caratterizzazione dell'estremo inferiore dovrebbe esistere $x\in(c,c+\delta)$ con $f(x)>0$. **Assurdo.**

Rimane $f(c)=0$. $\square$

### 1.3 Variazioni sulla definizione di $c$

Se si volesse usare il $\sup$, si potrebbe porre $c:=\sup\{x\in[a,b]: f(x)<0\}$. Sono possibili in tutto **quattro definizioni**:
$$
\inf\{f>0\},\qquad \inf\{f\ge0\},\qquad \sup\{f<0\},\qquad \sup\{f\le0\}.
$$

**Esercizi proposti nel PDF:**

1. rifare la dimostrazione con ciascuna delle quattro definizioni;
2. trovare un esempio in cui le quattro definizioni producono **quattro valori di $c$ diversi**.

### 1.4 Dimostrazione 2 (con l'estremo inferiore, diretta)

Come prima, con $f(a)<0<f(b)$, poniamo $c:=\inf\{x\in[a,b]: f(x)>0\}$.

**Passo 1: $f(c)\le0$.** Osserviamo che $f(x)\le0$ per ogni $x\in[a,c)$ (altrimenti l'$\inf$ sarebbe $<c$). Quindi, per continuità,
$$
f(c)=\lim_{x\to c^-}f(x)\le0.
$$

**Passo 2: $f(c)\ge0$.** Per la caratterizzazione dell'$\inf$, per ogni $\delta>0$ esiste $x\in[c,c+\delta]$ con $f(x)>0$. Scegliendo $\delta=\frac1n$ si trova $x_n$ con
$$
c\le x_n\le c+\frac1n,\qquad f(x_n)>0.
$$
Per il teorema dei carabinieri $x_n\to c$, quindi per continuità
$$
f(c)=\lim_{n\to+\infty}f(x_n)\ge0,
$$
perché $f(x_n)>0$ per ogni $n$ (il limite di termini positivi è $\ge0$).

Mettendo insieme le due disuguaglianze si ha $f(c)=0$. $\square$

### 1.5 Dimostrazione 3 (bisezione)

Si costruisce una successione di intervalli $[a_n,b_n]$ così.

- Si pone $[a_0,b_0]=[a,b]$ (con $f(a)<0<f(b)$).
- Si guarda il **punto medio**: se in esso $f=0$ abbiamo finito. Altrimenti si ottiene un nuovo intervallo $[a_1,b_1]$, metà del precedente, tale che $f$ assume valori di segno diverso agli estremi:
$$
f(a_1)<0,\qquad f(b_1)>0.
$$
- Procedendo in modo analogo si trova una successione $[a_n,b_n]$ con
$$
f(a_n)<0,\qquad f(b_n)>0,\qquad b_n-a_n=\frac{b-a}{2^n},
$$
cioè la lunghezza **si dimezza a ogni passaggio**.

Ora:

- la successione $(a_n)$ è **debolmente crescente** e $a_n\le b$ sempre;
- la successione $(b_n)$ è **debolmente decrescente** e $b_n\ge a$ sempre.

Quindi, essendo monotone e limitate, $a_n\to a_\infty$ e $b_n\to b_\infty$. Inoltre
$$
b_n-a_n=\frac{b-a}{2^n}\to0\ \Longrightarrow\ b_\infty-a_\infty=0,
$$
dunque $a_\infty=b_\infty=:c$. Questo è il punto cercato. Infatti, per continuità,
$$
f(c)=f(a_\infty)=\lim_{n}\underbrace{f(a_n)}_{<0}\le0,\qquad
f(c)=f(b_\infty)=\lim_{n}\underbrace{f(b_n)}_{>0}\ge0,
$$
e quindi $f(c)=0$. $\square$

## 2. Teorema dei valori intermedi

**Teorema (Intermediate Value Theorem).** Sia $f:[a,b]\to\mathbb R$ continua e sia $\lambda\in\mathbb R$. Supponiamo che
$$
f(a)<\lambda\quad\text{e}\quad f(b)>\lambda\qquad(\text{o viceversa}).
$$
Allora esiste almeno un $c\in(a,b)$ tale che
$$
\boxed{f(c)=\lambda.}
$$

**Dimostrazione.** Si applica il teorema di esistenza degli zeri alla funzione $g(x)=f(x)-\lambda$, che è continua e ha segno diverso agli estremi. $\square$

## 3. "Effetto ottico di Analisi 1": convesso e connesso

Il PDF osserva che due parole molto simili, **convesso** e **connesso**, indicano nozioni diverse in generale ma coincidenti per i sottoinsiemi di $\mathbb R$.

**Definizione (convesso).** Un sottoinsieme $A\subseteq\mathbb R$ si dice **convesso** se, per ogni coppia di elementi $P$ e $Q$ di $A$, anche tutto il segmento $PQ$ è contenuto in $A$.

**Definizione (connesso, "brutale").** Un sottoinsieme $A\subseteq\mathbb R$ si dice **connesso** se è fatto "da un pezzo solo". *(Il PDF dà solo questa definizione informale.)*

**Effetto ottico.** Per i sottoinsiemi di $\mathbb R$ vale: convesso $\Longleftrightarrow$ connesso.

I sottoinsiemi convessi/connessi di $\mathbb R$ sono **soltanto**:

- l'insieme vuoto $\emptyset$;
- i punti singoli $\{a\}$;
- gli intervalli, con o senza estremi: $(a,b)$, $(a,b]$, $[a,b)$, $[a,b]$;
- le semirette: $[a,+\infty)$, $(a,+\infty)$, $(-\infty,a)$, $(-\infty,a]$;
- tutto $\mathbb R$.

### 3.1 Teorema sulle immagini di insiemi connessi

**Teorema.** Sia $A\subseteq\mathbb R$ **non vuoto e connesso**, e sia $f:A\to\mathbb R$ **continua**. Allora $f$ assume in $A$ tutti i valori **strettamente compresi** tra $\inf f$ e $\sup f$. (L'$\inf$ e il $\sup$ possono essere assunti o meno, a seconda dei casi.)

**Dimostrazione.** Sia $\inf f<\lambda<\sup f$. Per la caratterizzazione di $\inf$ e $\sup$ esiste $a\in A$ con $f(a)<\lambda$ e, per lo stesso motivo, esiste $b\in A$ con $f(b)>\lambda$. Ora si usa il teorema dei valori intermedi sull'intervallo di estremi $a$ e $b$, che per connessione/convessità è contenuto in $A$. Dunque esiste un punto con $f=\lambda$. $\square$

*(Il PDF non lo esplicita, ma il teorema dice che l'immagine di un connesso tramite una funzione continua è ancora un intervallo.)*

## 4. Legami tra monotonia e segno della derivata prima

Il PDF L040 (intestazione "ANALISI 1 – LEZIONE 040", data 10/11/2025) studia come il **segno della derivata prima** si collega alla **monotonia**, in tre passi numerati "Monotonia 1, 2, 3". Per la definizione di derivata e le regole di calcolo si veda [[2026-10-27 - Derivate, differenziabilità e regole di derivazione]].

### 4.1 Monotonia 1: segno della derivata in un punto

**Setting.** Sia $x_0\in\mathbb R$, $r>0$ e $f:(x_0-r,x_0+r)\to\mathbb R$ (cioè $f$ è definita "dalle parti di $x_0$"). Supponiamo che
$$
f'(x_0)>0.
$$

**Teorema (Monotonia 1).** Allora (intuitivamente: un po' a destra di $x_0$ la funzione vale di più, un po' a sinistra vale di meno) esiste $\delta\in(0,r)$ tale che
$$
\boxed{f(x)>f(x_0)\ \ \forall x\in(x_0,x_0+\delta),\qquad f(x)<f(x_0)\ \ \forall x\in(x_0-\delta,x_0).}
$$

> **Achtung!** La tesi **non** è che $f$ sia monotona in $(x_0-\delta,x_0+\delta)$. Si confronta soltanto il valore in ciascun punto vicino con il valore **in $x_0$**, non i valori tra loro. Nel PDF c'è una figura con un grafico oscillante (non monotono) vicino a $x_0$, che sta comunque nelle due zone ombreggiate: sopra $f(x_0)$ a destra, sotto $f(x_0)$ a sinistra.

**Dimostrazione.** Ricordiamo la definizione di derivata:
$$
f'(x_0)=\lim_{h\to0}\frac{f(x_0+h)-f(x_0)}{h}.
$$
Se $f'(x_0)>0$, per la **permanenza del segno** esiste $\delta>0$ tale che
$$
\frac{f(x_0+h)-f(x_0)}{h}>0\qquad\forall h\in(-\delta,\delta)\setminus\{0\}.
$$

- Per $h>0$ il denominatore è $>0$, quindi anche il numeratore è $>0$, cioè $f(x_0+h)>f(x_0)$ per ogni $h\in(0,\delta)$.
- Per $h<0$, allo stesso modo (il denominatore è $<0$, quindi il numeratore è $<0$), $f(x_0+h)<f(x_0)$ per ogni $h\in(-\delta,0)$. $\square$

*(Nel PDF la tesi dei due punti è scritta con "$f(x_0+\delta)$" al posto di $f(x_0+h)$; la forma con $h$ qui sopra è la lettura coerente con l'enunciato: spiegazione aggiunta.)*

**Osservazione.** Discorso analogo con l'ipotesi $f'(x_0)<0$ (disuguaglianze invertite: $f(x)<f(x_0)$ a destra, $f(x)>f(x_0)$ a sinistra).

### 4.2 Monotonia 2: segno della derivata su un intervallo

**Setting.** Sia $f:(a,b)\to\mathbb R$ **derivabile in tutto** $(a,b)$. Allora valgono le seguenti implicazioni:

| | Ipotesi | Tesi |
|---|---|---|
| (i) | $f'(x)\ge0\ \ \forall x\in(a,b)$ | $f$ debolmente crescente in $(a,b)$ |
| (ii) | $f'(x)>0\ \ \forall x\in(a,b)$ | $f$ strettamente crescente in $(a,b)$ |
| (iii) | $f$ debolmente crescente in $(a,b)$ | $f'(x)\ge0\ \ \forall x\in(a,b)$ |
| (iv) | $f$ strettamente crescente in $(a,b)$ | $f'(x)\ge0\ \ \forall x\in(a,b)$ |

> **Attenzione (nota in rosso nel PDF, in (iv)):** "guai a pensare che sia stretta". Nella tesi di (iv) la disuguaglianza è **debole**: la stretta crescita **non** implica $f'>0$.

**Esempio.** $f(x)=x^3$ è strettamente crescente in $(-1,1)$, ma $f'(x)=3x^2$ si annulla per $x=0$.

### 4.3 Il "teorema misterioso" (Lagrange)

**Teorema (Lagrange).** Sia $f:[a,b]\to\mathbb R$. Supponiamo che

1. $f$ sia **continua** su $[a,b]$ (estremi compresi);
2. $f$ sia **derivabile** in $(a,b)$ (se lo è anche in $[a,b]$, ancora meglio).

Allora esiste almeno un punto $c\in(a,b)$ tale che
$$
\boxed{f(b)-f(a)=(b-a)\,f'(c).}
$$

**Interpretazione geometrica.** Lo si scrive come
$$
\underbrace{\frac{f(b)-f(a)}{b-a}}_{\text{coeff. angolare della retta }AB}=\underbrace{f'(c)}_{\text{coeff. angolare della tangente nel punto di ascissa }c},
$$
dove $A=(a,f(a))$ e $B=(b,f(b))$. Quindi: **esiste almeno un punto in cui la retta tangente è parallela ad $AB$**. Nel PDF la figura mostra un grafico da $A$ a $B$ con tre punti $c$ possibili (il punto non è unico).

*(Il PDF non dimostra il teorema: lo usa come "misterioso", cioè come strumento noto la cui dimostrazione non viene data qui.)*

### 4.4 Dimostrazione di Monotonia 2

**(i) + (ii).** Siano $a<x_1<x_2<b$. Per Lagrange su $[x_1,x_2]$ esiste un punto "misterioso" $c\in(x_1,x_2)$ tale che
$$
f(x_2)-f(x_1)=\underbrace{(x_2-x_1)}_{>0}\cdot f'(c).
$$

- Se $f'\ge0$ sempre, allora $f(x_2)\ge f(x_1)$ sempre.
- Se $f'>0$ sempre, allora $f(x_2)>f(x_1)$ sempre.

**(iii) + (iv).** Sia $x_0\in(a,b)$. Per monotonia, $f(x_0+h)\ge f(x_0)$ per $h>0$ e abbastanza piccolo. Ma allora
$$
f'(x_0)=\lim_{h\to0^+}\underbrace{\frac{f(x_0+h)-f(x_0)}{h}}_{\ge0}\ \ge0.
$$

**Osservazione.** Facendo $h\to0^-$ la frazione è comunque $\ge0$ (numeratore e denominatore entrambi $\le0$): spiegazione aggiunta, coerente con il PDF che nota "la frazione era comunque $\ge0$". Se avessi la **stretta crescenza** avrei
$$
\frac{f(x_0+h)-f(x_0)}{h}>0\qquad\text{per }h>0\text{ piccolo},
$$
ma **le disuguaglianze strette non passano al limite**: al limite si ottiene soltanto $\ge0$. Per questo in (iv) la tesi è debole. $\square$

### 4.5 Monotonia 3 (annullamento sporadico)

**Teorema (Monotonia 3).** Sia $f:(a,b)\to\mathbb R$ derivabile in ogni punto. Supponiamo che

1. $f'(x)\ge0$ per ogni $x\in(a,b)$;
2. $f'$ **non sia nulla in un intero intervallo** (annullamento **sporadico**).

Allora $f$ è **strettamente crescente** in $(a,b)$ (e non solo debolmente).

**Dimostrazione.** Già sappiamo (Monotonia 2, (i)) che $f$ è debolmente crescente. Se non lo fosse strettamente, ci sarebbe almeno un **tratto piatto**, nel quale $f'(x)$ sarebbe $=0$ sempre: ma questo contraddice l'ipotesi 2. $\square$

*(Il PDF dà solo questo argomento; il passaggio "tratto piatto $\Rightarrow f'=0$ su un intero intervallo" è lasciato implicito.)*

## 5. Esercizi sul legame tra monotonia, continuità e valori intermedi

Gli esercizi di L040 combinano i **valori intermedi** (sezioni 2 e 3.1) con la **monotonia** (sezione 4).

### Esercizio 1: suriettività

Sia $f:(0,+\infty)\to\mathbb R$ definita da
$$
f(x)=\log x-\arctan\bigl(e^x+x^2\bigr)+x^3.
$$
**Dimostrare che $f$ è suriettiva.**

Basta osservare che $f$ è **continua** e che
$$
\lim_{x\to+\infty}f(x)=+\infty,\qquad\lim_{x\to0^+}f(x)=-\infty.
$$
Essendo $(0,+\infty)$ **connesso**, $f$ assume tutti i valori tra $\inf f$ e $\sup f$ (teorema 3.1), cioè tutti i valori reali. $\blacksquare$

*(Spiegazione aggiunta per i limiti: per $x\to0^+$, $\log x\to-\infty$, mentre $\arctan(\cdot)$ è limitato e $x^3\to0$; per $x\to+\infty$, $\arctan(\cdot)$ è limitato e $x^3$ domina $\log x$.)*

### Esercizio 2: biiettività

Sia $f:\mathbb R\to\mathbb R$, $f(x)=x+\sin x$. **Dimostrare che è biiettiva.**

- **Suriettiva.** Poiché $\lim_{x\to+\infty}f(x)=+\infty$ e $\lim_{x\to-\infty}f(x)=-\infty$, di sicuro è suriettiva (come nell'esercizio 1, per continuità e connessione di $\mathbb R$).
- **Iniettiva.** Ora $f'(x)=1+\cos x\ge0$ per ogni $x\in\mathbb R$ e inoltre
$$
f'(x)=0\iff\cos x=-1\iff x=(2k+1)\pi,\ k\in\mathbb Z,
$$
quindi $f'$ ha **annullamento sporadico**. Per Monotonia 3, $f$ è strettamente crescente, dunque **iniettiva**. $\blacksquare$

### Esercizio 3: almeno tre soluzioni reali

**Dimostrare che l'equazione**
$$
x^5-\arctan x+\log\bigl(1+x^{20}\bigr)=0
$$
**ha almeno tre soluzioni reali.**

Chiamiamo $f(x)$ il primo membro. Il PDF osserva:

- $\displaystyle\lim_{x\to\pm\infty}f(x)=\pm\infty$ (spiegazione aggiunta: domina $x^5$);
- per $x\to0$ $f(x)=-x+o(x)$, da cui $f'(0)=-1$. *(Nel PDF lo sviluppo appare scritto "$x+o(x)$", ma $f'(0)=-1$ richiede $-x+o(x)$: infatti $-\arctan x=-x+o(x)$, $x^5=o(x)$ e $\log(1+x^{20})=o(x)$. Correzione aggiunta.)*
- Per **Monotonia 1**, con $f'(0)<0$ e $f(0)=0$: esiste $x_1<0$ con $f(x_1)>0$ ed esiste $x_2>0$ con $f(x_2)<0$ *(nel PDF la seconda disuguaglianza è poco leggibile; $f(x_2)<0$ è la lettura coerente con $f'(0)<0$ e con la figura)*.

Il PDF si ferma qui (nella pagina c'è il grafico con $x_1<0<x_2$). **Conclusione, spiegazione aggiunta:** per il teorema degli zeri
- su $(-\infty,x_1)$ ($f\to-\infty$ a sinistra, $f(x_1)>0$) esiste uno zero;
- $x=0$ è uno zero ($f(0)=0$);
- su $(x_2,+\infty)$ ($f(x_2)<0$, $f\to+\infty$) esiste uno zero.

I tre intervalli sono disgiunti, quindi ci sono **almeno tre soluzioni reali**.

## Fonti e precisazioni

- `AM1_26_L039.pdf`: intestazione "ANALISI 1 – LEZIONE 039", data **10/11/2025**. Contiene il teorema degli zeri (tre dimostrazioni), il teorema dei valori intermedi e l'"effetto ottico" convesso/connesso (sezioni 1-3).
- `AM1_26_L040.pdf`: intestazione "ANALISI 1 – LEZIONE 040", data **10/11/2025**. Contiene i legami tra monotonia e segno della derivata (Monotonia 1, 2, 3, Lagrange) e tre esercizi (sezioni 4-5).
- Nel PDF L039 il termine "convesso" nella prima definizione è scritto con la stessa grafia di "connesso" (l'effetto ottico del titolo); la prima definizione (segmento $PQ$) è quella di convesso, la seconda ("da un pezzo solo") quella di connesso.
- Nella dimostrazione 2 (sezione 1.4) si usa implicitamente $c>a$ (garantito da $f(a)<0$ e dalla continuità); il PDF non lo esplicita.
- Il teorema di Lagrange è enunciato ma non dimostrato in L040.
- L'esercizio 3 di L040 si interrompe senza conclusione sulla pagina: la parte finale è aggiunta.
