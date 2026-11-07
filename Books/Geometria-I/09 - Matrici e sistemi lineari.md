# Matrici e sistemi lineari

Prerequisiti: [[Books/Geometria-I/04 - Spazi vettoriali e operazioni lineari|operazioni negli spazi vettoriali]], [[Books/Geometria-I/05 - Sottospazi e combinazioni lineari|combinazioni lineari]] e [[Books/Geometria-I/06 - Indipendenza basi e coordinate|basi e coordinate]]; per l'ultimo esercizio, [[Books/Geometria-I/03 - Polinomi radici e fattorizzazioni|polinomi formali]]. Torna all'[[Books/Geometria-I/00 - Indice e piano di studio|indice e piano di studio]].

> [!info] In questo capitolo
> - Leggerai una matrice sia per **righe**, come elenco di vincoli, sia per **colonne**, come elenco di contributi da combinare.
> - Capirai perché il prodotto tra matrici ha la regola riga per colonna e descrive due operazioni consecutive.
> - Dimostrerai associatività, distributività e regola della trasposta, distinguendole dalle proprietà che il prodotto matriciale non possiede.
> - Tradurrai un sistema nella forma $Ax=b$ e userai combinazioni di colonne, geometria e sostituzione per capire che cosa significhi risolverlo.

## Domande per iniziare dagli esercizi

Prova il problema indicato prima di leggere la spiegazione. Se ti manca uno strumento, recupera la sezione collegata e torna al tentativo. Qui non servono ancora Gauss, rango o determinanti: vogliamo costruire il linguaggio che darà un significato a quelle tecniche. I riscontri sono raccolti in fondo.

| Domanda guida | Esercizi da tentare | Teoria da recuperare |
|---|---|---|
| Come può una tabella raccogliere molti contributi in un solo calcolo? | [[#Esercizio 2 — Un risultato letto in due modi (prodotto matrice-vettore)\|2]] | [[#Una tabella di contributi diventa una regola di calcolo\|Il problema di partenza]] |
| Quali dimensioni rendono sensata un'operazione? | [[#Esercizio 1 — Controllare i formati prima dei conti (righe e colonne)\|1]] | [[#Righe colonne e formati\|Leggere una matrice]] |
| Perché moltiplicare una colonna significa combinarne altre? | [[#Esercizio 2 — Un risultato letto in due modi (prodotto matrice-vettore)\|2]], [[#Esercizio 3 — Ricostruire una matrice dai suoi effetti (colonne canoniche)\|3]] | [[#Moltiplicare una matrice per una colonna\|Le due letture di Ax]] |
| Quale prodotto descrive due passaggi consecutivi? | [[#Esercizio 4 — Fare due passaggi oppure uno solo (prodotto tra matrici)\|4]] | [[#Un prodotto descrive due trasformazioni consecutive\|La definizione di AB]] |
| Perché possiamo cambiare parentesi ma non l'ordine dei fattori? | [[#Esercizio 5 — Giustificare le regole (associatività e identità)\|5]], [[#Esercizio 6 — Le abitudini degli scalari possono ingannare (non commutatività e cancellazione)\|6]] | [[#Le regole che restano e quelle che cambiano\|Proprietà e controesempi]] |
| Perché trasporre un prodotto inverte l'ordine? | [[#Esercizio 7 — Scambiare gli indici senza perdere l'ordine (trasposta)\|7]] | [[#Trasporre significa cambiare il ruolo degli indici\|Trasposta e prodotto]] |
| Quali informazioni contiene la matrice completa? | [[#Esercizio 8 — Tradurre e controllare (matrice completa e soluzione)\|8]], [[#Esercizio 12 — Un sistema nascosto nei polinomi (coordinate e campo)\|12]] | [[#Un sistema è una sola equazione vettoriale\|Scrivere Ax uguale b]] |
| Quali termini noti sono combinazioni delle colonne? | [[#Esercizio 9 — Prevedere i termini noti possibili (compatibilità e span)\|9]] | [[#Le colonne dicono quali termini noti sono raggiungibili\|Compatibilità e generazione]] |
| Ogni equazione è davvero una retta o un piano? | [[#Esercizio 10 — Non tutte le righe sono rette (geometria e casi degeneri)\|10]] | [[#Le righe dicono quali vincoli devono convivere\|Geometria dei sistemi]] |
| Come dimostro di aver trovato tutte le soluzioni? | [[#Esercizio 11 — Un parametro da verificare (correttezza e completezza)\|11]] | [[#Scrivere tutte le soluzioni richiede due verifiche\|Parametri e controllo]] |

## Esercizi per verificare la comprensione

Gli esercizi 1–4 allenano la lettura delle operazioni; 5–7 ne controllano le ragioni e i limiti; 8–12 traducono problemi e verificano soluzioni. Tutti gli enunciati e i riscontri sono redazionali. Scrivi i formati delle matrici prima di cominciare un prodotto e indica sempre il campo quando cambia la risposta.

### Esercizio 1 — Controllare i formati prima dei conti (righe e colonne)

Siano $A\in M_{2,3}(K)$, $B\in M_{3,2}(K)$, $C\in M_{2,2}(K)$ e $x\in K^3$ un vettore colonna. Quali espressioni sono definite fra $A+B$, $AB$, $BA$, $CA$, $AC$, $Ax$, $Bx$ e $A^Tx$? Per quelle definite scrivi il formato del risultato.

Se $A=(a_{ij})$, dove si trova $a_{23}$? Che differenza c'è fra $A_{:2}$ e la seconda riga? Perché una matrice $2\times3$ non può essere uguale a una $3\times2$, anche se contiene gli stessi sei numeri?

Se ti blocchi: [[#Righe colonne e formati|righe, colonne e formati]] · [[#Trasporre significa cambiare il ruolo degli indici|trasposta]].

Controllo dopo il tentativo: [[#Riscontro 1|riscontro 1]].

### Esercizio 2 — Un risultato letto in due modi (prodotto matrice-vettore)

Per

$$
A=\begin{pmatrix}1&2&-1\\0&3&4\end{pmatrix},
\qquad x=\begin{pmatrix}2\\-1\\1\end{pmatrix},
$$

calcola $Ax$ prima riga per colonna, poi come combinazione delle colonne di $A$. Dimostra in generale che $Ae_j$ è la colonna $j$ di $A$.

Usando la formula delle componenti, prova inoltre che $A(\alpha x+\beta y)=\alpha Ax+\beta Ay$ per $x,y\in K^n$ e $\alpha,\beta\in K$.

Se ti blocchi: [[#Moltiplicare una matrice per una colonna|le due letture del prodotto]].

Controllo dopo il tentativo: [[#Riscontro 2|riscontro 2]].

### Esercizio 3 — Ricostruire una matrice dai suoi effetti (colonne canoniche)

Una matrice $A\in M_{2,3}(\mathbb R)$ soddisfa

$$
Ae_1=\begin{pmatrix}1\\2\end{pmatrix},\qquad
Ae_2=\begin{pmatrix}-1\\0\end{pmatrix},\qquad
Ae_3=\begin{pmatrix}0\\3\end{pmatrix}.
$$

Ricostruisci $A$ e calcola $A(2,1,-1)^T$. Spiega perché i dati determinano un'unica matrice.

Se conoscessi soltanto $Ae_1$, $Ae_2$ e $A(e_1+e_2)$, potresti ancora ricostruire univocamente una matrice $2\times3$? Giustifica la risposta costruendo, se possibile, due matrici diverse compatibili con gli stessi dati.

Se ti blocchi: [[#Moltiplicare una matrice per una colonna|il ruolo dei vettori canonici]] · [[#Un prodotto descrive due trasformazioni consecutive|uguaglianza delle matrici attraverso le colonne]].

Controllo dopo il tentativo: [[#Riscontro 3|riscontro 3]].

### Esercizio 4 — Fare due passaggi oppure uno solo (prodotto tra matrici)

Siano

$$
A=\begin{pmatrix}1&-1&2\\0&3&1\end{pmatrix},
\qquad
B=\begin{pmatrix}2&0\\1&-1\\0&2\end{pmatrix}.
$$

Calcola $AB$ e $BA$, precisando i loro formati. Per $y=(1,2)^T$, controlla direttamente che $(AB)y=A(By)$. Verifica anche che la colonna $j$ di $AB$ è $A$ moltiplicata per la colonna $j$ di $B$.

Perché la scrittura «prima $A$, poi $B$» non descrive il calcolo $(AB)y$?

Se ti blocchi: [[#Un prodotto descrive due trasformazioni consecutive|prodotto e ordine dei passaggi]].

Controllo dopo il tentativo: [[#Riscontro 4|riscontro 4]].

### Esercizio 5 — Giustificare le regole (associatività e identità)

Per $A\in M_{2,3}(K)$, $B\in M_{3,4}(K)$ e $C\in M_{4,2}(K)$, scrivi i formati di $AB$, $BC$, $(AB)C$ e $A(BC)$. Prova poi l'associatività confrontando l'entrata $(i,j)$, senza assumerla per il prodotto tra matrici.

Dimostra $I_mA=A=AI_n$ per $A\in M_{m,n}(K)$. Quale identità si trova a sinistra e quale a destra? Dimostra infine $A(B+C)=AB+AC$ quando i formati lo permettono.

Se ti blocchi: [[#Le regole che restano e quelle che cambiano|prove delle proprietà]].

Controllo dopo il tentativo: [[#Riscontro 5|riscontro 5]].

### Esercizio 6 — Le abitudini degli scalari possono ingannare (non commutatività e cancellazione)

In $M_{2,2}(K)$ calcola $E_{12}E_{21}$, $E_{21}E_{12}$ ed $E_{12}^2$. Con questi calcoli, o con altri esempi espliciti, stabilisci se sono corrette le affermazioni:

1. $PQ=QP$ per tutte le matrici quadrate dello stesso formato;
2. $PQ=0$ implica $P=0$ oppure $Q=0$;
3. $P^2=0$ implica $P=0$;
4. da $PX=PY$ e $P\ne0$ segue $X=Y$.

Sviluppa infine $(P+Q)^2$ e spiega perché il termine misto non può essere sostituito in generale da $2PQ$.

Se ti blocchi: [[#Le regole che restano e quelle che cambiano|regole da non trasferire dagli scalari]].

Controllo dopo il tentativo: [[#Riscontro 6|riscontro 6]].

### Esercizio 7 — Scambiare gli indici senza perdere l'ordine (trasposta)

Usando $A,B$ dell'esercizio 4, calcola $(AB)^T$ e verifica l'identità $(AB)^T=B^TA^T$. Dimostra poi questa identità per matrici arbitrarie compatibili, indicando quale proprietà del campo usi.

Se $A$ è $2\times3$ e $B$ è $3\times4$, quali formati hanno $A^T$, $B^T$ e $(AB)^T$? L'espressione $A^TB^T$ è definita? Il solo controllo dei formati basta a dimostrare la formula corretta?

Se ti blocchi: [[#Trasporre significa cambiare il ruolo degli indici|trasposta di un prodotto]].

Controllo dopo il tentativo: [[#Riscontro 7|riscontro 7]].

### Esercizio 8 — Tradurre e controllare (matrice completa e soluzione)

Scrivi matrice dei coefficienti, vettore dei termini noti e matrice completa del sistema reale

$$
\begin{cases}
2x_1-x_2+x_3=3,\\
x_1+2x_2-x_3=0.
\end{cases}
$$

Controlla se $(1,0,1)^T$ e $(1,1,2)^T$ sono soluzioni. Quante sono le incognite? A quale spazio appartiene una soluzione e a quale spazio appartiene $b$?

Un compagno sostiene che il sistema sia omogeneo perché uno dei termini noti è zero. Spiega l'errore. Un altro legge l'ultima colonna della completa come una quarta incognita: correggi anche questa interpretazione.

Se ti blocchi: [[#Un sistema è una sola equazione vettoriale|sistema e matrice completa]].

Controllo dopo il tentativo: [[#Riscontro 8|riscontro 8]].

### Esercizio 9 — Prevedere i termini noti possibili (compatibilità e span)

Sia

$$
A=\begin{pmatrix}1&0&1\\1&1&2\\0&1&1\end{pmatrix}.
$$

Per quali $b=(r,s,t)^T\in K^3$ è risolvibile $Ax=b$? Trova tutte le soluzioni nei casi risolvibili, leggendo la dipendenza fra le colonne e senza usare Gauss.

Applica il risultato a $b=(2,3,1)^T$ e a $b=(2,4,1)^T$ su $\mathbb R$. Dimostra poi in generale che $Ax=b$ è risolvibile se e solo se $b$ appartiene allo span delle colonne di $A$.

Se ti blocchi: [[#Le colonne dicono quali termini noti sono raggiungibili|compatibilità attraverso le colonne]].

Controllo dopo il tentativo: [[#Riscontro 9|riscontro 9]].

### Esercizio 10 — Non tutte le righe sono rette (geometria e casi degeneri)

Descrivi gli insiemi delle soluzioni reali di:

1. $0x+0y=5$;
2. $0x+0y=0$;
3. $x+2y=3$;
4. $x+2y=3$, $2x+4y=6$;
5. $x+2y=3$, $2x+4y=7$;
6. $x+2y=3$, $x-y=0$.

Quali sono sottospazi di $\mathbb R^2$? Dimostra in generale che l'insieme delle soluzioni di $Ax=0$ è un sottospazio e spiega perché, se $b\ne0$, quello di $Ax=b$ non può esserlo.

Se ti blocchi: [[#Le righe dicono quali vincoli devono convivere|geometria e omogeneità]].

Controllo dopo il tentativo: [[#Riscontro 10|riscontro 10]].

### Esercizio 11 — Un parametro da verificare (correttezza e completezza)

Sul campo $K$ considera

$$
\begin{cases}
x_1+x_2-x_3=1,\\
x_2+x_3=0.
\end{cases}
$$

Viene proposta la famiglia $(1+u,-u,u)^T$, con $u\in K$. Controllala nel sistema originale e correggila. Dimostra poi entrambe le affermazioni necessarie: ogni vettore della famiglia corretta è soluzione e ogni soluzione appartiene alla famiglia.

La parametrizzazione è iniettiva? Quante soluzioni ci sono su $\mathbb R$? E su $\mathbb F_2$? Nel secondo caso elencale.

Se ti blocchi: [[#Scrivere tutte le soluzioni richiede due verifiche|parametri, sostituzione e completezza]].

Controllo dopo il tentativo: [[#Riscontro 11|riscontro 11]].

### Esercizio 12 — Un sistema nascosto nei polinomi (coordinate e campo)

Determina quando un polinomio $P=a+bt+ct^2$ è combinazione di

$$
p_1=1+t,\qquad p_2=t+t^2,\qquad p_3=1+t^2.
$$

Scrivi il sistema nei tre coefficienti della combinazione, disponendo le coordinate dei $p_j$ come colonne. Risolvilo su $\mathbb R$ per $P=3+5t+4t^2$ e, sempre su $\mathbb R$, per un termine noto generico.

Passa poi a $\mathbb F_2$. Quale condizione su $a,b,c$ permette la rappresentazione? Se esiste, è unica? Spiega che cosa cambia nella famiglia dei tre polinomi quando $1+1=0$.

Se ti blocchi: [[#Un sistema è una sola equazione vettoriale|equazioni fra coefficienti]] · [[#Le colonne dicono quali termini noti sono raggiungibili|esistenza di una combinazione]] · [[Books/Geometria-I/06 - Indipendenza basi e coordinate#Il campo degli scalari cambia la domanda|campo e indipendenza]].

Controllo dopo il tentativo: [[#Riscontro 12|riscontro 12]].

## Teoria da recuperare

Usa la tabella iniziale per leggere il passaggio necessario al tuo tentativo. Le formule avranno due letture: una serve a calcolare un'entrata, l'altra a capire che cosa l'intera matrice stia facendo.

## Una tabella di contributi diventa una regola di calcolo

Immagina di preparare tre tipi di confezioni. Una confezione del primo tipo richiede due unità della prima risorsa e una della seconda; una del secondo richiede una unità della prima e nessuna della seconda; una del terzo richiede tre unità della seconda e nessuna della prima. Raccogliamo i contributi nella tabella

$$
A=\begin{pmatrix}2&1&0\\1&0&3\end{pmatrix}.
$$

Le colonne corrispondono ai tipi di confezione; le righe alle risorse. Se prepariamo rispettivamente $x_1,x_2,x_3$ confezioni, il consumo è

$$
\begin{pmatrix}
2x_1+x_2\\
x_1+3x_3
\end{pmatrix}.
$$

Per $(x_1,x_2,x_3)=(1,2,1)$ servono $(4,4)$ unità delle due risorse. Possiamo ottenere lo stesso risultato sommando i contributi delle tre colonne:

$$
1\begin{pmatrix}2\\1\end{pmatrix}
+2\begin{pmatrix}1\\0\end{pmatrix}
+1\begin{pmatrix}0\\3\end{pmatrix}
=\begin{pmatrix}4\\4\end{pmatrix}.
$$

Abbiamo compiuto lo stesso calcolo in due modi. Per righe chiediamo quanta risorsa viene consumata; per colonne chiediamo quale contributo dia ogni tipo di confezione.

Il modello concreto usa numeri di confezioni non negativi. L'operazione matematica che ne estraiamo è più generale: permette coefficienti in un campo $K$, anche negativi o complessi. Non stiamo affermando che una confezione negativa sia un oggetto fisico; stiamo isolando una regola che ha senso in molti altri problemi. Per esempio, cercare combinazioni di vettori o uguagliare coefficienti di polinomi richiede proprio questa libertà.

La domanda inversa sarà altrettanto importante: se vogliamo un risultato assegnato $b$, quali coefficienti $x$ possono produrlo? Questa è la domanda espressa da un sistema lineare.

## Righe colonne e formati

Una matrice con $m$ righe e $n$ colonne a coefficienti nel campo $K$ è una famiglia di elementi $a_{ij}\in K$, disposti secondo due indici:

$$
A=(a_{ij})\in M_{m,n}(K),\qquad
1\le i\le m,\quad 1\le j\le n.
$$

Il primo indice indica la riga; il secondo la colonna. Nella matrice dell'esempio, $a_{12}=1$ mentre $a_{21}=1$ occupa un'altra posizione. L'uguaglianza fra matrici richiede lo stesso formato e l'uguaglianza delle entrate corrispondenti.

Scriveremo $A_{:j}$ per la colonna $j$:

$$
A_{:j}=\begin{pmatrix}a_{1j}\\ \vdots\\a_{mj}\end{pmatrix}\in K^m.
$$

La riga $i$ è invece $(a_{i1},\ldots,a_{in})$, un elenco di $n$ coefficienti. Per il prodotto distingueremo il formato riga $1\times n$ dal formato colonna $n\times1$: non basta dire che entrambi contengono $n$ numeri.

Il formato è una prima informazione matematica, non un dettaglio grafico. Una matrice $2\times3$ avrà tre colonne di $K^2$; una matrice $3\times2$ avrà due colonne di $K^3$. Scambiare le dimensioni cambia gli oggetti che possiamo combinare e il tipo del risultato.

### Le operazioni vettoriali già note

Somma e prodotto per scalare sono definiti entrata per entrata:

$$
(A+B)_{ij}=a_{ij}+b_{ij},\qquad
(\lambda A)_{ij}=\lambda a_{ij}.
$$

Per sommare due matrici occorre che abbiano lo stesso formato. Il risultato appartiene ancora a $M_{m,n}(K)$. La matrice nulla $0_{m,n}$ ha tutte le entrate nulle, e l'opposto di $A$ ha entrate $-a_{ij}$. Queste operazioni rendono $M_{m,n}(K)$ uno spazio vettoriale, come già verificato nel [[Books/Geometria-I/04 - Spazi vettoriali e operazioni lineari|capitolo 04]].

Il prodotto tra matrici sarà un'operazione ulteriore. Non è necessario per definire quello spazio vettoriale e non si ottiene moltiplicando semplicemente le entrate corrispondenti. Nel suo caso, le dimensioni richieste saranno diverse da quelle della somma.

> [!example] Esempi e controesempi — Il formato fa parte dell'oggetto
> Due matrici $2\times3$ si possono sommare, ma non moltiplicare fra loro con il prodotto che introdurremo. Una matrice $2\times3$ e una $3\times2$ si possono moltiplicare in entrambi gli ordini, ma non sommare. La compatibilità va controllata per l'operazione effettivamente richiesta.

## Moltiplicare una matrice per una colonna

Siano $A\in M_{m,n}(K)$ e $x\in K^n$, scritto come colonna. Definiamo $Ax\in K^m$ mediante

$$
(Ax)_i=\sum_{j=1}^n a_{ij}x_j,\qquad i=1,\ldots,m.
$$

Ogni componente del risultato nasce dalla riga $i$ di $A$ e dalla colonna $x$: moltiplichiamo i termini corrispondenti e sommiamo. Il numero di colonne di $A$ deve essere il numero di componenti di $x$.

La formula della singola componente si raccoglie in una formula vettoriale:

$$
\boxed{Ax=x_1A_{:1}+\cdots+x_nA_{:n}.}
$$

**Perché le formule coincidono?** La componente $i$ della combinazione a destra è $\sum_jx_ja_{ij}$. Gli elementi del campo commutano, quindi è proprio $\sum_ja_{ij}x_j$, la componente $i$ del prodotto definito. Poiché coincidono tutte le componenti, coincidono i vettori.

> [!abstract] Concetto chiave — Un prodotto, due domande
> La lettura **per righe** calcola ogni componente di $Ax$. La lettura **per colonne** interpreta $Ax$ come una combinazione lineare delle colonne di $A$, con coefficienti dati da $x$. Le due descrizioni riguardano la stessa operazione.

### Esempio svolto: partire dalla combinazione

Consideriamo

$$
C=\begin{pmatrix}1&0&2\\-1&3&1\\0&1&-1\end{pmatrix},
\qquad x=\begin{pmatrix}2\\1\\-1\end{pmatrix}.
$$

Per colonne,

$$
Cx=
2\begin{pmatrix}1\\-1\\0\end{pmatrix}
+\begin{pmatrix}0\\3\\1\end{pmatrix}
-\begin{pmatrix}2\\1\\-1\end{pmatrix}
=\begin{pmatrix}0\\0\\2\end{pmatrix}.
$$

Per righe leggiamo gli stessi tre risultati: $2+0-2=0$, $-2+3-1=0$, $0+1+1=2$. Il doppio controllo aiuta anche a scoprire un errore di segno.

> [!warning] Attenzione — I vettori da combinare vanno nelle colonne
> Se vuoi risolvere $\lambda_1v_1+\cdots+\lambda_nv_n=b$, la matrice ha i $v_j$ come **colonne** e $\lambda$ è la colonna delle incognite. Disporre i $v_j$ come righe cambia il problema. La distinzione viene discussa nelle [[_transcripts/Geometria 1/2026-10-14 - Basi, sottospazi e sistemi lineari|esercitazioni del 14 ottobre]], dove viene corretta una disposizione dei coefficienti alla lavagna.

### I vettori canonici selezionano le colonne

Il vettore canonico $e_j\in K^n$ ha coefficiente $1$ nella posizione $j$ e $0$ nelle altre. Di conseguenza

$$
Ae_j=0A_{:1}+\cdots+1A_{:j}+\cdots+0A_{:n}=A_{:j}.
$$

Conoscere $Ae_1,\ldots,Ae_n$ significa dunque conoscere tutte le colonne, e quindi l'intera matrice. In particolare, se $Ax=Bx$ per ogni $x\in K^n$, allora $A=B$: basta scegliere uno alla volta i vettori $e_j$.

### La moltiplicazione conserva le combinazioni

Per $x,y\in K^n$ e $\alpha,\beta\in K$, confrontiamo le componenti:

$$
\begin{aligned}
\bigl(A(\alpha x+\beta y)\bigr)_i
&=\sum_j a_{ij}(\alpha x_j+\beta y_j)\\
&=\alpha\sum_j a_{ij}x_j+\beta\sum_j a_{ij}y_j\\
&=(\alpha Ax+\beta Ay)_i.
\end{aligned}
$$

La distributività e la commutatività degli scalari giustificano il secondo passaggio. Dunque

$$
A(\alpha x+\beta y)=\alpha Ax+\beta Ay.
$$

La funzione $x\mapsto Ax$ rispetta quindi le operazioni vettoriali: è lineare, nel senso già incontrato per le coordinate. Ne studieremo sistematicamente il comportamento nel [[Books/Geometria-I/11 - Applicazioni lineari nucleo e immagine|capitolo 11]].

## Un prodotto descrive due trasformazioni consecutive

Supponiamo ora che i coefficienti $x$ siano a loro volta prodotti da una matrice $B\in M_{n,p}(K)$: $x=By$, con $y\in K^p$. Prima calcoliamo $By$, poi applichiamo $A$. Possiamo raccogliere i due passaggi in un'unica matrice?

Scrivendo la componente $i$ del risultato,

$$
\begin{aligned}
\bigl(A(By)\bigr)_i
&=\sum_{k=1}^n a_{ik}\left(\sum_{j=1}^p b_{kj}y_j\right)\\
&=\sum_{j=1}^p\left(\sum_{k=1}^n a_{ik}b_{kj}\right)y_j.
\end{aligned}
$$

Abbiamo distribuito e raggruppato una somma finita. Il coefficiente davanti a $y_j$ suggerisce la definizione.

**Definizione.** Per $A\in M_{m,n}(K)$ e $B\in M_{n,p}(K)$, il prodotto $AB$ è la matrice di $M_{m,p}(K)$ con

$$
\boxed{(AB)_{ij}=\sum_{k=1}^n a_{ik}b_{kj}.}
$$

Il numero di colonne del primo fattore deve coincidere con il numero di righe del secondo. Le dimensioni esterne danno quelle del risultato:

$$
(m\times n)(n\times p)=m\times p.
$$

La derivazione appena fatta prova

$$
(AB)y=A(By)\qquad\text{per ogni }y\in K^p.
$$

Il fattore più vicino a $y$ agisce per primo. Scrivere $AB$ significa dunque applicare prima $B$ e poi $A$. La notazione è coerente con la composizione delle funzioni, letta da destra verso sinistra.

### Le colonne del prodotto

Fissando $j$, la formula delle entrate dà

$$
(AB)_{:j}=A\,B_{:j}.
$$

In parole: per trovare la colonna $j$ del prodotto applichiamo $A$ alla colonna $j$ di $B$. Equivalentemente, prendiamo una combinazione delle colonne di $A$, con i coefficienti della colonna $j$ di $B$.

Questa proprietà caratterizza il prodotto: impone tutte le colonne del risultato e non lascia scelte. È anche la stessa regola $(AB)e_j=A(Be_j)$, perché $Be_j$ è la colonna $j$ di $B$.

### Esempio svolto: dai nuovi coefficienti al risultato

Riprendiamo la matrice dei contributi iniziali e scegliamo

$$
A=\begin{pmatrix}2&1&0\\1&0&3\end{pmatrix},
\qquad
B=\begin{pmatrix}1&0\\0&2\\1&1\end{pmatrix}.
$$

Il prodotto è

$$
AB=
\begin{pmatrix}
2\cdot1+1\cdot0+0\cdot1&2\cdot0+1\cdot2+0\cdot1\\
1\cdot1+0\cdot0+3\cdot1&1\cdot0+0\cdot2+3\cdot1
\end{pmatrix}
=\begin{pmatrix}2&2\\4&3\end{pmatrix}.
$$

Per $y=(2,-1)^T$ abbiamo $By=(2,-2,1)^T$ e poi $A(By)=(2,5)^T$. Anche la matrice unica dà

$$
\begin{pmatrix}2&2\\4&3\end{pmatrix}
\begin{pmatrix}2\\-1\end{pmatrix}
=\begin{pmatrix}2\\5\end{pmatrix}.
$$

Nel primo percorso vediamo i dati intermedi; nel secondo conserviamo soltanto la regola complessiva. Nessuna informazione sul risultato finale è stata persa.

> [!example] Esempi e controesempi — Il prodotto non è entrata per entrata
> Nella formula $(AB)_{ij}$ si sommano più contributi, indicizzati da $k$. Per matrici $2\times3$ e $3\times2$, non esiste neppure una corrispondenza fra entrate da moltiplicare posizione per posizione; esiste invece il prodotto appena definito, di formato $2\times2$. Una regola diversa sulle entrate definirebbe un'altra operazione.

## Le regole che restano e quelle che cambiano

Il prodotto nasce da somme e prodotti nel campo; per questo conserva alcune regole familiari. Il modo in cui si incrociano gli indici impedisce però di trasferire tutte le proprietà degli scalari.

### Associatività: cambiare parentesi è lecito

Siano $A\in M_{m,n}(K)$, $B\in M_{n,p}(K)$ e $C\in M_{p,q}(K)$. Entrambi i raggruppamenti sono matrici $m\times q$. Dimostriamo

$$
(AB)C=A(BC).
$$

*Passo 1 — Aprire la definizione nel primo raggruppamento.*

$$
\begin{aligned}
\bigl((AB)C\bigr)_{ij}
&=\sum_{h=1}^p(AB)_{ih}c_{hj}\\
&=\sum_{h=1}^p\sum_{k=1}^n a_{ik}b_{kh}c_{hj}.
\end{aligned}
$$

*Passo 2 — Raggruppare gli stessi termini.* Per associatività e distributività nel campo e perché le somme sono finite,

$$
\sum_{h=1}^p\sum_{k=1}^n a_{ik}b_{kh}c_{hj}
=\sum_{k=1}^n a_{ik}\left(\sum_{h=1}^p b_{kh}c_{hj}\right).
$$

*Passo 3 — Riconoscere il secondo raggruppamento.* La parentesi è $(BC)_{kj}$, perciò l'ultima espressione è $(A(BC))_{ij}$. Le entrate coincidono per ogni $i,j$ e le matrici sono uguali.

La dimostrazione non ha presupposto l'associatività matriciale: l'ha ricavata dalle proprietà degli scalari. Possiamo scrivere $ABC$ senza specificare le parentesi, mantenendo invece fisso l'ordine.

### Distributività, scalari e identità

Se $A$ è $m\times n$ e $B,C$ sono $n\times p$, allora

$$
\begin{aligned}
\bigl(A(B+C)\bigr)_{ij}
&=\sum_k a_{ik}(b_{kj}+c_{kj})\\
&=\sum_k a_{ik}b_{kj}+\sum_k a_{ik}c_{kj}\\
&=(AB+AC)_{ij}.
\end{aligned}
$$

Quindi $A(B+C)=AB+AC$. La stessa apertura della definizione sul primo fattore prova $(A+B)C=AC+BC$ nei formati appropriati. Per $\lambda\in K$, raccogliere lo scalare in ogni somma prova

$$
(\lambda A)B=A(\lambda B)=\lambda(AB).
$$

La **matrice identità** $I_n$ ha $1$ sulla diagonale e $0$ altrove. Nella componente $i$ di $I_nx$, tutti i termini sono nulli tranne quello con indice $i$, che vale $x_i$: dunque $I_nx=x$.

Per una matrice rettangolare $A\in M_{m,n}(K)$,

$$
I_mA=A,\qquad AI_n=A.
$$

Per la prima uguaglianza, nell'entrata $(i,j)$ della somma $\sum_k(I_m)_{ik}a_{kj}$ rimane soltanto $a_{ij}$. Per la seconda, nella somma $\sum_ka_{ik}(I_n)_{kj}$ rimane soltanto il termine con $k=j$. Le due identità possono avere formati diversi: quella a sinistra agisce su $m$ righe, quella a destra su $n$ colonne.

Anche il prodotto per una matrice nulla dà la matrice nulla del formato risultante: ogni somma della definizione ha tutti i termini nulli.

### Controesempi: scambiare e cancellare non è automatico

Per

$$
P=E_{12}=\begin{pmatrix}0&1\\0&0\end{pmatrix},
\qquad
Q=E_{21}=\begin{pmatrix}0&0\\1&0\end{pmatrix}
$$

si ha

$$
PQ=E_{11},\qquad QP=E_{22}.
$$

I prodotti sono entrambi definiti, ma diversi su qualunque campo, perché $1\ne0$. Il prodotto **non è commutativo**. Per matrici rettangolari può succedere ancora prima che uno dei due ordini non sia definito, oppure che i risultati abbiano formati diversi.

Ci sono inoltre matrici non nulle con prodotto nullo:

$$
\begin{pmatrix}1&0\\0&0\end{pmatrix}
\begin{pmatrix}0&0\\0&1\end{pmatrix}
=0_{2,2}.
$$

Non vale quindi la legge di annullamento del prodotto propria del campo degli scalari. La condizione «matrice non nulla» non basta neppure a cancellare un fattore: la matrice a sinistra manda sia la colonna $(0,0)^T$ sia la colonna $(0,1)^T$ nella stessa colonna nulla.

Per $n\ge2$, $M_{n,n}(K)$ con questo prodotto non è dunque un campo: gli stessi controesempi si collocano nel blocco iniziale $2\times2$, mettendo zero nelle altre posizioni. Per $n=1$, invece, il prodotto delle matrici con una sola entrata coincide con il prodotto degli scalari di $K$. Il caso di formato uno non va confuso con quelli successivi.

> [!warning] Attenzione — Non nullo non significa cancellabile
> Cautela redazionale: sugli scalari di un campo, $a\ne0$ permette di moltiplicare per $a^{-1}$. Per una matrice quadrata non nulla non abbiamo ancora alcuna garanzia analoga. Nel [[Books/Geometria-I/12 - Rango invertibilità e matrici elementari|capitolo 12]] distingueremo le matrici invertibili da quelle semplicemente non nulle.

Infine, distribuendo senza cambiare l'ordine dei fattori,

$$
(P+Q)^2=P^2+PQ+QP+Q^2.
$$

Possiamo raccogliere $PQ+QP$ in $2PQ$ se $P$ e $Q$ commutano; non possiamo farlo in generale. La distributività continua a funzionare, ma non autorizza a spostare i fattori.

## Trasporre significa cambiare il ruolo degli indici

La **trasposta** di $A\in M_{m,n}(K)$ è la matrice $A^T\in M_{n,m}(K)$ definita da

$$
(A^T)_{ji}=a_{ij}.
$$

La riga $i$ diventa la colonna $i$. Per esempio,

$$
A=\begin{pmatrix}1&2&3\\4&5&6\end{pmatrix}
\quad\Longrightarrow\quad
A^T=\begin{pmatrix}1&4\\2&5\\3&6\end{pmatrix}.
$$

Scambiare due volte i ruoli riporta al punto di partenza: $(A^T)^T=A$. Confrontando una singola entrata si provano anche

$$
(A+B)^T=A^T+B^T,\qquad
(\lambda A)^T=\lambda A^T.
$$

Trasporre non significa coniugare: sui complessi, le entrate vengono soltanto spostate. Per esempio, la trasposta della colonna $(1,i)^T$ è la riga $(1,i)$, senza sostituire $i$ con $-i$.

### Perché l'ordine del prodotto si inverte

Per $A\in M_{m,n}(K)$ e $B\in M_{n,p}(K)$ vale

$$
\boxed{(AB)^T=B^TA^T.}
$$

*Passo 1 — Controllare i formati.* A sinistra abbiamo una matrice $p\times m$. A destra i fattori sono $p\times n$ e $n\times m$: il prodotto è definito e ha lo stesso formato. Questo rende possibile l'uguaglianza, ma non la dimostra.

*Passo 2 — Leggere un'entrata.* Per ogni $i=1,\ldots,m$ e $j=1,\ldots,p$,

$$
\bigl((AB)^T\bigr)_{ji}
=(AB)_{ij}
=\sum_{k=1}^n a_{ik}b_{kj}.
$$

D'altra parte,

$$
(B^TA^T)_{ji}
=\sum_{k=1}^n(B^T)_{jk}(A^T)_{ki}
=\sum_{k=1}^n b_{kj}a_{ik}.
$$

*Passo 3 — Usare la commutatività degli scalari.* In ogni termine $b_{kj}a_{ik}=a_{ik}b_{kj}$ perché i coefficienti appartengono a un campo. Le somme coincidono, quindi coincidono tutte le entrate.

> [!example] Esempi e controesempi — La forma non sostituisce la prova
> Se $A$ è $2\times3$ e $B$ è $3\times4$, $(AB)^T$ è $4\times2$. Il prodotto corretto $B^TA^T$ ha proprio quel formato. La scrittura $A^TB^T$ non è neppure definita. Per matrici quadrate sarebbe definita, ma potrebbe comunque dare un risultato diverso: gli indici, non soltanto le dimensioni, spiegano l'inversione dell'ordine.

Questa formula è dimostrata anche nella [[_transcripts/Geometria 1/2026-11-04 - Sistemi lineari e somme dirette di sottospazi|lezione del 4 novembre sui sistemi]]. Notiamo il punto preciso: abbiamo usato la commutatività degli **scalari** per provare un'identità fra prodotti di matrici che invece non commutano in generale.

## Un sistema è una sola equazione vettoriale

Un **sistema lineare** sul campo $K$ ha la forma

$$
\begin{cases}
a_{11}x_1+\cdots+a_{1n}x_n=b_1,\\
\vdots\\
a_{m1}x_1+\cdots+a_{mn}x_n=b_m.
\end{cases}
$$

I coefficienti $a_{ij}$ e i termini noti $b_i$ sono assegnati nel campo; le incognite sono $x_1,\ldots,x_n$. Nelle incognite compaiono solo combinazioni lineari: non prodotti come $x_1x_2$, potenze come $x_1^2$ o denominatori contenenti un'incognita.

Un parametro fissato può comparire nei coefficienti. Per esempio $ax_1+x_2=1$, con $a$ fissato, è lineare nelle due incognite $x_1,x_2$. Se anche $a$ fosse un'incognita, il prodotto $ax_1$ richiederebbe un altro tipo di problema. Dire quali simboli sono dati e quali sono incogniti fa parte della traduzione.

Poniamo

$$
A=(a_{ij})\in M_{m,n}(K),\qquad
x=\begin{pmatrix}x_1\\\vdots\\x_n\end{pmatrix}\in K^n,\qquad
b=\begin{pmatrix}b_1\\\vdots\\b_m\end{pmatrix}\in K^m.
$$

Per la definizione del prodotto matrice-vettore, tutte le equazioni del sistema sono riassunte in

$$
\boxed{Ax=b.}
$$

Una **soluzione** è un vettore $x\in K^n$ che rende vere tutte le equazioni, cioè tutte le componenti dell'uguaglianza. La matrice descrive come vengono combinati i coefficienti; $b$ è il risultato richiesto. Anche quando $m=n$, i due vettori hanno ruoli diversi.

### Matrice dei coefficienti e matrice completa

La **matrice dei coefficienti** è $A$. La **matrice completa** è ottenuta affiancando la colonna dei termini noti:

$$
[A\mid b]=
\left(
\begin{array}{ccc|c}
a_{11}&\cdots&a_{1n}&b_1\\
\vdots&&\vdots&\vdots\\
a_{m1}&\cdots&a_{mn}&b_m
\end{array}
\right).
$$

Il tratto verticale è un separatore visivo: distingue i coefficienti delle incognite dal risultato assegnato. La completa ha $n+1$ colonne, ma il sistema ha sempre $n$ incognite. Quando useremo Gauss, la colonna dei termini noti dovrà seguire tutte le operazioni sulle equazioni.

**Esempio svolto.** Il problema iniziale di ottenere il risultato $(4,4)^T$ corrisponde a

$$
\begin{cases}
2x_1+x_2=4,\\
x_1+3x_3=4,
\end{cases}
\qquad
[A\mid b]=
\left(\begin{array}{ccc|c}
2&1&0&4\\
1&0&3&4
\end{array}\right).
$$

Lo zero davanti a $x_3$ nella prima equazione e quello davanti a $x_2$ nella seconda sono coefficienti importanti: mantengono allineate le stesse incognite nelle stesse colonne.

### Equazioni fra oggetti diventano equazioni fra coefficienti

Consideriamo, su $\mathbb R$, la ricerca di $\alpha,\beta$ per cui

$$
\alpha(1+t)+\beta(t+t^2)=2+3t+t^2.
$$

Uguagliare i polinomi formali equivale a uguagliare i coefficienti di $1,t,t^2$. Il sistema è

$$
\begin{pmatrix}1&0\\1&1\\0&1\end{pmatrix}
\begin{pmatrix}\alpha\\\beta\end{pmatrix}
=\begin{pmatrix}2\\3\\1\end{pmatrix}.
$$

Le colonne sono le coordinate dei due polinomi nella **stessa** base $(1,t,t^2)$. La soluzione $\alpha=2,\beta=1$ ricostruisce l'identità originale. Le incognite sono i due coefficienti della combinazione, non il simbolo $t$, che rimane l'indeterminata dei polinomi.

Questo procedimento vale anche per combinazioni di matrici: si confrontano le entrate, o le coordinate in una base dichiarata, e si ottiene un sistema numerico. La matrice del sistema raccoglie coordinate; gli oggetti da combinare rimangono polinomi, matrici o vettori dello spazio di partenza.

## Le colonne dicono quali termini noti sono raggiungibili

Un sistema è **compatibile** se ammette almeno una soluzione; è **incompatibile** se non ne ammette. Per capire che cosa chieda l'esistenza, rileggiamo

$$
Ax=x_1A_{:1}+\cdots+x_nA_{:n}.
$$

Quindi

$$
\boxed{
Ax=b\text{ è compatibile}
\quad\Longleftrightarrow\quad
b\in\operatorname{span}(A_{:1},\ldots,A_{:n}).
}
$$

La dimostrazione è l'apertura delle due definizioni. Se esiste una soluzione $x$, l'uguaglianza scrive $b$ come combinazione delle colonne. Viceversa, se $b$ è una loro combinazione, raccogliere i coefficienti nella colonna $x$ fornisce una soluzione. Nessun criterio numerico sul numero di equazioni è stato usato.

### Un esempio in cui l'esistenza si vede prima dei conti

Sia

$$
A=\begin{pmatrix}1&0&1\\0&1&1\\1&1&2\end{pmatrix}.
$$

Le colonne sono

$$
c_1=(1,0,1)^T,\quad c_2=(0,1,1)^T,\quad c_3=c_1+c_2.
$$

Ogni loro combinazione ha terza coordinata uguale alla somma delle prime due. Pertanto $b=(r,s,t)^T$ può essere raggiunto soltanto se $t=r+s$.

La condizione è anche sufficiente: se $t=r+s$, basta scegliere $x=(r,s,0)^T$. Abbiamo provato entrambe le direzioni del criterio, non soltanto trovato una condizione necessaria.

Possiamo descrivere tutte le soluzioni: scegliendo $x_3=u$, le prime due equazioni danno $x_1=r-u$ e $x_2=s-u$; la terza è allora soddisfatta proprio perché $t=r+s$. Dunque

$$
x=\begin{pmatrix}r-u\\s-u\\u\end{pmatrix},
\qquad u\in K.
$$

La terza colonna non ha aggiunto risultati raggiungibili; ha aggiunto modi diversi di raggiungerli. È la stessa distinzione fra generazione e indipendenza studiata nel capitolo 06.

### Esistenza e unicità rimangono domande diverse

Se le colonne di $A$ sono indipendenti, una combinazione che dà $b$, quando esiste, ha coefficienti unici. Il sistema ha quindi al più una soluzione per ogni termine noto. L'indipendenza non garantisce però che ogni $b\in K^m$ sia raggiunto.

Per esempio, la matrice colonna $(1,1)^T$ ha una colonna indipendente, ma $Ax=b$ è risolvibile soltanto se le due componenti di $b$ coincidono. Quando sono uguali a $c$, la soluzione è l'unico scalare $x=c$.

Viceversa, se le colonne sono dipendenti, esiste $d\ne0$ con $Ad=0$. Se $x$ è una soluzione di $Ax=b$, allora

$$
A(x+d)=Ax+Ad=b.
$$

Poiché $d\ne0$, le due soluzioni sono diverse. Questo non crea soluzioni se il sistema era incompatibile: riguarda i termini noti già raggiungibili.

> [!abstract] Concetto chiave — Il sistema traduce generazione e indipendenza
> Appartenere allo span delle colonne decide **se** il termine noto è raggiungibile. L'indipendenza delle colonne decide **se** un termine noto raggiungibile abbia un'unica rappresentazione. Il numero di righe o di colonne, preso da solo, non risponde a entrambe le domande.

## Le righe dicono quali vincoli devono convivere

La lettura per colonne cerca coefficienti che costruiscano $b$. La lettura per righe cerca un vettore che soddisfi simultaneamente tutti i vincoli. L'insieme delle soluzioni è infatti l'intersezione degli insiemi definiti dalle singole equazioni.

Su $\mathbb R$, un'equazione

$$
ax+by=c
$$

descrive una retta se almeno uno fra $a,b$ è non nullo. Se, per esempio, $a\ne0$, per ogni scelta di $y$ troviamo l'unico $x=(c-by)/a$: una variabile parametrizza la retta. Se $a=0$ ma $b\ne0$, è invece $y=c/b$, con $x$ libero.

Se entrambi i coefficienti sono zero, occorre leggere ciò che rimane:

- $0=0$ non impone alcun vincolo e ammette tutto il piano;
- $0=c$, con $c\ne0$, è impossibile e non ammette alcun punto.

Non ogni riga è dunque una retta. In $\mathbb R^3$ una singola equazione con almeno un coefficiente non nullo descrive un piano; anche lì una riga con coefficienti tutti nulli descrive tutto l'ambiente o l'insieme vuoto, a seconda del termine noto.

### Tre modi in cui due vincoli possono incontrarsi

Consideriamo prima

$$
\begin{cases}x+y=1,\\x-y=3.\end{cases}
$$

Sommando si ottiene $2x=4$, quindi $x=2$; sostituendo, $y=-1$. Le due rette hanno un solo punto comune. Il ragionamento è svolto su $\mathbb R$, dove $2\ne0$.

Per

$$
\begin{cases}x+y=1,\\2x+2y=2,\end{cases}
$$

la seconda equazione ripete il primo vincolo: le rette coincidono e le soluzioni sono tutti i punti $(1-u,u)$, con $u\in\mathbb R$.

Se invece cambiamo l'ultimo termine noto in $3$, richiediamo contemporaneamente $x+y=1$ e $x+y=3/2$. Le rette sono parallele distinte e il sistema è incompatibile.

Abbiamo rispettivamente una soluzione, una famiglia parametrica e nessuna soluzione. Il numero delle equazioni è rimasto lo stesso. Il loro contenuto, e non soltanto il conteggio, determina il risultato.

### Omogeneità e vettore nullo

Il sistema è **omogeneo** se $b=0$, ossia se **tutti** i termini noti sono nulli. L'insieme

$$
S_0=\{x\in K^n:Ax=0\}
$$

è sempre un sottospazio di $K^n$:

1. $A0=0$, dunque $0\in S_0$;
2. per $x,y\in S_0$, $A(x+y)=Ax+Ay=0$;
3. per $\lambda\in K$ e $x\in S_0$, $A(\lambda x)=\lambda Ax=0$.

Abbiamo applicato il criterio di sottospazio usando proprietà del prodotto già dimostrate. Il vettore nullo è sempre soluzione, ma può non essere l'unica.

Se $b\ne0$, invece, $0$ non è soluzione, perché $A0=0\ne b$. L'insieme delle soluzioni di $Ax=b$ non è allora un sottospazio, anche se può essere una retta o un piano traslato. Può anche essere vuoto, che non è uno spazio vettoriale.

La struttura precisa di questi insiemi e il legame fra tutte le soluzioni di un sistema e quelle dell'omogeneo saranno sviluppati nel [[Books/Geometria-I/11 - Applicazioni lineari nucleo e immagine|capitolo 11]].

## Scrivere tutte le soluzioni richiede due verifiche

Trovare un vettore che funziona prova soltanto l'esistenza di una soluzione. Scrivere una formula con un parametro non prova ancora che descriva tutte le soluzioni, né che ogni valore del parametro funzioni.

Su $\mathbb R$, riprendiamo

$$
\begin{cases}
2x_1+x_2=4,\\
x_1+3x_3=4.
\end{cases}
$$

*Passo 1 — Usare una componente come parametro.* Se poniamo $x_3=u$, la seconda equazione impone $x_1=4-3u$; la prima impone poi $x_2=-4+6u$. Otteniamo la famiglia

$$
x(u)=
\begin{pmatrix}4-3u\\-4+6u\\u\end{pmatrix},
\qquad u\in\mathbb R.
$$

*Passo 2 — Verificare che ogni valore produce una soluzione.* Sostituendo nel sistema originale,

$$
2(4-3u)+(-4+6u)=4,\qquad
(4-3u)+3u=4.
$$

Le due identità valgono per ogni $u$.

*Passo 3 — Verificare che non manca alcuna soluzione.* Se $(x_1,x_2,x_3)$ è una soluzione qualsiasi, scegliamo $u=x_3$. Le due equazioni forzano proprio $x_1=4-3u$ e $x_2=-4+6u$. Quindi quella soluzione era già nella famiglia. I passaggi precedenti erano necessari, non soltanto una costruzione fortunata.

I due controlli sono due inclusioni fra insiemi: la famiglia proposta è contenuta nell'insieme delle soluzioni, e ogni soluzione appartiene alla famiglia proposta.

> [!warning] Attenzione — Controlla nel sistema originale
> Nella [[_transcripts/Geometria 1/2026-11-04 - Sistemi lineari e somme dirette di sottospazi|lezione del 4 novembre]] viene richiamata espressamente la verifica per sostituzione: controllare il risultato può rivelare un errore nella catena dei calcoli. Verifica nelle equazioni di partenza, perché un passaggio sbagliato potrebbe aver prodotto un sistema diverso. Per affermare di avere tutte le soluzioni serve anche il controllo di completezza.

### Il parametro non è una nuova incognita da risolvere

La formula precedente assegna una soluzione a ogni scelta di $u$. Poiché la terza componente è proprio $u$, valori diversi producono vettori diversi. La parametrizzazione è una biezione fra $\mathbb R$ e l'insieme delle soluzioni: non sta imponendo un'altra equazione a $u$.

La distinzione vale su qualsiasi campo. Per esempio, per $x_1+x_2=1$ su $K$, tutte le soluzioni sono

$$
(1-u,u),\qquad u\in K.
$$

Su $\mathbb R$ sono infinite. Su $\mathbb F_2$ sono esattamente $(1,0)$ e $(0,1)$. Una scelta libera di uno scalare significa una scelta in **quel campo**, non necessariamente una scelta fra infiniti valori.

La [[_transcripts/Geometria 1/2026-10-22 - Sistemi lineari e algoritmo di eliminazione di Gauss|lezione del 22 ottobre su Gauss]] distingue esplicitamente il caso dei campi finiti. Nel prossimo capitolo vedremo come individuare queste scelte libere anche quando le equazioni sono numerose e non suggeriscono subito quale incognita isolare.

## Fonti

Il prodotto matrice-vettore, il prodotto tra matrici e la scrittura dei sistemi provengono dalla [[Notes/Geometria 1/Lectures/2026-10-14 - Basi, sottospazi e sistemi lineari|nota del 14 ottobre]] e dalla [[_transcripts/Geometria 1/2026-10-14 - Basi, sottospazi e sistemi lineari|relativa trascrizione]]. Il richiamo a collocare i vettori da combinare nelle colonne riprende la discussione e la correzione alla lavagna della stessa lezione; i numeri degli esempi qui usati sono redazionali.

La lettura di $Ax=b$ come combinazione delle colonne, i termini noti raggiungibili e l'interpretazione geometrica riprendono la [[Notes/Geometria 1/Lectures/2026-10-22 - Sistemi lineari, nucleo, immagine e rango|nota del 22 ottobre su sistemi e applicazioni]] e la [[_transcripts/Geometria 1/2026-10-22 - Sistemi lineari, nucleo, immagine e rango|trascrizione corrispondente]], insieme alla [[Notes/Geometria 1/Lectures/2026-10-22 - Sistemi lineari e algoritmo di eliminazione di Gauss|nota del 22 ottobre su Gauss]] e alla [[_transcripts/Geometria 1/2026-10-22 - Sistemi lineari e algoritmo di eliminazione di Gauss|relativa trascrizione]]. Da quest'ultima proviene anche la distinzione fra campi finiti e infiniti nel conteggio delle soluzioni.

La regola della trasposta del prodotto e il richiamo a verificare le soluzioni nelle equazioni originali provengono dalla [[Notes/Geometria 1/Lectures/2026-11-04 - Sistemi lineari e somme dirette di sottospazi|nota del 4 novembre sui sistemi]] e dalla [[_transcripts/Geometria 1/2026-11-04 - Sistemi lineari e somme dirette di sottospazi|corrispondente trascrizione]].

La motivazione mediante contributi, i problemi numerici e polinomiali, i dodici esercizi e tutti i riscontri sono redazionali. Le prove dettagliate delle proprietà del prodotto, i controesempi alla cancellazione, la discussione delle equazioni degeneri e il controllo separato di correttezza e completezza sono esplicitazioni didattiche. Non viene anticipata una prova mediante rango o determinanti. Per il quadro generale: [[Books/Geometria-I/90 - Fonti e criteri editoriali|fonti e criteri editoriali]].

## Riscontri degli esercizi

Apri il riscontro dopo un tentativo scritto. Nei prodotti confronta anche il formato; nei sistemi verifica il risultato nelle equazioni e controlla se la descrizione è completa. Per le prove, non basta che la formula finale coincida: occorre giustificare i passaggi.

### Riscontro 1

> [!tip]- Riscontro 1
> Sono definite $AB\in M_{2,2}(K)$, $BA\in M_{3,3}(K)$, $CA\in M_{2,3}(K)$ e $Ax\in K^2$. Non sono definite $A+B$, $AC$, $Bx$ e $A^Tx$: per le somme occorre lo stesso formato; nei prodotti non coincidono le dimensioni interne.
>
> $a_{23}$ occupa la seconda riga e la terza colonna. $A_{:2}$ è una colonna con due entrate, mentre la seconda riga ne ha tre. Uguaglianza e formato non sono separabili: le posizioni di una matrice $2\times3$ non sono quelle di una $3\times2$.

Torna a [[#Esercizio 1 — Controllare i formati prima dei conti (righe e colonne)|esercizio 1]].

### Riscontro 2

> [!tip]- Riscontro 2
> Per righe: $Ax=(2-2-1,\,-3+4)^T=(-1,1)^T$. Per colonne:
> $$
> 2(1,0)^T-(2,3)^T+(-1,4)^T=(-1,1)^T.
> $$
> In $Ae_j$ i coefficienti di tutte le colonne sono zero, tranne quello della colonna $j$, che è uno; perciò $Ae_j=A_{:j}$.
>
> Per l'ultima identità apri la componente $i$: $\sum_j a_{ij}(\alpha x_j+\beta y_j)=\alpha\sum_j a_{ij}x_j+\beta\sum_j a_{ij}y_j$. Coincide con la componente $i$ di $\alpha Ax+\beta Ay$. Vale per ogni $i$.

Torna a [[#Esercizio 2 — Un risultato letto in due modi (prodotto matrice-vettore)|esercizio 2]].

### Riscontro 3

> [!tip]- Riscontro 3
> Le colonne sono i tre vettori assegnati:
> $$
> A=\begin{pmatrix}1&-1&0\\2&0&3\end{pmatrix},
> \qquad A(2,1,-1)^T=(1,1)^T.
> $$
> Una matrice con quelle colonne è unica. Conoscere soltanto $Ae_1,Ae_2,A(e_1+e_2)$ non determina la terza colonna: l'ultimo dato è già obbligato a essere $Ae_1+Ae_2$. Per esempio le matrici con prime due colonne $(1,2)^T,(-1,0)^T$ e terza colonna rispettivamente $(0,0)^T$ e $(0,1)^T$ sono diverse ma danno gli stessi tre risultati. I vettori di prova non generano $\mathbb R^3$.

Torna a [[#Esercizio 3 — Ricostruire una matrice dai suoi effetti (colonne canoniche)|esercizio 3]].

### Riscontro 4

> [!tip]- Riscontro 4
> Si ottengono
> $$
> AB=\begin{pmatrix}1&5\\3&-1\end{pmatrix},
> \qquad
> BA=\begin{pmatrix}2&-2&4\\1&-4&1\\0&6&2\end{pmatrix}.
> $$
> I formati sono $2\times2$ e $3\times3$. Per $y=(1,2)^T$, $By=(2,-1,4)^T$ e $A(By)=(11,1)^T$, uguale a $(AB)y$. Le due colonne di $B$ sono $(2,1,0)^T$ e $(0,-1,2)^T$; applicando $A$ ottieni $(1,3)^T$ e $(5,-1)^T$, proprio le colonne di $AB$. Il fattore $B$ agisce per primo, perché è quello applicato direttamente a $y$.

Torna a [[#Esercizio 4 — Fare due passaggi oppure uno solo (prodotto tra matrici)|esercizio 4]].

### Riscontro 5

> [!tip]- Riscontro 5
> I formati sono $AB:2\times4$, $BC:3\times2$, $(AB)C:2\times2$ e $A(BC):2\times2$. Le entrate dei due raggruppamenti coincidono perché
> $$
> \sum_{h=1}^4\left(\sum_{k=1}^3a_{ik}b_{kh}\right)c_{hj}
> =\sum_{k=1}^3a_{ik}\left(\sum_{h=1}^4b_{kh}c_{hj}\right).
> $$
> Sono gli stessi termini di una somma finita, raggruppati usando le proprietà del campo. Nell'identità $I_mA=A$, il termine della somma sopravvissuto ha indice $k=i$; in $AI_n=A$ ha indice $k=j$. I formati delle due identità sono quindi rispettivamente $m\times m$ e $n\times n$. Per la distributività, sviluppa $\sum_k a_{ik}(b_{kj}+c_{kj})$ e separa le due somme.

Torna a [[#Esercizio 5 — Giustificare le regole (associatività e identità)|esercizio 5]].

### Riscontro 6

> [!tip]- Riscontro 6
> $E_{12}E_{21}=E_{11}$ e $E_{21}E_{12}=E_{22}$: la prima affermazione è falsa. Anche $E_{12}^2=0$ con $E_{12}\ne0$, che confuta sia la seconda sia la terza.
>
> Per la quarta scegli $P=E_{11}$, $X=0$ e $Y=E_{22}$. Allora $PX=PY=0$ ma $X\ne Y$. Essere non nullo non rende un fattore cancellabile.
>
> Lo sviluppo corretto è $P^2+PQ+QP+Q^2$. Con $P=E_{12}$ e $Q=E_{21}$, il termine misto vale $E_{11}+E_{22}=I_2$, mentre $2PQ=2E_{11}$ ha entrata $(2,2)$ nulla. Non coincidono in alcun campo, neppure in caratteristica due.

Torna a [[#Esercizio 6 — Le abitudini degli scalari possono ingannare (non commutatività e cancellazione)|esercizio 6]].

### Riscontro 7

> [!tip]- Riscontro 7
> Dal prodotto dell'esercizio 4,
> $$
> (AB)^T=\begin{pmatrix}1&3\\5&-1\end{pmatrix}=B^TA^T.
> $$
> Per la prova generale, la componente $(j,i)$ a sinistra è $\sum_k a_{ik}b_{kj}$; a destra è $\sum_k b_{kj}a_{ik}$. Coincidono per commutatività degli scalari.
>
> Nei formati assegnati, $A^T$ è $3\times2$, $B^T$ è $4\times3$ e $(AB)^T$ è $4\times2$. $A^TB^T$ non è definito, mentre $B^TA^T$ lo è. Il formato esclude alcune formule, ma non prova l'uguaglianza delle entrate di quelle rimaste.

Torna a [[#Esercizio 7 — Scambiare gli indici senza perdere l'ordine (trasposta)|esercizio 7]].

### Riscontro 8

> [!tip]- Riscontro 8
> La matrice dei coefficienti è $A=\begin{pmatrix}2&-1&1\\1&2&-1\end{pmatrix}$, il termine noto è $b=(3,0)^T$, e la completa è
> $$
> \left(\begin{array}{ccc|c}2&-1&1&3\\1&2&-1&0\end{array}\right).
> $$
> Per $(1,0,1)^T$ i membri sinistri sono $3$ e $0$: è soluzione. Per $(1,1,2)^T$ sono $3$ e $1$: non è soluzione. Le incognite sono tre e le soluzioni appartengono a $\mathbb R^3$; $b$ appartiene a $\mathbb R^2$.
>
> Un sistema è omogeneo se tutto il vettore $b$ è nullo, non se è nulla una sola sua componente. L'ultima colonna è costituita da dati assegnati, separati dalle tre colonne dei coefficienti; non introduce una quarta incognita.

Torna a [[#Esercizio 8 — Tradurre e controllare (matrice completa e soluzione)|esercizio 8]].

### Riscontro 9

> [!tip]- Riscontro 9
> Le colonne sono $c_1=(1,1,0)^T$, $c_2=(0,1,1)^T$, $c_3=c_1+c_2$. Ogni combinazione ha seconda componente uguale alla somma della prima e della terza, quindi serve $s=r+t$. Se questa condizione vale, tutte le soluzioni sono
> $$
> x=(r-u,t-u,u)^T,\qquad u\in K.
> $$
> Sostituendo si ottengono $(r,r+t,t)^T$; viceversa, ogni soluzione ha $u=x_3$ e le prime e ultime equazioni forzano gli altri due coefficienti. Su $\mathbb R$, per $(2,3,1)^T$ sono $(2-u,1-u,u)^T$; per $(2,4,1)^T$ non ci sono soluzioni, perché $4\ne2+1$.
>
> In generale la condizione è esattamente $b=\sum_jx_jA_{:j}$: una soluzione dà i coefficienti di una combinazione, e i coefficienti di una combinazione danno una soluzione.

Torna a [[#Esercizio 9 — Prevedere i termini noti possibili (compatibilità e span)|esercizio 9]].

### Riscontro 10

> [!tip]- Riscontro 10
> I primi due insiemi sono rispettivamente $\varnothing$ e $\mathbb R^2$. Il terzo è la retta $\{(3-2u,u):u\in\mathbb R\}$. Il quarto è la stessa retta; il quinto è vuoto, perché la prima equazione moltiplicata per due imporrebbe $2x+4y=6$, non $7$. Nell'ultimo sistema $x=y$ e quindi $3y=3$: l'unica soluzione è $(1,1)$.
>
> Fra questi insiemi soltanto $\mathbb R^2$ è un sottospazio: la retta e il punto indicati non contengono zero, e il vuoto non è uno spazio vettoriale. In generale l'insieme $Ax=0$ contiene zero ed è chiuso per somme e scalari, grazie a $A(x+y)=Ax+Ay$ e $A(\lambda x)=\lambda Ax$. Se $b\ne0$, invece, zero non è soluzione e il criterio di sottospazio fallisce.

Torna a [[#Esercizio 10 — Non tutte le righe sono rette (geometria e casi degeneri)|esercizio 10]].

### Riscontro 11

> [!tip]- Riscontro 11
> La famiglia proposta soddisfa la seconda equazione, ma nella prima dà $1-u$, che non è sempre $1$. Da $x_3=u$ la seconda equazione obbliga $x_2=-u$; la prima obbliga $x_1=1+2u$. La formula corretta è dunque
> $$
> x(u)=(1+2u,-u,u)^T,\qquad u\in K.
> $$
> Sostituendola, i due membri sinistri sono $1$ e $0$ per ogni $u$. Viceversa ogni soluzione determina $u=x_3$ e quindi ha proprio quella forma. La terza componente distingue i parametri, perciò la parametrizzazione è iniettiva.
>
> Su $\mathbb R$ ci sono infinite soluzioni. Su $\mathbb F_2$ soltanto due: $(1,0,0)^T$ e $(1,1,1)^T$, perché $2u=0$ e $-u=u$. La completezza della formula vale in entrambi i campi.

Torna a [[#Esercizio 11 — Un parametro da verificare (correttezza e completezza)|esercizio 11]].

### Riscontro 12

> [!tip]- Riscontro 12
> Per una combinazione $\lambda_1p_1+\lambda_2p_2+\lambda_3p_3=P$ il sistema è
> $$
> \begin{pmatrix}1&0&1\\1&1&0\\0&1&1\end{pmatrix}
> \begin{pmatrix}\lambda_1\\\lambda_2\\\lambda_3\end{pmatrix}
> =\begin{pmatrix}a\\b\\c\end{pmatrix}.
> $$
> Le equazioni sono $\lambda_1+\lambda_3=a$, $\lambda_1+\lambda_2=b$, $\lambda_2+\lambda_3=c$. Su $\mathbb R$ danno
> $$
> \lambda_1=\frac{a+b-c}{2},\qquad
> \lambda_2=\frac{-a+b+c}{2},\qquad
> \lambda_3=\frac{a-b+c}{2}.
> $$
> Per $(a,b,c)=(3,5,4)$ si ottiene $(2,3,1)$; infatti $2(1+t)+3(t+t^2)+(1+t^2)=3+5t+4t^2$.
>
> In $\mathbb F_2$, sommando le tre equazioni si ottiene necessariamente $a+b+c=0$. Se vale, scegliendo liberamente $\lambda_1=u$ si può porre $\lambda_2=b+u$ e $\lambda_3=a+u$; la terza equazione è soddisfatta perché $c=a+b$. Esistono quindi due rappresentazioni, non una sola. Infatti $p_1+p_2+p_3=0$ in quel campo, mentre su $\mathbb R$ i tre polinomi sono una base di $\mathbb R[t]_{\le2}$ grazie all'esistenza e unicità appena provate.

Torna a [[#Esercizio 12 — Un sistema nascosto nei polinomi (coordinate e campo)|esercizio 12]].

Il capitolo è acquisito quando sai leggere $Ax=b$ sia come elenco di equazioni sia come combinazione di colonne, giustificare l'ordine e le proprietà del prodotto e controllare una parametrizzazione nei due versi. Prima dei conti, prova sempre a prevedere il formato del risultato e il significato delle sue componenti.

---

[[Books/Geometria-I/08 - Somme dirette e decomposizioni|← 08 · Somme dirette e decomposizioni]] · [[Books/Geometria-I/00 - Indice e piano di studio|Indice e piano di studio]] · [[Books/Geometria-I/10 - Il metodo di Gauss|10 · Il metodo di Gauss →]]
