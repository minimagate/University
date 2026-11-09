---
type: lecture-note
course: Analisi 1
date: 2026-09-28
title: Assiomi dei reali e proprietà di completezza
source_transcript: _transcripts/Analisi 1/2026-09-28 - Assiomi dei reali e
  proprietà di completezza.md
source_hash: sha256:7f491d3e4a1ae47dcc827230e1efaae0c6685f2af0f7125cdb84895c273cd75c
teaching_model: openai/gpt-5.6-luna
taught_at: 2026-09-28T12:31:50.721Z
---

# Assiomi dei reali e proprietà di completezza

## 1. Gli insiemi numerici e la nascita dell’analisi

Gli insiemi numerici fondamentali sono

$$
\mathbb{N},\qquad \mathbb{Z},\qquad \mathbb{Q},\qquad \mathbb{R},\qquad \mathbb{C}.
$$

In modo intuitivo:

- $\mathbb{N}$ è l’insieme dei numeri naturali;
- $\mathbb{Z}$ è l’insieme degli interi, comprendente anche i numeri negativi;
- $\mathbb{Q}$ è l’insieme dei numeri razionali, cioè dei numeri esprimibili come
  $$
  \frac{a}{b},\qquad a,b\in\mathbb{Z},\quad b\neq 0;
  $$
- $\mathbb{R}$ è l’insieme dei numeri reali;
- $\mathbb{C}$ è l’insieme dei numeri complessi, rappresentabili nella forma
  $$
  a+ib,\qquad a,b\in\mathbb{R},
  $$
  dove $i^2=-1$.

Le frazioni equivalenti rappresentano lo stesso numero razionale: ad esempio,

$$
\frac{2}{4}=\frac{1}{2}=\frac{3}{6}.
$$

La lezione sui numeri reali è il punto in cui nasce propriamente l’analisi matematica. Fino a questo momento si possono descrivere molte proprietà algebriche e di ordinamento già valide in $\mathbb{Q}$; ciò che distingue veramente $\mathbb{R}$ da $\mathbb{Q}$ è l’**assioma di completezza**, o assioma di continuità.

L’insieme dei numeri complessi sarà trattato in altri corsi. L’osservazione secondo cui “la strada più breve tra due affermazioni reali passa spesso per i numeri complessi” è una considerazione metodologica: molte questioni reali possono essere interpretate o risolte più facilmente utilizzando strumenti complessi, anche se l’analisi reale studia principalmente funzioni a valori reali.

---

## 2. Descrizione assiomatica dei numeri reali

Una descrizione assiomatica non costruisce esplicitamente gli oggetti, ma specifica:

1. quali sono gli oggetti;
2. quali operazioni e relazioni sono definite su di essi;
3. quali proprietà devono soddisfare.

Nel caso dei numeri reali si considera una struttura

$$
\left(\mathbb{R},+,\cdot,\leq\right),
$$

costituita da:

- un insieme $\mathbb{R}$;
- un’operazione di addizione;
- un’operazione di moltiplicazione;
- una relazione d’ordine $\leq$.

Le proprietà fondamentali sono organizzate in tre famiglie:

1. **assiomi algebrici**, che rendono $\mathbb{R}$ un campo;
2. **assiomi di ordinamento**;
3. **assioma di completezza** o di continuità.

Il metodo assiomatico richiede di assumere il minor numero possibile di proprietà indipendenti e di dimostrare tutte le altre come conseguenze. Molte proprietà utilizzate quotidianamente nei calcoli non sono quindi assiomi, ma teoremi derivati.

---

## 3. Gli assiomi algebrici: $\mathbb{R}$ è un campo

Le operazioni di somma e prodotto sono funzioni

$$
+:\mathbb{R}\times\mathbb{R}\longrightarrow\mathbb{R},
$$

e

$$
\cdot:\mathbb{R}\times\mathbb{R}\longrightarrow\mathbb{R}.
$$

La somma associa a ogni coppia $(a,b)$ il numero $a+b$; il prodotto associa alla stessa coppia il numero $ab$.

La notazione usuale $a+b$ o $ab$ è una scrittura abbreviata per indicare l’applicazione di queste funzioni alla coppia $(a,b)$.

### 3.1 Proprietà della somma

Per ogni $a,b,c\in\mathbb{R}$ valgono:

1. **Associatività**
   $$
   (a+b)+c=a+(b+c).
   $$

2. **Commutatività**
   $$
   a+b=b+a.
   $$

3. **Esistenza dell’elemento neutro additivo**: esiste $0\in\mathbb{R}$ tale che
   $$
   a+0=0+a=a.
   $$

4. **Esistenza dell’inverso additivo**: per ogni $a\in\mathbb{R}$ esiste un elemento, indicato con $-a$, tale che
   $$
   a+(-a)=(-a)+a=0.
   $$

Il numero $-a$ è definito come l’unico numero che, sommato ad $a$, produce $0$. L’unicità dell’inverso additivo è una conseguenza degli assiomi, non una proprietà da aggiungere separatamente.

### 3.2 Proprietà del prodotto

Per ogni $a,b,c\in\mathbb{R}$ valgono:

1. **Associatività**
   $$
   (ab)c=a(bc).
   $$

2. **Commutatività**
   $$
   ab=ba.
   $$

3. **Esistenza dell’elemento neutro moltiplicativo**: esiste $1\in\mathbb{R}$ tale che
   $$
   a\cdot 1=1\cdot a=a.
   $$

4. **Esistenza dell’inverso moltiplicativo**: per ogni $a\neq 0$ esiste $a^{-1}$, indicato anche con $\frac{1}{a}$, tale che
   $$
   aa^{-1}=a^{-1}a=1.
   $$

Anche in questo caso, l’inverso moltiplicativo è unico, ma tale unicità deve essere dimostrata.

### 3.3 Proprietà distributiva

Somma e prodotto sono legati dalla proprietà distributiva:

$$
a(b+c)=ab+ac.
$$

Questa è l’ultima proprietà fondamentale che connette le due operazioni.

In totale, le proprietà di campo comprendono:

- quattro proprietà della somma;
- quattro proprietà del prodotto;
- la proprietà distributiva.

### 3.4 Perché si introducono nuovi insiemi numerici?

La successione $\mathbb{N}\subset\mathbb{Z}\subset\mathbb{Q}\subset\mathbb{R}\subset\mathbb{C}$ può essere motivata osservando quali operazioni sono possibili:

- in $\mathbb{N}$ non sempre è possibile sottrarre: si introducono gli interi $\mathbb{Z}$;
- in $\mathbb{Z}$ non sempre è possibile dividere: si introducono i razionali $\mathbb{Q}$;
- in $\mathbb{Q}$ non esiste un numero il cui quadrato sia $2$: si introducono i reali $\mathbb{R}$;
- in $\mathbb{R}$ non esiste un numero il cui quadrato sia $-1$: si introducono i complessi $\mathbb{C}$.

Questa descrizione è intuitiva e non costituisce una costruzione formale degli insiemi numerici.

Le operazioni di sottrazione e divisione non sono operazioni primitive aggiuntive:

- sottrarre $b$ significa sommare $-b$:
  $$
  a-b=a+(-b);
  $$
- dividere per $b\neq 0$ significa moltiplicare per l’inverso:
  $$
  \frac{a}{b}=a\cdot b^{-1}.
  $$

---

## 4. Gli assiomi di ordinamento

La relazione $\leq$ è un ordinamento totale su $\mathbb{R}$.

### 4.1 Totalità

Per ogni $x,y\in\mathbb{R}$,

$$
x\leq y\quad\text{oppure}\quad y\leq x.
$$

Questa proprietà dice che ogni coppia di numeri reali è confrontabile.

È una proprietà forte: non ogni relazione d’ordine è totale. Ad esempio, considerando l’inclusione tra sottoinsiemi, due sottoinsiemi possono non essere confrontabili, perché nessuno dei due è necessariamente contenuto nell’altro.

### 4.2 Riflessività

Per ogni $x\in\mathbb{R}$,

$$
x\leq x.
$$

Ogni numero è minore o uguale a se stesso.

### 4.3 Antisimmetria

Per ogni $x,y\in\mathbb{R}$,

$$
x\leq y\ \text{e}\ y\leq x
\quad\Longrightarrow\quad
x=y.
$$

Se ciascuno dei due numeri è minore o uguale all’altro, allora i due numeri coincidono.

### 4.4 Transitività

Per ogni $x,y,z\in\mathbb{R}$,

$$
x\leq y\ \text{e}\ y\leq z
\quad\Longrightarrow\quad
x\leq z.
$$

Questa è la proprietà utilizzata nelle catene di disuguaglianze.

Formalmente, la quantificazione completa può essere scritta come

$$
\forall x,y,z\in\mathbb{R},\qquad
\left(x\leq y\land y\leq z\right)\Longrightarrow x\leq z.
$$

Le proprietà di riflessività, antisimmetria e transitività caratterizzano una relazione d’ordine; aggiungendo la totalità si ottiene un ordine totale.

---

## 5. Compatibilità tra ordine e operazioni

Gli assiomi di ordinamento interagiscono con quelli algebrici.

### 5.1 Compatibilità con la somma

Per ogni $x,y,z\in\mathbb{R}$,

$$
x\leq y
\quad\Longrightarrow\quad
x+z\leq y+z.
$$

Aggiungere lo stesso numero ai due membri di una disuguaglianza non cambia il verso della disuguaglianza.

Questo assioma può essere indicato schematicamente con $\mathrm{Ord}_S$.

### 5.2 Compatibilità con il prodotto per numeri non negativi

Se $x\geq 0$ e $y\geq 0$, allora

$$
xy\geq 0.
$$

Questa proprietà può essere indicata con $\mathrm{Ord}_{P}$.

In altre parole, il prodotto di due numeri non negativi è non negativo.

### 5.3 Conseguenza: moltiplicazione per un numero non negativo

Dalle proprietà precedenti si deduce che, se

$$
x\leq y
\quad\text{e}\quad
z\geq 0,
$$

allora

$$
xz\leq yz.
$$

Infatti:

1. da $x\leq y$, aggiungendo $-y$ a entrambi i membri si ottiene
   $$
   x-y\leq 0;
   $$
2. poiché $z\geq 0$ e $y-x\geq 0$, il prodotto di quantità non negative è non negativo;
3. usando la distributività e la compatibilità della somma con l’ordine si ricava
   $$
   xz\leq yz.
   $$

L’idea della dimostrazione è che la moltiplicazione per una quantità non negativa conserva il verso della disuguaglianza.

Se invece $z\leq 0$, la moltiplicazione per $z$ inverte il verso:

$$
x\leq y,\quad z\leq 0
\quad\Longrightarrow\quad
xz\geq yz.
$$

Questa proprietà non viene assunta separatamente: si dimostra utilizzando gli assiomi già introdotti.

---

## 6. Proprietà derivate dagli assiomi

Gli assiomi sono pochi, ma dalle loro combinazioni si deducono molte proprietà utilizzate continuamente. Alcuni esempi:

$$
0\cdot x=0,
$$

$$
(-1)x=-x,
$$

$$
(-x)(-y)=xy,
$$

$$
-(-x)=x.
$$

Queste identità non sono scritte direttamente negli assiomi e devono essere dimostrate.

Anche il fatto che $1>0$ non è assunto esplicitamente negli assiomi di campo e di ordinamento, ma deve essere dedotto. È una dimostrazione non immediata e può essere assegnata come esercizio.

Analogamente, occorre dimostrare che gli elementi neutri e gli inversi sono unici.

> [!warning]
> Non bisogna confondere ciò che è assunto come assioma con ciò che è una conseguenza dimostrabile. Le regole di calcolo usuali sono corrette, ma molte non sono primitive: derivano dagli assiomi.

---

## 7. Differenza tra $\mathbb{Q}$ e $\mathbb{R}$

Tutte le proprietà viste fino a questo punto valgono anche in $\mathbb{Q}$. In particolare, $\mathbb{Q}$ è un campo ordinato.

Finora, quindi, nulla distingue essenzialmente $\mathbb{R}$ da $\mathbb{Q}$.

La differenza fondamentale compare con l’assioma di completezza.

---

## 8. Assioma di completezza o di continuità

Siano $A,B\subseteq\mathbb{R}$ due sottoinsiemi non vuoti. Si dice che $A$ sta **a sinistra di $B$** se

$$
\forall a\in A,\ \forall b\in B,\qquad a\leq b.
$$

Geometricamente, tutti gli elementi di $A$ si trovano a sinistra di tutti gli elementi di $B$ sulla retta reale.

L’assioma di completezza afferma che, se $A$ sta a sinistra di $B$, allora esiste almeno un numero reale $c$ che si trova tra i due insiemi:

$$
\exists c\in\mathbb{R}
\quad\text{tale che}\quad
\forall a\in A,\ \forall b\in B,\qquad
a\leq c\leq b.
$$

Il numero $c$ può appartenere ad $A$, a $B$, a entrambi, oppure a nessuno dei due.

L’assioma garantisce l’esistenza di un punto intermedio, non la sua unicità.

### 8.1 Intersezione tra $A$ e $B$

Gli insiemi $A$ e $B$ possono intersecarsi. Se stanno rispettivamente a sinistra e a destra l’uno dell’altro, la loro intersezione può contenere al massimo un punto.

Se

$$
c\in A\cap B,
$$

allora $c$ è necessariamente il punto di separazione tra i due insiemi. In generale, tuttavia, possono esserci molti punti reali compresi tra tutti gli elementi di $A$ e tutti gli elementi di $B$.

Esempi intuitivi:

- $A=(-\infty,1]$ e $B=[1,+\infty)$: il solo punto comune è $1$;
- $A=(-\infty,3]$ e $B=[3,+\infty)$: il solo punto comune è $3$;
- se tra $A$ e $B$ rimane un intervallo non vuoto, allora esistono molti possibili punti $c$.

L’esistenza del numero $3$ non è un assioma separato: il numero $3$ viene costruito a partire da $1$ come

$$
3=1+1+1.
$$

### 8.2 Perché l’assioma non vale in $\mathbb{Q}$?

Consideriamo

$$
A=\left\{x\in\mathbb{Q}:x\geq 0,\ x^2\leq 2\right\},
$$

e

$$
B=\left\{x\in\mathbb{Q}:x\geq 0,\ x^2\geq 2\right\}.
$$

Ogni elemento di $A$ è minore o uguale a ogni elemento di $B$, quindi $A$ sta a sinistra di $B$.

L’ordinamento è intuitivo perché gli elementi sono non negativi: per numeri non negativi, al crescere del numero cresce anche il quadrato.

Se esistesse un numero razionale $c$ compreso tra $A$ e $B$, dovrebbe valere

$$
c^2=2.
$$

Infatti:

- se $c^2<2$, allora $c$ apparterrebbe ancora ad $A$ e non separerebbe correttamente i due insiemi;
- se $c^2>2$, allora $c$ apparterrebbe a $B$ e analogamente non sarebbe il punto di separazione.

Ma non esiste alcun $c\in\mathbb{Q}$ tale che $c^2=2$. Se infatti

$$
c=\frac{p}{q}
$$

con $p,q\in\mathbb{Z}$ e frazione ridotta ai minimi termini, da

$$
\frac{p^2}{q^2}=2
$$

si ottiene

$$
p^2=2q^2.
$$

Questo implica che $p$ è pari; ponendo $p=2k$, si ricava che anche $q$ è pari, contraddicendo il fatto che la frazione fosse ridotta ai minimi termini.

Quindi in $\mathbb{Q}$ non esiste il punto intermedio richiesto dall’assioma di completezza.

In $\mathbb{R}$, invece, l’assioma garantisce l’esistenza di un numero $c$ tale che

$$
c^2=2.
$$

Questo numero sarà indicato con $\sqrt{2}$.

La completezza è dunque ciò che permette di colmare i “buchi” presenti in $\mathbb{Q}$.

---

## 9. Esistenza e unicità dei numeri reali

Gli assiomi potrebbero, in linea di principio, essere incompatibili: assumere troppe proprietà può condurre a una struttura inesistente.

Il teorema fondamentale, chiamato scherzosamente **teorema misterioso**, afferma che:

> Esiste una struttura $\left(\mathbb{R},+,\cdot,\leq\right)$ che soddisfa gli assiomi di campo ordinato e l’assioma di completezza, ed essa è unica a meno di isomorfismo.

L’esistenza significa che esiste effettivamente un insieme $\mathbb{R}$ dotato di due operazioni e di un ordinamento che soddisfano tutti gli assiomi.

L’unicità non significa che esiste un solo insieme possibile chiamato $\mathbb{R}$. Significa che due strutture qualunque che soddisfano gli stessi assiomi sono indistinguibili dal punto di vista matematico.

Più precisamente, se

$$
(\mathbb{R},+,\cdot,\leq)
$$

e

$$
(\mathbb{R}',\oplus,\otimes,\preceq)
$$

sono due strutture che soddisfano gli assiomi dei reali, allora esiste una funzione biiettiva

$$
\varphi:\mathbb{R}\longrightarrow\mathbb{R}'
$$

che preserva tutte le operazioni e l’ordinamento:

$$
\varphi(a+b)=\varphi(a)\oplus\varphi(b),
$$

$$
\varphi(ab)=\varphi(a)\otimes\varphi(b),
$$

e

$$
a\leq b
\quad\Longleftrightarrow\quad
\varphi(a)\preceq\varphi(b).
$$

La funzione $\varphi$ è un **isomorfismo**: è una traduzione tra le due strutture che conserva tutta la struttura matematica.

Se si sommano prima due numeri nella prima struttura e poi si applica $\varphi$, si ottiene lo stesso risultato che si avrebbe traducendo prima i due numeri nella seconda struttura e sommandoli lì.

L’assioma di completezza è essenziale per l’unicità. Esistono molti campi ordinati, ma diventano unici, a meno di isomorfismo, quando si impone anche la completezza.

---

## 10. Naturali contenuti nei reali

Gli assiomi garantiscono l’esistenza di $0$ e $1$:

- $0$ è l’elemento neutro della somma;
- $1$ è l’elemento neutro del prodotto;
- inoltre $0\neq 1$.

A partire da questi si costruiscono i naturali:

$$
2=1+1,
$$

$$
3=1+1+1,
$$

e in generale

$$
n=\underbrace{1+\cdots+1}_{n\text{ volte}}.
$$

Questo definisce un’applicazione da $\mathbb{N}$ a $\mathbb{R}$.

Non è però immediato che i numeri naturali così costruiti siano tutti distinti. In alcuni campi, infatti, sommando ripetutamente $1$ si può tornare a $0$. Ad esempio, negli interi modulo $7$ vale

$$
7=0.
$$

Per dimostrare che in $\mathbb{R}$ i naturali sono distinti e che l’applicazione $\mathbb{N}\to\mathbb{R}$ è iniettiva, occorre utilizzare in modo sostanziale l’ordinamento e, in particolare, la completezza.

---

# 11. Maggioranti, minoranti, massimo e minimo

Sia $A\subseteq\mathbb{R}$ un insieme non vuoto.

## 11.1 Maggiorante

Un numero $M\in\mathbb{R}$ è un **maggiorante** di $A$ se

$$
\forall a\in A,\qquad a\leq M.
$$

In questo caso, $M$ è maggiore o uguale a tutti gli elementi di $A$.

L’insieme dei maggioranti di $A$ può essere indicato con

$$
\operatorname{Mag}(A)
=
\left\{M\in\mathbb{R}:\forall a\in A,\ a\leq M\right\}.
$$

Un insieme può avere molti maggioranti. Se $M$ è un maggiorante, in genere anche ogni numero $M'\geq M$ è un maggiorante.

I maggioranti non sono quindi necessariamente unici e non devono necessariamente appartenere all’insieme $A$.

## 11.2 Minorante

Un numero $m\in\mathbb{R}$ è un **minorante** di $A$ se

$$
\forall a\in A,\qquad m\leq a.
$$

Un minorante è una barriera dal basso: è minore o uguale a tutti gli elementi di $A$.

Anche i minoranti possono essere numerosi e non devono appartenere ad $A$.

## 11.3 Massimo

Un numero $M\in\mathbb{R}$ è il **massimo** di $A$ se:

1. $M\in A$;
2. $M$ è un maggiorante di $A$.

Formalmente,

$$
M=\max A
$$

se e solo se

$$
M\in A
\quad\text{e}\quad
\forall a\in A,\ a\leq M.
$$

Un maggiorante che appartiene all’insieme è dunque il massimo.

## 11.4 Minimo

Un numero $m\in\mathbb{R}$ è il **minimo** di $A$ se:

1. $m\in A$;
2. $m$ è un minorante di $A$.

Formalmente,

$$
m=\min A
$$

se e solo se

$$
m\in A
\quad\text{e}\quad
\forall a\in A,\ m\leq a.
$$

## 11.5 Unicità di massimo e minimo

Se il massimo esiste, è unico.

Supponiamo che $M_1$ e $M_2$ siano entrambi massimi di $A$. Poiché $M_1$ è massimo,

$$
M_2\leq M_1.
$$

Poiché anche $M_2$ è massimo,

$$
M_1\leq M_2.
$$

Per l’antisimmetria dell’ordine,

$$
M_1=M_2.
$$

Lo stesso ragionamento vale per il minimo.

> [!warning]
> Massimo e minimo non sono obbligati a esistere.

Esempi:

- $A=\mathbb{R}$ non ha maggioranti e quindi non ha massimo;
- $A=(0,1)$ ha maggioranti, ma non ha massimo, perché $1$ è un maggiorante ma non appartiene all’insieme;
- analogamente, $(0,1)$ non ha minimo.

---

# 12. Insiemi limitati

## 12.1 Limitatezza superiore

Un insieme $A\subseteq\mathbb{R}$ è **limitato superiormente** se possiede almeno un maggiorante:

$$
\exists M\in\mathbb{R}\ \text{tale che}\ 
\forall a\in A,\ a\leq M.
$$

Non è necessario che esista un massimo. La limitatezza superiore richiede soltanto l’esistenza di una barriera dall’alto.

## 12.2 Limitatezza inferiore

Un insieme $A$ è **limitato inferiormente** se possiede almeno un minorante:

$$
\exists m\in\mathbb{R}\ \text{tale che}\ 
\forall a\in A,\ m\leq a.
$$

## 12.3 Insieme limitato

Un insieme è detto semplicemente **limitato** se è limitato sia superiormente sia inferiormente.

Una formulazione equivalente è:

$$
A\text{ è limitato}
\quad\Longleftrightarrow\quad
\exists L\in\mathbb{R}\ \text{tale che}\ 
\forall a\in A,\ |a|\leq L.
$$

Infatti, la condizione

$$
|a|\leq L
$$

equivale a

$$
-L\leq a\leq L.
$$

Le due barriere possono essere rese simmetriche scegliendo un valore di $L$ sufficientemente grande.

---

# 13. Estremo superiore ed estremo inferiore

Sia $A\subseteq\mathbb{R}$ non vuoto.

## 13.1 Estremo superiore

Se $A$ non è limitato superiormente, si pone per convenzione

$$
\sup A=+\infty.
$$

Se invece $A$ è limitato superiormente, l’insieme dei suoi maggioranti è non vuoto:

$$
\operatorname{Mag}(A)\neq\varnothing.
$$

In questo caso si definisce

$$
\sup A=\min\operatorname{Mag}(A).
$$

L’estremo superiore è quindi il più piccolo dei maggioranti.

Il fatto che tale minimo esista non è automatico dalla definizione: deriva dall’assioma di completezza.

## 13.2 Estremo inferiore

Se $A$ non è limitato inferiormente, si pone

$$
\inf A=-\infty.
$$

Se invece $A$ è limitato inferiormente, l’insieme dei minoranti è non vuoto e si definisce

$$
\inf A=\max\operatorname{Min}(A),
$$

dove $\operatorname{Min}(A)$ indica l’insieme dei minoranti di $A$.

L’estremo inferiore è quindi il più grande dei minoranti.

Anche l’esistenza di questo massimo deriva dall’assioma di completezza.

## 13.3 Relazione con massimo e minimo

Se il massimo esiste, allora coincide con il supremo:

$$
\max A=\sup A.
$$

Se il minimo esiste, allora coincide con l’infimo:

$$
\min A=\inf A.
$$

Quando massimo e minimo non esistono, supremo e infimo possono comunque esistere.

Esempio:

$$
A=(0,1).
$$

I maggioranti sono tutti i numeri $M\geq 1$, quindi

$$
\sup A=1.
$$

I minoranti sono tutti i numeri $m\leq 0$, quindi

$$
\inf A=0.
$$

Tuttavia $1\notin A$ e $0\notin A$, dunque $A$ non ha né massimo né minimo.

In questo senso, il supremo e l’infimo sono i numeri che “vorrebbero essere” massimo e minimo, ma non appartengono all’insieme.

---

# 14. Dimostrazione dell’esistenza del supremo

Consideriamo il caso non banale: $A$ è non vuoto e limitato superiormente.

Sia

$$
B=\operatorname{Mag}(A)
$$

l’insieme di tutti i maggioranti di $A$.

Per definizione, per ogni $a\in A$ e ogni $b\in B$ vale

$$
a\leq b.
$$

Quindi $A$ sta a sinistra di $B$.

Per l’assioma di completezza esiste un numero $c\in\mathbb{R}$ tale che

$$
\forall a\in A,\ \forall b\in B,\qquad a\leq c\leq b.
$$

Dalla prima disuguaglianza,

$$
\forall a\in A,\qquad a\leq c,
$$

si deduce che $c$ è un maggiorante di $A$. Pertanto

$$
c\in B.
$$

Dalla seconda disuguaglianza,

$$
\forall b\in B,\qquad c\leq b,
$$

si deduce che $c$ è minore o uguale a ogni maggiorante di $A$. Quindi $c$ è il minimo dell’insieme dei maggioranti:

$$
c=\min B.
$$

Per definizione,

$$
c=\sup A.
$$

Dunque ogni insieme non vuoto e limitato superiormente ammette estremo superiore.

La dimostrazione dell’esistenza dell’infimo è analoga, scambiando:

- maggioranti con minoranti;
- minimo con massimo;
- sinistra con destra.

Questa dimostrazione mostra il legame diretto tra completezza e supremi: il supremo non è una proprietà puramente algebrica, ma è una conseguenza dell’assioma di continuità.

---

# 15. Caratterizzazione del supremo

La definizione di $\sup A$ può essere riscritta in una forma basata sui quantificatori e su una proprietà di approssimazione.

## 15.1 Caso $\sup A=+\infty$

Per un insieme non vuoto $A\subseteq\mathbb{R}$,

$$
\sup A=+\infty
$$

se e solo se

$$
\forall M\in\mathbb{R},\ \exists a\in A
\quad\text{tale che}\quad
a>M.
$$

Equivalentemente, si può scrivere $a\geq M$ a seconda della convenzione adottata; la forma con $a>M$ esprime chiaramente che l’insieme contiene elementi arbitrariamente grandi.

### Dimostrazione tramite negazione

Dire che $A$ non è limitato superiormente significa negare

$$
\exists M\in\mathbb{R}\ \text{tale che}\ \forall a\in A,\ a\leq M.
$$

Negando i quantificatori si ottiene

$$
\forall M\in\mathbb{R},\ \exists a\in A
\quad\text{tale che}\quad
a>M.
$$

L’ordine dei quantificatori è essenziale:

1. si sceglie prima un qualunque $M$;
2. dopo aver visto $M$, l’insieme $A$ deve fornire un elemento $a$ più grande di $M$.

Non sarebbe equivalente chiedere l’esistenza di un unico $a$ che superi tutti gli $M$.

L’interpretazione geometrica è che, per ogni barriera reale $M$, l’insieme riesce a produrre un elemento che si trova oltre quella barriera.

## 15.2 Caso $\sup A=L\in\mathbb{R}$

Per $A\neq\varnothing$, vale

$$
\sup A=L
$$

se e solo se valgono entrambe le condizioni:

1. $L$ è un maggiorante di $A$:
   $$
   \forall a\in A,\qquad a\leq L;
   $$

2. ogni intervallo immediatamente a sinistra di $L$ contiene almeno un elemento di $A$:
   $$
   \forall \varepsilon>0,\ \exists a\in A
   \quad\text{tale che}\quad
   L-\varepsilon<a.
   $$

La seconda condizione si può esprimere anche come

$$
\forall \varepsilon>0,\ \exists a\in A
\quad\text{tale che}\quad
L-\varepsilon<a\leq L.
$$

La prima condizione dice che $A$ sta tutto a sinistra di $L$. La seconda dice che $L$ non può essere abbassato nemmeno di una quantità arbitrariamente piccola.

Se per qualche $\varepsilon>0$ non esistesse alcun elemento di $A$ maggiore di $L-\varepsilon$, allora tutti gli elementi di $A$ soddisferebbero

$$
a\leq L-\varepsilon.
$$

In tal caso $L-\varepsilon$ sarebbe un maggiorante di $A$, più piccolo di $L$, contraddicendo il fatto che $L$ è il minimo dei maggioranti.

Questa è la prima comparsa strutturale del parametro $\varepsilon$, che sarà centrale nella definizione di limite.

---

# 16. Caratterizzazione dell’infimo

In modo analogo:

$$
\inf A=-\infty
$$

se e solo se

$$
\forall M\in\mathbb{R},\ \exists a\in A
\quad\text{tale che}\quad
a<M.
$$

Se invece $\inf A=l\in\mathbb{R}$, allora:

1. $l$ è un minorante:
   $$
   \forall a\in A,\qquad l\leq a;
   $$

2. ogni intervallo immediatamente a destra di $l$ contiene almeno un elemento di $A$:
   $$
   \forall\varepsilon>0,\ \exists a\in A
   \quad\text{tale che}\quad
   a<l+\varepsilon.
   $$

Equivalentemente,

$$
\forall\varepsilon>0,\ \exists a\in A
\quad\text{tale che}\quad
l\leq a<l+\varepsilon.
$$

Se non esistesse un elemento di $A$ minore di $l+\varepsilon$, allora $l+\varepsilon$ non descriverebbe correttamente l’azione dell’estremo inferiore; l’idea è simmetrica rispetto a quella del supremo.

---

# 17. Il ruolo dell’insieme vuoto

Molte definizioni vengono formulate assumendo

$$
A\neq\varnothing.
$$

Questa ipotesi evita casi patologici o poco utili.

Formalmente, ogni numero reale è un maggiorante dell’insieme vuoto, perché la proposizione

$$
\forall a\in\varnothing,\qquad a\leq M
$$

è vera per ogni $M$: non esistono elementi dell’insieme vuoto che possano violarla.

Analogamente, ogni numero reale è un minorante dell’insieme vuoto.

Se si cercasse di definire supremo e infimo del vuoto tramite le stesse formule, si otterrebbero convenzioni problematiche:

- l’insieme dei maggioranti sarebbe tutto $\mathbb{R}$;
- l’insieme dei minoranti sarebbe tutto $\mathbb{R}$;
- non esisterebbe il minimo di $\mathbb{R}$ né il massimo di $\mathbb{R}$;
- usando le convenzioni estese si arriverebbe alla situazione paradossale
  $$
  \inf\varnothing=+\infty,
  \qquad
  \sup\varnothing=-\infty.
  $$

Per questo, nei contesti del corso, $\sup A$ e $\inf A$ vengono considerati per insiemi non vuoti.

La stessa attenzione al vuoto è necessaria in teoria degli insiemi. Ad esempio:

- esiste un’unica funzione dall’insieme vuoto all’insieme vuoto;
- esiste un’unica funzione dall’insieme vuoto a un insieme qualunque;
- il numero di funzioni da un insieme con due elementi a un insieme con cinque elementi è
  $$
  5^2=25.
  $$

Le formule generali devono essere formulate in modo da rimanere coerenti anche nei casi in cui compare l’insieme vuoto.

---

# 18. Esempio: il supremo di $\mathbb{N}$

Consideriamo $\mathbb{N}$ come sottoinsieme di $\mathbb{R}$. L’affermazione

$$
\sup\mathbb{N}=+\infty
$$

equivale a dire che $\mathbb{N}$ non è limitato superiormente:

$$
\forall L\in\mathbb{R},\ \exists n\in\mathbb{N}
\quad\text{tale che}\quad
n>L.
$$

In altre parole, per ogni numero reale esiste un numero naturale che lo supera.

Una dimostrazione può essere costruita per assurdo. Supponiamo che $\mathbb{N}$ sia limitato superiormente e poniamo

$$
\sup\mathbb{N}=L\in\mathbb{R}.
$$

Usando la caratterizzazione del supremo, scegliamo $\varepsilon=\frac12$. Esiste allora $n\in\mathbb{N}$ tale che

$$
L-\frac12<n\leq L.
$$

Poiché $n+1\in\mathbb{N}$, possiamo aggiungere $1$ alla disuguaglianza:

$$
L-\frac12+1<n+1.
$$

Poiché

$$
L-\frac12+1=L+\frac12>L,
$$

segue che

$$
n+1>L.
$$

Ma $n+1$ è un numero naturale, quindi abbiamo trovato un elemento di $\mathbb{N}$ maggiore di $L$, contraddicendo il fatto che $L$ fosse un maggiorante.

Pertanto $\mathbb{N}$ non ammette maggioranti e

$$
\sup\mathbb{N}=+\infty.
$$

La dimostrazione usa proprietà elementari come

$$
-\frac12+1=\frac12
$$

e

$$
\frac12>0,
$$

che devono anch’esse essere giustificate a partire dagli assiomi se si vuole una fondazione completamente formale.

È importante notare che il risultato non segue dai soli assiomi di campo ordinato. Esistono campi ordinati in cui l’insieme ottenuto sommando ripetutamente $1$ rimane limitato superiormente. La non limitatezza di $\mathbb{N}$ è una conseguenza della completezza dei reali.

---

# 19. Significato concettuale della completezza

L’assioma di completezza:

- distingue $\mathbb{R}$ da $\mathbb{Q}$;
- garantisce l’esistenza di punti di separazione tra insiemi ordinati;
- garantisce l’esistenza del supremo per ogni insieme non vuoto e limitato superiormente;
- garantisce l’esistenza dell’infimo per ogni insieme non vuoto e limitato inferiormente;
- permette di trattare numeri come $\sqrt{2}$;
- è alla base della teoria dei limiti.

In particolare, il supremo rappresenta una forma quantitativa dell’idea di “punto più a destra possibile”, anche quando tale punto non appartiene all’insieme. La caratterizzazione con $\varepsilon$ formalizza il fatto che ogni punto strettamente più piccolo del supremo non può essere un maggiorante.

Questa struttura di approssimazione da destra e da sinistra costituirà la base concettuale delle definizioni di limite che verranno introdotte successivamente.
