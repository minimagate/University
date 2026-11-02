---
type: lecture-note
course: Geometria 1
date: 2026-11-01
title: Indipendenza lineare e basi mediante Gauss
source_transcript: _transcripts/Geometria 1/2026-11-01 - Indipendenza lineare e
  basi mediante Gauss.md
source_hash: sha256:cff3070b4affb5feb66e96046568b86db3d438b245edba7b8652159dc1984687
teaching_model: openai/gpt-5.6-luna
taught_at: 2026-11-01T08:08:08.682Z
---

# Indipendenza lineare e basi mediante l’algoritmo di Gauss

## 1. Verifica della struttura di spazio vettoriale e dei sottospazi

È importante distinguere due situazioni diverse.

### Verificare che un insieme sia uno spazio vettoriale

Se si introduce uno spazio vettoriale definendo su un insieme nuove operazioni, in linea di principio occorre verificare tutti gli assiomi di spazio vettoriale:

- proprietà associativa e commutativa della somma;
- esistenza del vettore nullo;
- esistenza dell’opposto;
- distributività rispetto alla somma di vettori;
- distributività rispetto alla somma di scalari;
- compatibilità del prodotto per scalare;
- proprietà dell’elemento neutro del campo.

Non è sufficiente controllare soltanto che le operazioni siano ben definite, cioè che il risultato della somma e del prodotto per scalare rimanga nell’insieme.

### Verificare che un insieme sia un sottospazio

Se invece l’insieme $W$ è già contenuto in uno spazio vettoriale noto $V$, non è necessario verificare nuovamente tutti gli assiomi. È sufficiente dimostrare che:

1. $W$ è non vuoto, oppure contiene il vettore nullo;
2. è chiuso rispetto alla somma;
3. è chiuso rispetto al prodotto per scalare.

Equivalentemente, si può verificare direttamente che per ogni $u,v\in W$ e per ogni $\lambda,\mu$ si abbia

$$
\lambda u+\mu v\in W.
$$

La struttura di spazio vettoriale di $V$ garantisce automaticamente tutti gli altri assiomi.

> [!warning]
> Non bisogna confondere la verifica degli assiomi per uno spazio vettoriale con il criterio più semplice per riconoscere un sottospazio di uno spazio vettoriale già noto.

---

## 2. Indipendenza lineare

Siano $v_1,\dots,v_k$ vettori di uno spazio vettoriale $V$.

I vettori $v_1,\dots,v_k$ si dicono **linearmente indipendenti** se l’unica combinazione lineare nulla è quella con tutti i coefficienti nulli:

$$
\lambda_1v_1+\lambda_2v_2+\cdots+\lambda_kv_k=0
\quad\Longrightarrow\quad
\lambda_1=\lambda_2=\cdots=\lambda_k=0.
$$

In caso contrario, i vettori si dicono **linearmente dipendenti**. Ciò significa che esistono coefficienti $\lambda_1,\dots,\lambda_k$, non tutti nulli, tali che

$$
\lambda_1v_1+\cdots+\lambda_kv_k=0.
$$

Se, ad esempio, $\lambda_k\neq 0$, si può ricavare

$$
v_k
=
-\frac{\lambda_1}{\lambda_k}v_1-\cdots
-\frac{\lambda_{k-1}}{\lambda_k}v_{k-1}.
$$

Quindi, in un insieme di vettori linearmente dipendenti, almeno un vettore è combinazione lineare degli altri.

### Interpretazione tramite un sistema lineare

Si dispongono i vettori come colonne di una matrice:

$$
A=
\begin{bmatrix}
\vert & \vert & & \vert\\
v_1 & v_2 & \cdots & v_k\\
\vert & \vert & & \vert
\end{bmatrix}.
$$

La relazione

$$
\lambda_1v_1+\cdots+\lambda_kv_k=0
$$

è equivalente al sistema omogeneo

$$
A
\begin{bmatrix}
\lambda_1\\
\lambda_2\\
\vdots\\
\lambda_k
\end{bmatrix}
=
\begin{bmatrix}
0\\
0\\
\vdots\\
0
\end{bmatrix}.
$$

Pertanto:

- i vettori sono linearmente indipendenti se il sistema ha soltanto la soluzione nulla;
- i vettori sono linearmente dipendenti se il sistema ammette soluzioni non nulle.

Riducendo $A$ a scala mediante l’eliminazione di Gauss, il sistema omogeneo ha soltanto la soluzione nulla se e solo se ogni incognita corrisponde a una colonna pivotale. Di conseguenza:

> $v_1,\dots,v_k$ sono linearmente indipendenti se e solo se nella matrice formata da questi vettori come colonne c’è un pivot in ogni colonna.

Se il numero di pivot è minore del numero di colonne, esistono variabili libere e quindi esistono soluzioni non nulle del sistema omogeneo: i vettori sono dipendenti.

---

## 3. Esempio di verifica dell’indipendenza

Per verificare se una famiglia di vettori è linearmente indipendente si procede così:

1. si costruisce la matrice avente i vettori come colonne;
2. si applicano operazioni elementari sulle righe;
3. si osservano le colonne pivotali della matrice a scala.

Se tutte le colonne sono pivotali, i vettori iniziali sono linearmente indipendenti. Se invece una o più colonne non sono pivotali, la famiglia è linearmente dipendente.

Nel corso della lezione sono stati considerati esempi numerici di famiglie di tre vettori. In un primo caso la riduzione produceva tre pivot, e dunque i tre vettori risultavano linearmente indipendenti. In un secondo caso la riduzione produceva soltanto due pivot, per cui i tre vettori erano linearmente dipendenti.

Il numero di pivot coincide con il rango della matrice e indica il numero massimo di vettori linearmente indipendenti contenuti nella famiglia considerata.

---

## 4. Individuare un sottoinsieme linearmente indipendente

Supponiamo di avere una famiglia di vettori

$$
v_1,\dots,v_k
$$

che non è linearmente indipendente. La riduzione di Gauss permette non soltanto di stabilire che la famiglia è dipendente, ma anche di estrarre da essa una sottofamiglia linearmente indipendente.

Si costruisce la matrice

$$
A=
\begin{bmatrix}
\vert & \vert & & \vert\\
v_1 & v_2 & \cdots & v_k\\
\vert & \vert & & \vert
\end{bmatrix}
$$

e la si riduce a scala. Si considerano quindi le **colonne pivotali**, ma bisogna riferirle alle colonne della matrice iniziale.

Se i pivot si trovano, per esempio, nelle colonne $1$, $2$ e $5$, allora i vettori

$$
v_1,\ v_2,\ v_5
$$

sono linearmente indipendenti.

In generale, i vettori iniziali corrispondenti alle colonne pivotali formano una base dello spazio generato da tutti i vettori:

$$
\{v_j:\text{ la colonna }j\text{ è pivotale}\}
$$

è una base di

$$
\operatorname{span}(v_1,\dots,v_k).
$$

### Perché è possibile eliminare le colonne non pivotali?

Le operazioni elementari sulle righe non cambiano l’insieme delle soluzioni del sistema omogeneo

$$
Ax=0.
$$

Quindi permettono di determinare correttamente quali colonne sono indipendenti. Tuttavia, le operazioni di riga modificano effettivamente i vettori-colonna e, in generale, modificano lo spazio da essi generato.

Per questo motivo, le colonne pivotali che si utilizzano per costruire la base devono essere quelle della **matrice iniziale**, non quelle della matrice ridotta.

> [!warning]
> Le operazioni di riga preservano le soluzioni dei sistemi lineari, ma non preservano in generale lo span delle colonne.  
> Di conseguenza, per estrarre una base dallo span delle colonne si scelgono le colonne pivotali della matrice iniziale.

### Perché si possono eliminare colonne prima o durante la riduzione?

Se si decide di considerare soltanto un sottoinsieme delle colonne iniziali, le stesse operazioni di Gauss sulle righe possono essere applicate alla matrice più piccola. Le operazioni di riga agiscono sulle righe e, per ciascuna colonna, seguono lo stesso procedimento.

Per esempio, se si vuole verificare se $v_1$ e $v_2$ sono indipendenti, si può:

- cancellare la terza colonna dalla matrice iniziale;
- proseguire la riduzione sulle due colonne rimaste;
- osservare se entrambe diventano colonne pivotali.

Non è sempre necessario rifare da capo tutti i calcoli: la riduzione già effettuata può spesso essere riutilizzata, continuando il procedimento sulla matrice ottenuta.

---

## 5. Base dello span di una famiglia di vettori

Una famiglia di vettori è una base di uno spazio se soddisfa contemporaneamente due condizioni:

1. è linearmente indipendente;
2. genera lo spazio.

Se $v_1,\dots,v_k$ sono i vettori di partenza, la procedura di Gauss consente di estrarre una base di

$$
\operatorname{span}(v_1,\dots,v_k).
$$

I vettori corrispondenti alle colonne pivotali della matrice iniziale:

- sono linearmente indipendenti;
- generano lo stesso spazio generato da tutti i vettori iniziali.

Quindi, se la matrice ha rango $r$, si ottengono esattamente $r$ vettori che formano una base dello span.

Ad esempio, se tre vettori hanno soltanto due colonne pivotali, allora:

- i tre vettori complessivamente sono dipendenti;
- i due vettori corrispondenti alle colonne pivotali sono indipendenti;
- quei due vettori formano una base dello spazio generato dai tre vettori.

Il terzo vettore è combinazione lineare dei primi due, anche se la combinazione esplicita non è necessariamente richiesta per trovare la base.

---

## 6. Estrazione di una base da un insieme di generatori

Supponiamo che $v_1,\dots,v_k$ siano generatori di un sottospazio $W$:

$$
W=\operatorname{span}(v_1,\dots,v_k).
$$

Per estrarre una base di $W$:

1. si costruisce la matrice con i vettori come colonne;
2. si applica l’algoritmo di Gauss;
3. si individuano le colonne pivotali;
4. si prendono, nella matrice iniziale, i vettori corrispondenti alle colonne pivotali.

Il risultato è una base di $W$.

Questa procedura è un’operazione di **estrazione**: si parte da un insieme di generatori e si elimina la ridondanza, senza introdurre nuovi vettori.

---

## 7. Completamento di una famiglia linearmente indipendente a una base

La procedura precedente estrae una base da una famiglia già generatrice. La situazione opposta è il **completamento**.

Supponiamo di avere $k$ vettori linearmente indipendenti in $\mathbb{K}^n$:

$$
v_1,\dots,v_k,
\qquad k\leq n.
$$

Essi non costituiscono necessariamente una base di $\mathbb{K}^n$, perché per essere una base dello spazio ambiente devono essere anche generatori e una base di $\mathbb{K}^n$ deve contenere $n$ vettori.

L’obiettivo è aggiungere altri vettori fino a ottenere una base di $\mathbb{K}^n$.

### Metodo mediante la base canonica

Si possono aggiungere ai vettori iniziali alcuni vettori della base canonica:

$$
e_1,\dots,e_n.
$$

Si considera la matrice

$$
A=
\begin{bmatrix}
\vert & \vert & & \vert & \vert & & \vert\\
v_1 & \cdots & v_k & e_1 & \cdots & e_n\\
\vert & \vert & & \vert & \vert & & \vert
\end{bmatrix}.
$$

Poiché $v_1,\dots,v_k$ sono linearmente indipendenti, le prime $k$ colonne sono già indipendenti. Nella riduzione a scala, esse produrranno necessariamente $k$ pivot, uno per ciascuna delle prime $k$ colonne.

Continuando la riduzione, alcune delle colonne aggiunte diventeranno a loro volta colonne pivotali. Si prendono allora:

- tutti i vettori iniziali $v_1,\dots,v_k$;
- i vettori aggiunti corrispondenti alle ulteriori colonne pivotali.

L’insieme così ottenuto è una base di $\mathbb{K}^n$.

### Perché il procedimento funziona?

La base canonica genera già tutto $\mathbb{K}^n$. Pertanto, l’insieme formato dai vettori iniziali e dai vettori della base canonica è certamente un insieme di generatori di $\mathbb{K}^n$.

A questo punto si applica l’algoritmo di estrazione visto in precedenza. Poiché i primi $k$ vettori sono già linearmente indipendenti, essi corrispondono a colonne pivotali e vengono mantenuti nella base estratta. Si aggiungono soltanto alcuni dei vettori canonici necessari per completare il numero di pivot fino a $n$.

Il risultato è una base che contiene la famiglia iniziale:

$$
\{v_1,\dots,v_k\}
\subseteq
\mathcal{B}.
$$

> [!note]
> Il completamento non produce una base scelta arbitrariamente: costruisce una base che contiene esplicitamente i vettori linearmente indipendenti dati in partenza.

---

## 8. Esempio concettuale di completamento

Se si parte da una famiglia linearmente indipendente

$$
v_1,\dots,v_k\in\mathbb{K}^n,
$$

si può formare la matrice con colonne

$$
v_1,\dots,v_k,e_1,\dots,e_n.
$$

Dopo la riduzione a scala:

- le prime $k$ colonne devono essere pivotali;
- tra le colonne della base canonica, si individuano quelle che forniscono i pivot mancanti;
- si mantengono i vettori corrispondenti alle colonne pivotali della matrice iniziale.

In questo modo si ottengono esattamente $n$ vettori linearmente indipendenti, quindi una base di $\mathbb{K}^n$.

Il punto essenziale è che non si cerca una base “a caso”: si completa sistematicamente l’insieme già linearmente indipendente.

---

## 9. Intersezione di sottospazi descritti da equazioni

Per determinare l’intersezione di due sottospazi è conveniente usare le loro descrizioni tramite equazioni.

Supponiamo che

$$
U=\{x\in\mathbb{K}^n:A x=0\},
\qquad
W=\{x\in\mathbb{K}^n:B x=0\}.
$$

Un vettore appartiene all’intersezione $U\cap W$ se e solo se soddisfa contemporaneamente entrambe le famiglie di equazioni:

$$
x\in U\cap W
\quad\Longleftrightarrow\quad
\begin{cases}
Ax=0,\\
Bx=0.
\end{cases}
$$

Si ottiene quindi un unico sistema raccogliendo tutte le equazioni:

$$
\begin{bmatrix}
A\\
B
\end{bmatrix}x=0.
$$

La procedura è:

1. si scrivono le equazioni che descrivono il primo sottospazio;
2. si scrivono le equazioni che descrivono il secondo sottospazio;
3. si uniscono le due famiglie di equazioni in un unico sistema;
4. si riduce il sistema con Gauss;
5. si determina l’insieme delle soluzioni;
6. se necessario, si estrae una base dello spazio delle soluzioni.

Se i sottospazi sono invece dati mediante generatori, è prima necessario passare dalla descrizione per generatori a una descrizione tramite equazioni.

---

## 10. Somma di sottospazi

Per la somma di sottospazi è generalmente più comoda la descrizione tramite generatori.

Se

$$
U=\operatorname{span}(u_1,\dots,u_r),
\qquad
W=\operatorname{span}(w_1,\dots,w_s),
$$

allora

$$
U+W
=
\operatorname{span}(u_1,\dots,u_r,w_1,\dots,w_s).
$$

Quindi si procede così:

1. si raccolgono tutti i generatori di $U$ e di $W$;
2. si costruisce la matrice che li ha come colonne;
3. si applica l’algoritmo di Gauss;
4. si prendono, dalla matrice iniziale, le colonne pivotali;
5. i vettori corrispondenti costituiscono una base di $U+W$.

Se i sottospazi sono dati tramite equazioni, si può prima determinare una base per ciascuno di essi risolvendo i rispettivi sistemi, e poi applicare la procedura precedente.

In sintesi:

- per l’intersezione è naturale unire le equazioni;
- per la somma è naturale unire i generatori;
- in entrambi i casi, l’algoritmo di Gauss permette infine di ottenere una base.