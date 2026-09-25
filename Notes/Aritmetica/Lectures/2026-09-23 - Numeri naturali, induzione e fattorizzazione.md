---
type: lecture-note
course: Aritmetica
date: 2026-09-23
title: Numeri naturali, induzione e fattorizzazione
source_transcript: _transcripts/Aritmetica/2026-09-23 - Numeri naturali,
  induzione e fattorizzazione.md
source_hash: sha256:bae8eb904bb68ea992cfe5c76090ed12fc96e585ed8cbe50270c1b5e0eead68d
teaching_model: openai/gpt-5.6-luna
taught_at: 2026-09-23T12:13:44.649Z
---

# Numeri naturali, induzione e fattorizzazione

## 1. Gli insiemi numerici e le operazioni

### 1.1 Numeri naturali

I numeri naturali sono i numeri utilizzati per contare. L’idea intuitiva è associare agli oggetti di un insieme i numeri che indicano quanti sono. Ad esempio, se ci sono cinque oggetti, il numero $5$ rappresenta la cardinalità dell’insieme.

Un altro modo per stabilire che due insiemi hanno lo stesso numero di elementi consiste nel metterli in corrispondenza biunivoca. Se a ogni bambino posso associare esattamente un oggetto e ogni oggetto viene associato a un solo bambino, allora i due insiemi hanno lo stesso numero di elementi.

In questo corso si adotta la convenzione

$$
\mathbb{N}=\{0,1,2,3,\ldots\}.
$$

Lo zero è dunque considerato un numero naturale.

I numeri naturali sono chiusi rispetto alla somma: se $m,n\in\mathbb{N}$, allora $m+n\in\mathbb{N}$. Al contrario, non sono chiusi rispetto alla sottrazione. L’equazione

$$
x+3=0
$$

non ha soluzione in $\mathbb{N}$, perché nei naturali non esiste l’opposto di $3$. Per risolverla occorre introdurre i numeri interi, nei quali compare il numero $-3$.

Analogamente, l’equazione

$$
5x+8=0
$$

non ha soluzione naturale, ma può essere risolta introducendo prima i numeri interi e poi, eventualmente, i numeri razionali.

### 1.2 Numeri interi, razionali e reali

I numeri interi comprendono i naturali e i loro opposti:

$$
\mathbb{Z}=\{\ldots,-2,-1,0,1,2,\ldots\}.
$$

I numeri razionali sono i numeri rappresentabili come rapporto di due interi, con denominatore non nullo:

$$
\mathbb{Q}
=
\left\{
\frac{m}{n}
\;\middle|\;
m\in\mathbb{Z},\ n\in\mathbb{Z}\setminus\{0\}
\right\}.
$$

Le frazioni equivalenti vengono identificate. Per esempio,

$$
\frac{1}{2}=\frac{2}{4}=\frac{3}{6},
$$

perché rappresentano lo stesso numero razionale. Formalmente si considera quindi una relazione di equivalenza tra frazioni e si identificano tutte le frazioni appartenenti alla stessa classe di equivalenza.

Un numero razionale può essere scritto in forma decimale finita oppure periodica. Per esempio:

$$
\frac{3}{4}=0,75,
\qquad
\frac{1}{3}=0,\overline{3}.
$$

Viceversa, ogni sviluppo decimale finito o periodico rappresenta un numero razionale. Ad esempio, uno sviluppo periodico può essere trasformato in una frazione mediante la usuale tecnica algebrica.

I numeri reali $\mathbb{R}$ comprendono sia i numeri razionali sia i numeri irrazionali:

$$
\mathbb{Q}\subset\mathbb{R}.
$$

Un numero reale può avere uno sviluppo decimale infinito non periodico. Un esempio è il numero

$$
0,101001000100001\ldots,
$$

in cui tra due $1$ compaiono blocchi di zeri di lunghezza crescente. Questo sviluppo non è periodico e quindi il numero non è razionale.

Un altro esempio fondamentale è $\sqrt{2}$, che non è un numero razionale. La dimostrazione dell’irrazionalità di $\sqrt{2}$ è un esempio classico di dimostrazione per assurdo.

Si introduce poi l’insieme dei numeri complessi $\mathbb{C}$, che contiene i reali e consente, tra le altre cose, di risolvere equazioni come

$$
x^2+1=0.
$$

Infatti, nei complessi si introduce l’unità immaginaria $i$, definita dalla proprietà

$$
i^2=-1.
$$

La lezione si concentra tuttavia soprattutto sui numeri naturali.

---

## 2. Operazioni e proprietà algebriche

In generale, un’operazione binaria su un insieme $X$ è una funzione

$$
\ast\colon X\times X\longrightarrow X.
$$

A una coppia $(a,b)$ di elementi di $X$ viene associato un unico elemento $a\ast b\in X$.

Sono esempi di operazioni:

- la somma;
- il prodotto;
- la differenza, quando l’insieme è chiuso rispetto alla sottrazione;
- la divisione, quando il denominatore è non nullo e il risultato resta nell’insieme;
- l’unione tra insiemi, considerata come operazione sull’insieme delle parti.

Le operazioni possono possedere diverse proprietà.

### Commutatività

Un’operazione $\ast$ è commutativa se

$$
a\ast b=b\ast a
\qquad
\forall a,b\in X.
$$

La somma e il prodotto di numeri sono commutativi:

$$
a+b=b+a,
\qquad
ab=ba.
$$

La sottrazione e la divisione, invece, non sono commutative in generale.

### Associatività

Un’operazione $\ast$ è associativa se

$$
(a\ast b)\ast c=a\ast(b\ast c)
\qquad
\forall a,b,c\in X.
$$

Somma e prodotto sono associativi:

$$
(a+b)+c=a+(b+c),
$$

$$
(ab)c=a(bc).
$$

La proprietà associativa permette di omettere le parentesi quando si eseguono somme o prodotti.

### Elemento neutro

Un elemento $e\in X$ è neutro per $\ast$ se

$$
a\ast e=e\ast a=a
\qquad
\forall a\in X.
$$

Per la somma, l’elemento neutro è $0$:

$$
a+0=0+a=a.
$$

Per il prodotto, l’elemento neutro è $1$:

$$
a\cdot 1=1\cdot a=a.
$$

### Inverso

L’inverso di un elemento dipende dall’operazione considerata.

Per la somma, l’inverso di $a$ è il numero $-a$, perché

$$
a+(-a)=0.
$$

Per il prodotto, l’inverso di un elemento non nullo $a$ è $\frac{1}{a}$, perché

$$
a\cdot\frac{1}{a}=1.
$$

Nei numeri naturali non tutti questi inversi esistono: per esempio, $3$ non ha opposto naturale. L’ampliamento degli insiemi numerici serve anche a rendere possibili nuove operazioni e nuove equazioni.

In generale, un insieme dotato di operazioni è tanto più strutturato quanto più proprietà soddisfano tali operazioni. Tuttavia, una struttura con molte proprietà può diventare anche meno interessante dal punto di vista matematico, perché alcune operazioni diventano troppo semplici o banali. L’obiettivo è quindi studiare le proprietà in modo da capire quali conseguenze producono sulla struttura.

---

# 3. Definizione assiomatica dei numeri naturali

I numeri naturali possono essere introdotti intuitivamente contando, ma in matematica vengono anche caratterizzati assiomaticamente.

Un assioma è un’affermazione assunta come base della teoria, senza essere dimostrata all’interno della teoria stessa.

## 3.1 Elemento iniziale e successore

Si assume che esista un elemento iniziale, scelto convenzionalmente come $0$.

A ogni numero naturale $n$ è associato un successore, indicato con

$$
n+1.
$$

Il successore di $0$ è $1$, il successore di $1$ è $2$, e così via:

$$
0,\ 1,\ 2,\ 3,\ldots
$$

Il nome assegnato all’elemento iniziale è una convenzione. Si potrebbe scegliere un simbolo diverso da $0$, ma la scelta di $0$ è quella usuale e rende naturale la notazione dei numeri.

La struttura fondamentale dei naturali è quindi costituita da:

1. un elemento iniziale;
2. un’operazione di passaggio al successore;
3. il principio che permette di ottenere tutti i naturali a partire dall’elemento iniziale.

Tra le proprietà essenziali della costruzione vi sono inoltre:

- $0$ non è il successore di alcun numero naturale;
- numeri naturali distinti hanno successori distinti.

In termini intuitivi, ogni numero naturale si ottiene partendo da $0$ e applicando un numero finito di volte l’operazione di successore.

---

# 4. Il principio del minimo

## 4.1 Enunciato

Il principio del minimo, o principio del buon ordinamento, afferma che ogni sottoinsieme non vuoto dei numeri naturali possiede un elemento minimo.

Formalmente:

> Se $S\subseteq\mathbb{N}$ e $S\neq\varnothing$, allora esiste $m\in S$ tale che
>
> $$
> m\leq n
> \qquad
> \forall n\in S.
> $$

L’elemento $m$ viene chiamato minimo di $S$.

Questo principio è caratteristico dei numeri naturali e costituisce una delle ragioni per cui l’ordine dei naturali è particolarmente utile nelle dimostrazioni.

## 4.2 Interpretazione intuitiva

Immaginiamo di rappresentare i numeri naturali come punti allineati:

$$
0,\ 1,\ 2,\ 3,\ 4,\ldots
$$

Supponiamo di colorare alcuni di questi punti, ottenendo un sottoinsieme non vuoto $S$.

Si può procedere da sinistra verso destra:

- si controlla se $0\in S$;
- se $0\notin S$, si controlla se $1\in S$;
- poi si controlla $2$, poi $3$, e così via.

Poiché $S$ contiene almeno un elemento, prima o poi si incontra un elemento appartenente a $S$. Il primo elemento incontrato è necessariamente il minimo di $S$: tutti gli elementi precedenti non appartengono a $S$.

Questa idea dipende dal fatto che i naturali hanno un punto iniziale, $0$, e sono ordinati in modo discreto.

---

# 5. Principio di induzione matematica

Il principio di induzione è uno strumento per dimostrare che una proprietà vale per tutti i numeri naturali, oppure per tutti i naturali a partire da un certo punto.

Sia $P(n)$ una proprietà definita per $n\in\mathbb{N}$.

## 5.1 Forma debole dell’induzione

La forma usuale dell’induzione afferma che, se:

1. **passo base**: $P(n_0)$ è vera;
2. **passo induttivo**: per ogni $n\geq n_0$,

   $$
   P(n)\Longrightarrow P(n+1),
   $$

allora

$$
P(n)\text{ è vera per ogni }n\geq n_0.
$$

Il passaggio induttivo si può scrivere anche nella forma

$$
\forall n\geq n_0,\quad
\bigl(P(n)\Rightarrow P(n+1)\bigr).
$$

L’ipotesi $P(n)$ viene chiamata **ipotesi induttiva**. La proprietà $P(n+1)$ è la tesi del passo induttivo.

### Schema logico

Il ragionamento è analogo a una successione di tessere del domino:

- si fa cadere la prima tessera;
- si dimostra che ogni tessera, quando cade, fa cadere la successiva;
- di conseguenza cadono tutte le tessere.

Nel caso dei numeri naturali:

- il passo base corrisponde alla prima tessera;
- il passo induttivo garantisce il passaggio da $n$ a $n+1$.

È essenziale verificare entrambe le parti. Non basta dimostrare che, se la proprietà vale a un certo livello, allora vale al livello successivo: occorre anche verificare che la catena inizi effettivamente dal valore corretto.

## 5.2 Esempio: somma dei primi numeri naturali

Una formula classica è

$$
1+2+\cdots+n=\frac{n(n+1)}{2}.
$$

Definiamo la proprietà

$$
P(n):\qquad
1+2+\cdots+n=\frac{n(n+1)}{2}.
$$

### Passo base

Per $n=1$:

$$
1=\frac{1\cdot(1+1)}{2}
=\frac{2}{2}
=1.
$$

Quindi $P(1)$ è vera.

### Passo induttivo

Supponiamo vera $P(n)$, cioè supponiamo che

$$
1+2+\cdots+n=\frac{n(n+1)}{2}.
$$

Dobbiamo dimostrare $P(n+1)$:

$$
1+2+\cdots+n+(n+1)
=
\frac{(n+1)(n+2)}{2}.
$$

Usando l’ipotesi induttiva:

$$
\begin{aligned}
1+2+\cdots+n+(n+1)
&=
\frac{n(n+1)}{2}+(n+1)\\
&=
\frac{n(n+1)+2(n+1)}{2}\\
&=
\frac{(n+1)(n+2)}{2}.
\end{aligned}
$$

Quindi $P(n+1)$ è vera. Per il principio di induzione, la formula vale per ogni $n\geq 1$.

## 5.3 Importanza della scrittura formale

Nelle dimostrazioni per induzione occorre mantenere chiara la distinzione tra:

- la proprietà $P(n)$;
- l’ipotesi induttiva, cioè l’assunzione che $P(n)$ sia vera;
- la proprietà successiva $P(n+1)$;
- l’indice iniziale $n_0$.

Una scrittura imprecisa può nascondere errori logici. Ad esempio, non è corretto scrivere semplicemente una somma con puntini senza specificare chiaramente quali siano i termini e quale sia l’indice finale.

Per una somma come

$$
1+2+\cdots+n
$$

i puntini indicano una successione di termini, ma in una dimostrazione più complessa è spesso opportuno usare una notazione formale, come

$$
\sum_{k=1}^{n} k.
$$

La precisione nella notazione diventa particolarmente importante quando le formule sono più complicate.

---

# 6. Dimostrazione del principio di induzione mediante il principio del minimo

Il principio di induzione e il principio del minimo sono equivalenti: ciascuno può essere utilizzato per dimostrare l’altro.

## 6.1 Dal principio del minimo all’induzione

Supponiamo di avere una proprietà $P(n)$ definita per ogni $n\geq n_0$ e di assumere:

1. $P(n_0)$ è vera;
2. per ogni $n\geq n_0$,

   $$
   P(n)\Longrightarrow P(n+1).
   $$

Vogliamo dimostrare che $P(n)$ è vera per ogni $n\geq n_0$.

Supponiamo per assurdo che esista almeno un numero naturale $n\geq n_0$ per cui $P(n)$ è falsa. Consideriamo l’insieme dei controesempi:

$$
S=\{n\in\mathbb{N}: n\geq n_0 \text{ e } P(n)\text{ è falsa}\}.
$$

Per ipotesi, $S\neq\varnothing$. Per il principio del minimo, $S$ ha un elemento minimo, che indichiamo con $m_0$.

Poiché $P(n_0)$ è vera, il minimo controesempio non può essere $n_0$. Dunque

$$
m_0>n_0.
$$

In particolare, $m_0-1\geq n_0$. Per la minimalità di $m_0$, il numero $m_0-1$ non appartiene a $S$, quindi $P(m_0-1)$ è vera.

Dal passo induttivo segue allora

$$
P(m_0-1)\Longrightarrow P(m_0),
$$

e pertanto $P(m_0)$ è vera. Ma questo contraddice il fatto che $m_0\in S$, cioè che $P(m_0)$ sia falsa.

Abbiamo ottenuto una contraddizione. Quindi $S$ è vuoto e $P(n)$ è vera per ogni $n\geq n_0$.

### Struttura della dimostrazione

La dimostrazione segue questo schema:

1. si suppone che la tesi non valga per qualche naturale;
2. si considera l’insieme dei controesempi;
3. si sceglie il più piccolo controesempio;
4. si dimostra che il suo predecessore non è un controesempio;
5. si usa il passo induttivo per dimostrare che neppure il minimo controesempio è un controesempio;
6. si ottiene una contraddizione.

## 6.2 Dall’induzione al principio del minimo

Supponiamo di assumere il principio di induzione e consideriamo un insieme non vuoto

$$
S\subseteq\mathbb{N}.
$$

Vogliamo dimostrare che $S$ ha un minimo.

Supponiamo per assurdo che $S$ non abbia minimo. Definiamo la proprietà

$$
P(n):\qquad n\notin S.
$$

Se $0\notin S$, allora $P(0)$ è vera.

Supponiamo ora che $P(n)$ sia vera, cioè $n\notin S$. Se fosse $n+1\in S$, allora, poiché $S$ non ha minimo, dovrebbe esistere un elemento di $S$ strettamente minore di $n+1$. Questo elemento dovrebbe essere minore o uguale a $n$, in contrasto con l’ipotesi che nessuno dei numeri precedenti appartenga a $S$. Pertanto anche $n+1\notin S$.

Per induzione, nessun numero naturale appartiene a $S$, cioè

$$
S=\varnothing,
$$

in contraddizione con l’ipotesi $S\neq\varnothing$.

Quindi $S$ deve possedere un minimo.

Le due proprietà sono dunque equivalenti:

- principio del minimo;
- principio di induzione.

---

# 7. Errori nell’induzione: il passo base

Il passo base non è una formalità trascurabile. Deve essere verificato nel punto corretto, cioè nel primo indice a partire dal quale si vuole dimostrare la proprietà.

## 7.1 Un esempio fallace

Si consideri l’affermazione scherzosa secondo cui:

> In ogni insieme di $n$ studenti, tutti gli studenti hanno gli occhi dello stesso colore.

Il tentativo di dimostrazione procede così:

- per $n=1$ l’affermazione è vera;
- supponiamo che sia vera per un insieme di $n$ studenti;
- prendiamo $n+1$ studenti;
- consideriamo i primi $n$ e gli ultimi $n$;
- per ipotesi induttiva, ciascuno dei due gruppi ha studenti con occhi dello stesso colore;
- i due gruppi dovrebbero avere un elemento in comune, che permetterebbe di concludere che tutti gli $n+1$ studenti hanno gli occhi dello stesso colore.

Il problema si trova nel passaggio da $n=1$ a $n=2$. Se si prendono due studenti:

- il primo gruppo formato dai primi $n=1$ studenti contiene il primo studente;
- il secondo gruppo formato dagli ultimi $n=1$ studenti contiene il secondo studente;
- i due gruppi non hanno elementi in comune.

Manca quindi l’elemento che dovrebbe collegare i due gruppi.

Il passo induttivo non è valido a partire da $n=1$. L’argomento potrebbe eventualmente funzionare a partire da $n=2$, perché per $n\geq 2$ i due gruppi di $n$ elementi ricavati da un insieme di $n+1$ elementi hanno almeno un elemento in comune. Tuttavia, a quel punto sarebbe necessario verificare che la proprietà sia vera per $n=2$, cosa che non avviene.

Questo esempio mostra che bisogna sempre:

1. controllare il valore iniziale;
2. verificare che il passo induttivo funzioni proprio a partire da quel valore;
3. non confondere una proprietà vera per $n=1$ con una proprietà vera per tutti i naturali.

---

# 8. Induzione forte

## 8.1 Enunciato

La forma forte dell’induzione, detta anche induzione completa, è la seguente.

Sia $P(n)$ una proprietà definita per ogni $n\geq n_0$. Se:

1. $P(n_0)$ è vera;
2. per ogni $n>n_0$, assumendo vere tutte le proprietà precedenti

   $$
   P(n_0),P(n_0+1),\ldots,P(n-1),
   $$

   si riesce a dimostrare $P(n)$;

allora $P(n)$ è vera per ogni $n\geq n_0$.

Formalmente:

$$
\left[
P(n_0)
\ \land\
\forall n>n_0,\,
\left(
\bigwedge_{k=n_0}^{n-1}P(k)
\Longrightarrow P(n)
\right)
\right]
\Longrightarrow
\forall n\geq n_0,\ P(n).
$$

La differenza rispetto all’induzione debole è che, per dimostrare $P(n)$, si possono usare tutte le proprietà precedenti, non soltanto $P(n-1)$.

## 8.2 Interpretazione con le tessere del domino

Nell’induzione debole, ogni tessera fa cadere direttamente la successiva.

Nell’induzione forte, per far cadere la tessera $n$, si può usare il fatto che siano già cadute tutte le tessere precedenti:

$$
n_0,n_0+1,\ldots,n-1.
$$

L’induzione forte è particolarmente utile quando il problema relativo a $n$ dipende da numeri molto più piccoli di $n$, non necessariamente dal solo predecessore $n-1$.

## 8.3 Equivalenza tra induzione debole e forte

Le due forme di induzione sono equivalenti: ogni proprietà dimostrabile con una forma è dimostrabile anche con l’altra.

L’induzione forte implica l’induzione debole in modo immediato: se per dimostrare $P(n+1)$ si possono usare tutte le proprietà precedenti, in particolare si può usare $P(n)$.

Per dimostrare l’induzione forte utilizzando quella debole, si introduce una nuova proprietà:

$$
Q(n):\qquad
P(k)\text{ è vera per ogni }k\text{ con }n_0\leq k\leq n.
$$

La proprietà $Q(n)$ afferma quindi che tutte le proprietà fino al livello $n$ sono vere.

Si procede per induzione debole su $Q(n)$.

### Passo base

Per $n=n_0$,

$$
Q(n_0)
$$

coincide con $P(n_0)$, che è vera per ipotesi.

### Passo induttivo

Supponiamo vera $Q(n)$. Questo significa che

$$
P(n_0),P(n_0+1),\ldots,P(n)
$$

sono tutte vere. Per l’ipotesi dell’induzione forte, da queste proprietà segue $P(n+1)$. Di conseguenza sono vere tutte le proprietà fino a $n+1$, cioè $Q(n+1)$.

Per induzione debole, $Q(n)$ è vera per ogni $n\geq n_0$. Pertanto è vera anche ogni $P(n)$.

La tecnica consiste quindi nel sostituire la proprietà originaria con una proprietà cumulativa che contiene tutte le informazioni necessarie fino al livello considerato.

---

# 9. Teorema fondamentale dell’aritmetica

## 9.1 Numeri primi e numeri composti

Un numero naturale $p\geq 2$ è detto **primo** se i suoi soli divisori naturali sono $1$ e $p$.

Un numero naturale $n\geq 2$ che non è primo è detto **composto**. In tal caso può essere scritto come prodotto di due numeri naturali strettamente compresi tra $1$ e $n$:

$$
n=ab,
\qquad
1<a<n,
\qquad
1<b<n.
$$

Il numero $1$ non è considerato primo. La condizione $n\geq 2$ nella definizione dei numeri primi è quindi essenziale.

## 9.2 Enunciato

Il teorema fondamentale dell’aritmetica afferma che ogni numero naturale $n\geq 2$ può essere scritto come prodotto di numeri primi.

Inoltre, tale fattorizzazione è unica a meno dell’ordine dei fattori.

Formalmente, per ogni $n\geq 2$ esistono numeri primi $p_1,\ldots,p_r$ tali che

$$
n=p_1p_2\cdots p_r,
$$

e se anche

$$
n=q_1q_2\cdots q_s
$$

è una fattorizzazione in numeri primi, allora $r=s$ e i fattori $q_i$ coincidono con i fattori $p_i$ a meno di un riordinamento.

Per esempio,

$$
10=2\cdot 5=5\cdot 2.
$$

Queste due scritture non costituiscono due fattorizzazioni diverse: differiscono solo per l’ordine dei fattori.

Usando le potenze, si può scrivere, ad esempio,

$$
100=2^2\cdot 5^2.
$$

L’unicità va quindi intesa a meno dell’ordine e, equivalentemente, come unicità degli esponenti associati ai diversi fattori primi.

Nella lezione viene dimostrata inizialmente la parte di **esistenza** della fattorizzazione; la parte di unicità richiede un ulteriore argomento.

---

# 10. Dimostrazione dell’esistenza della fattorizzazione mediante induzione forte

Definiamo la proprietà

$$
P(n):\qquad
n\text{ è prodotto di numeri primi}.
$$

Vogliamo dimostrare che $P(n)$ è vera per ogni $n\geq 2$.

## 10.1 Passo base

Per $n=2$, il numero $2$ è primo. È quindi già una fattorizzazione in numeri primi, costituita da un solo fattore:

$$
2=2.
$$

Dunque $P(2)$ è vera.

## 10.2 Passo induttivo

Supponiamo che $n>2$ e che tutte le proprietà precedenti siano vere:

$$
P(2),P(3),\ldots,P(n-1).
$$

Dobbiamo dimostrare $P(n)$.

Si distinguono due casi.

### Caso 1: $n$ è primo

Se $n$ è primo, allora $n$ è già una fattorizzazione in numeri primi. Pertanto $P(n)$ è vera.

### Caso 2: $n$ è composto

Se $n$ non è primo, allora esistono $a,b\in\mathbb{N}$ tali che

$$
n=ab,
$$

con

$$
1<a<n,
\qquad
1<b<n.
$$

In particolare,

$$
2\leq a\leq n-1,
\qquad
2\leq b\leq n-1.
$$

Per ipotesi induttiva, sia $a$ sia $b$ sono fattorizzabili in numeri primi. Esistono quindi primi $p_1,\ldots,p_r$ e $q_1,\ldots,q_s$ tali che

$$
a=p_1\cdots p_r,
\qquad
b=q_1\cdots q_s.
$$

Moltiplicando le due fattorizzazioni:

$$
n=ab
=
(p_1\cdots p_r)(q_1\cdots q_s).
$$

Il membro di destra è un prodotto di numeri primi. Quindi anche $n$ è fattorizzabile in numeri primi.

Abbiamo dimostrato $P(n)$ in entrambi i casi. Per induzione forte, ogni numero naturale $n\geq 2$ è prodotto di numeri primi.

---

# 11. Perché è naturale usare l’induzione forte

La dimostrazione precedente non utilizza necessariamente la fattorizzazione di $n-1$. Se $n$ è composto, infatti, si scrive

$$
n=ab
$$

e si usano le fattorizzazioni dei due fattori $a$ e $b$, che possono essere molto più piccoli di $n$ e non hanno necessariamente relazione con $n-1$.

Per esempio, per fattorizzare $32\,000$ si può scrivere

$$
32\,000=32\cdot 1000
$$

e fattorizzare separatamente $32$ e $1000$. L’informazione necessaria riguarda quindi numeri più piccoli, ma non soltanto il predecessore.

Sapere che $n-1$ è fattorizzabile non dà direttamente informazioni sufficienti sulla fattorizzazione di $n$, perché in generale il predecessore di un numero non divide il numero successivo.

Per questo l’induzione forte è la forma più naturale per il teorema di fattorizzazione.

## 11.1 Dimostrazione con induzione debole

Poiché induzione debole e induzione forte sono equivalenti, il teorema si potrebbe dimostrare anche usando l’induzione debole, ma occorrerebbe cambiare proprietà.

Invece di considerare soltanto

$$
P(n):\qquad n\text{ è fattorizzabile},
$$

si definisce

$$
Q(n):\qquad
\text{ogni }k\text{ con }2\leq k\leq n
\text{ è fattorizzabile in numeri primi}.
$$

### Passo base

Per $n=2$, $Q(2)$ equivale alla fattorizzazione di $2$, che è vera.

### Passo induttivo

Supponiamo vera $Q(n)$. Allora tutti i numeri

$$
2,3,\ldots,n
$$

sono fattorizzabili.

Per dimostrare $Q(n+1)$ resta soltanto da dimostrare che $n+1$ è fattorizzabile:

- se $n+1$ è primo, non c’è nulla da fare;
- se $n+1$ è composto, si scrive

  $$
  n+1=ab
  $$

  con $2\leq a,b\leq n$, e quindi $a$ e $b$ sono fattorizzabili per ipotesi induttiva.

Il prodotto delle due fattorizzazioni fornisce una fattorizzazione di $n+1$.

La proprietà cumulativa $Q(n)$ contiene precisamente tutte le informazioni che, nella dimostrazione con induzione forte, vengono assunte contemporaneamente.

---

# 12. Osservazioni metodologiche

## 12.1 Scelta dell’indice iniziale

Il valore iniziale $n_0$ deve essere scelto in modo coerente con:

- il dominio di definizione della proprietà;
- il punto a partire dal quale la proprietà può essere vera;
- il funzionamento del passo induttivo.

Non tutte le formule o proprietà sono definite per ogni numero naturale. Per esempio:

$$
\sqrt{n-5}
$$

è definita nei reali solo quando

$$
n\geq 5.
$$

Analogamente, l’espressione

$$
\frac{5n+3}{n-2}
$$

non è definita per $n=2$.

Se una proprietà è definita per tutti i naturali ma diventa vera solo da un certo punto in poi, si può applicare l’induzione a partire da quell’indice. Per esempio, se la proprietà è verificata per ogni $n\geq 7$, si sceglie

$$
n_0=7.
$$

Non è necessario che il dominio della formula inizi esattamente da $n_0$: è sufficiente che la proprietà sia definita nel punto iniziale e in tutti i punti successivi considerati.

## 12.2 Il passo base e il passo induttivo hanno ruoli distinti

Il passo base dimostra che la proprietà parte effettivamente.

Il passo induttivo dimostra che la proprietà si conserva passando da un livello al successivo, oppure che può essere ottenuta usando i livelli precedenti.

Trascurare il passo base può produrre dimostrazioni apparentemente convincenti ma errate. L’esempio degli studenti con gli occhi dello stesso colore mostra che un passaggio induttivo formalmente plausibile può fallire proprio al primo livello.

## 12.3 Scelta della forma di induzione

È opportuno scegliere la forma più adatta alla struttura del problema:

- **induzione debole**: quando $P(n+1)$ dipende naturalmente da $P(n)$;
- **induzione forte**: quando $P(n)$ dipende da più valori precedenti o da fattori arbitrariamente più piccoli;
- **induzione debole con proprietà cumulativa**: quando si vuole trasformare un’argomentazione di induzione forte in una dimostrazione basata sul solo predecessore.

Nel teorema fondamentale dell’aritmetica, l’induzione forte rende immediata la dimostrazione perché un numero composto si scompone in fattori più piccoli, non necessariamente consecutivi.