---
type: book-note
course: Fondamenti
title: Logica
topics:
  - algoritmi e stati
  - calcolo proposizionale
  - semantica
  - forme normali
  - logica del primo ordine
---

# Logica

> **Ambito:** prime cinque lezioni, sintetizzate in sei pilastri concettuali

## 1. Struttura logica del percorso

L'obiettivo delle lezioni è comprendere come descrivere un problema, rappresentare formalmente le informazioni e costruire ragionamenti che ne garantiscano la correttezza.

La progressione concettuale è:

$$
\boxed{ \begin{gathered} \text{Algoritmi e stati}\\ \downarrow\\ \text{Calcolo proposizionale}\\ \downarrow\\ \text{Interpretazioni e semantica}\\ \downarrow\\ \text{Equivalenze e dimostrazioni}\\ \downarrow\\ \text{Forme normali e risoluzione}\\ \downarrow\\ \text{Logica del primo ordine} \end{gathered} }
$$

## 2. I sei pilastri fondamentali

### 1 — Algoritmi e stati

**Domanda.** Come descriviamo un problema e una procedura per risolverlo?

**Definizione concettuale.** Un algoritmo consiste in una sequenza di operazioni elementari comprensibili da un esecutore. Nel paradigma imperativo, la sua esecuzione modifica progressivamente uno stato.

**Definizione formale.**

Uno stato è un insieme di associazioni nome-valore, in cui ogni nome è associato ad al più un valore.

$$
S=\{x_1\mapsto v_1,\ldots,x_n\mapsto v_n\}
$$

L'esecuzione di un algoritmo può essere rappresentata come una successione di stati:

$$
S_0\rightarrow S_1\rightarrow\cdots\rightarrow S_f
$$

La specifica descrive le condizioni iniziali e il risultato desiderato; l'algoritmo descrive le operazioni necessarie per raggiungerlo.

### 2 — Calcolo proposizionale

**Domanda.** Come rappresentiamo rigorosamente affermazioni e ragionamenti?

**Definizione concettuale.** Un linguaggio formale nel quale le proposizioni sono trattate come oggetti combinabili attraverso connettivi logici, secondo regole sintattiche precise.

**Definizione formale.**

Dato un alfabeto proposizionale:

$$
\mathcal P=\{p,q,r,\ldots\}
$$

L'insieme delle formule $\mathrm{Prop}_{\mathcal P}$ è definito ricorsivamente:

1. $\mathrm T,\mathrm F$ sono formule.

2. Ogni $p\in\mathcal P$ è una formula.

3. Se $P,Q$ sono formule, allora lo sono anche:


$$
\neg P,\quad (P\land Q),\quad (P\lor Q),\quad (P\Rightarrow Q),\quad (P\equiv Q)
$$

Queste sono le regole sintattiche di costruzione del linguaggio.

### 3 — Interpretazioni e semantica

**Domanda.** Come determiniamo il valore di verità di una formula e la validità di un ragionamento?

**Definizione concettuale.** Un'interpretazione attribuisce valori booleani ai simboli proposizionali, permettendo di valutare le formule composte.

**Definizione formale.**

Un'interpretazione è una funzione:

$$
I:\mathcal P\rightarrow\mathrm{Bool}
$$

dove:

$$
\mathrm{Bool}=\{\mathsf t,\mathsf f\}
$$

Data una formula $\varphi$:

|Proprietà|Definizione formale|
|---|---|
|Modello|$I\models\varphi$|
|Soddisfacibile|$\exists I:\ I\models\varphi$|
|Tautologia|$\forall I:\ I\models\varphi$|
|Contraddizione|$\forall I:\ I\not\models\varphi$|

Conseguenza logica: una formula è conseguenza di un insieme di premesse se è vera in ogni interpretazione che rende vere tutte quelle premesse.

$$
\boxed{ \Gamma\models\varphi \iff \forall I\,(I\models\Gamma\Rightarrow I\models\varphi) }
$$

### 4 — Equivalenze e dimostrazioni

**Domanda.** Come dimostriamo formalmente che due formule sono equivalenti o che una conclusione segue dalle premesse?

**Definizione concettuale.** Trasformiamo progressivamente le formule applicando leggi logiche, giustificando ogni passaggio.

**Definizione formale.**

Due formule sono tautologicamente equivalenti se:

$$
\models(P\equiv Q)
$$

Il principio di sostituzione per l'equivalenza consente di sostituire una sottoformula con un'altra equivalente:

$$
\frac{P\equiv Q}{R\equiv R[Q/P]}
$$

Una dimostrazione per equivalenze successive assume la forma:

$$
P_1\equiv P_2\equiv\cdots\equiv P_n
$$

Ogni passaggio deve essere giustificato da una legge valida.

Per le sostituzioni mediante implicazione occorre invece rispettare la polarità dell'occorrenza: positiva o negativa, poiché il verso dell'implicazione può invertirsi.

### 5 — Forme normali e risoluzione

**Domanda.** Come standardizziamo le formule per facilitarne il confronto e la manipolazione automatica?

**Definizione concettuale.** Le forme normali rappresentano le formule attraverso strutture standardizzate di congiunzioni e disgiunzioni di letterali.

Un letterale è una variabile proposizionale oppure la sua negazione.

**Definizione formale.**

|Forma|Struttura|
|---|---|
|FNC|Congiunzione di disgiunzioni|
|FND|Disgiunzione di congiunzioni|

$$
\mathrm{FNC}= \bigwedge_i\left(\bigvee_j L_{ij}\right)
$$

$$
\mathrm{FND}= \bigvee_i\left(\bigwedge_j L_{ij}\right)
$$

Il principio di risoluzione è una regola inferenziale fondamentale:

$$
\boxed{ (P\lor Q)\land(\neg P\lor R) \Rightarrow(Q\lor R) }
$$

Permette di ricavare una nuova clausola eliminando due letterali complementari.

### 6 — Logica del primo ordine

**Domanda.** Come rappresentiamo affermazioni che riguardano individui, proprietà e relazioni, superando i limiti del calcolo proposizionale?

**Definizione concettuale.** La logica del primo ordine estende il calcolo proposizionale permettendo di descrivere la struttura interna delle affermazioni attraverso termini, predicati e quantificatori.

Ad esempio, anziché rappresentare «Tutti gli studenti sono esseri umani» con un'unica proposizione $P$, possiamo formalizzarne la struttura:

$$
\forall x\,(S(x)\Rightarrow U(x))
$$

Dove:

- $S(x)$: x è uno studente;

- $U(x)$: x è un essere umano;

- $\forall x$: per ogni individuo x del dominio.


Elementi fondamentali del linguaggio:

|Elemento|Definizione|Esempio|
|---|---|---|
|Dominio $D$|Insieme non vuoto degli individui considerati|$\mathbb N$|
|Variabile|Simbolo che può riferirsi a un individuo|$x,y,z$|
|Termine|Espressione che denota un individuo|$x,4,x+1$|
|Predicato|Esprime una proprietà o relazione|$P(x),R(x,y)$|
|Quantificatore universale|La formula vale per ogni individuo|$\forall x$|
|Quantificatore esistenziale|La formula vale per almeno un individuo|$\exists x$|

Definizione formale dei quantificatori:

Sia $D$ il dominio e sia $P(x)$ una formula con variabile libera $x$.

Quantificatore universale:

$$
\boxed{\forall x\,P(x)}
$$

È vero se e soltanto se $P(x)$ risulta vera per ogni individuo del dominio $D$.

Quantificatore esistenziale:

$$
\boxed{\exists x\,P(x)}
$$

È vero se e soltanto se esiste almeno un individuo del dominio $D$ per cui $P(x)$ risulta vera.

Differenza fondamentale fra le strutture:

|Affermazione|Formula|
|---|---|
|Tutti gli studenti frequentano|$\forall x(S(x)\Rightarrow F(x))$|
|Esiste uno studente che frequenta|$\exists x(S(x)\land F(x))$|
|Nessuno studente frequenta|$\forall x(S(x)\Rightarrow\neg F(x))$|
|Esiste uno studente che non frequenta|$\exists x(S(x)\land\neg F(x))$|

Infine, una regola inferenziale fondamentale della logica del primo ordine è l'istanziazione universale:

$$
\boxed{ \frac{\forall x\,P(x)}{P(a)} }
$$

Se una proprietà vale per ogni individuo del dominio, allora vale anche per un particolare individuo $a$ appartenente al dominio.

## 3. Formulario minimo da ricordare

|Legge|Formula|
|---|---|
|Doppia negazione|$\neg\neg P\equiv P$|
|De Morgan|$\neg(P\land Q)\equiv\neg P\lor\neg Q$|
|De Morgan|$\neg(P\lor Q)\equiv\neg P\land\neg Q$|
|Terzo escluso|$P\lor\neg P\equiv\mathrm T$|
|Contraddizione|$P\land\neg P\equiv\mathrm F$|
|Eliminazione implicazione|$P\Rightarrow Q\equiv\neg P\lor Q$|
|Controposizione|$(P\Rightarrow Q)\equiv(\neg Q\Rightarrow\neg P)$|
|Modus ponens|$(P\Rightarrow Q)\land P\Rightarrow Q$|

Il collegamento da ricordare: la sintassi definisce quali espressioni possiamo costruire, la semantica ne determina il significato e le dimostrazioni ci permettono di ricavare conseguenze attraverso regole formali corrette.
