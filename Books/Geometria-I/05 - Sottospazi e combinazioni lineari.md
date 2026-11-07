# Sottospazi e combinazioni lineari

Prerequisiti: [[Books/Geometria-I/04 - Spazi vettoriali e operazioni lineari|spazi vettoriali, operazioni e loro proprietà]]. Per gli esempi sui polinomi è utile il [[Books/Geometria-I/03 - Polinomi radici e fattorizzazioni|linguaggio dei polinomi formali]]. Torna all'[[Books/Geometria-I/00 - Indice e piano di studio|indice e piano di studio]].

> [!info] In questo capitolo
> - Riconoscerai quando una parte di uno spazio conserva le operazioni: il **criterio di sottospazio** evita di ricontrollare tutti gli assiomi.
> - Capirai perché un'intersezione funziona sempre e perché un'unione di due sottospazi quasi sempre fallisce.
> - Descriverai ciò che puoi costruire da vettori assegnati: le **combinazioni lineari** formano lo **span**, il più piccolo sottospazio che li contiene.
> - Passerai da un'equazione ai generatori e userai gli stessi ragionamenti per vettori numerici, polinomi e funzioni.

## Domande per iniziare dagli esercizi

Prova l'esercizio indicato prima di leggere la spiegazione. Se ti blocchi, chiediti quale condizione devi verificare e apri la sezione collegata. Gli enunciati precedono la teoria; i riscontri richiudibili sono raccolti alla fine.

| Domanda guida | Esercizi da tentare | Teoria da recuperare |
|---|---|---|
| Quale condizione distingue un sottospazio da un insieme che contiene soltanto alcuni vettori? | [[#Esercizio 1 — Passare per l'origine non basta (criterio di sottospazio)\|1]], [[#Esercizio 2 — Tre condizioni da tenere separate (non vacuità e chiusure)\|2]] | [[#Restare dentro dopo le operazioni\|Restare dentro dopo le operazioni]] · [[#Il criterio di sottospazio e le sue ragioni\|Il criterio di sottospazio e le sue ragioni]] |
| Perché una copia del piano dentro lo spazio va specificata? | [[#Esercizio 3 — Lo stesso nome non significa lo stesso insieme (ambiente e immersione)\|3]] | [[#L'ambiente e l'origine fanno parte del problema\|L'ambiente e l'origine fanno parte del problema]] |
| Che cosa succede imponendo due condizioni insieme oppure accettandone una delle due? | [[#Esercizio 4 — Due piani e due operazioni insiemistiche (intersezione e unione)\|4]] | [[#Intersezioni e unioni: due comportamenti diversi\|Intersezioni e unioni: due comportamenti diversi]] |
| Come riconosci i vettori costruibili da una lista assegnata? | [[#Esercizio 5 — Raggiungere un bersaglio (combinazioni lineari e appartenenza)\|5]], [[#Esercizio 6 — Cambiare i pezzi senza cambiare gli oggetti (uguaglianza di span)\|6]] | [[#Combinazioni lineari: costruire con pezzi assegnati\|Combinazioni lineari: costruire con pezzi assegnati]] |
| Se i generatori sono infiniti, puoi usarli tutti in una sola somma? | [[#Esercizio 7 — Una lista infinita di interruttori (span e supporto finito)\|7]] | [[#Lo span di un insieme arbitrario\|Lo span di un insieme arbitrario]] |
| In quale senso lo span è il più piccolo sottospazio possibile? | [[#Esercizio 8 — Prendere la chiusura una volta sola (minimalità e proprietà dello span)\|8]] | [[#Il più piccolo sottospazio che contiene i dati\|Il più piccolo sottospazio che contiene i dati]] |
| Come produci tutte le soluzioni di un'equazione senza perderne nessuna? | [[#Esercizio 9 — Da un vincolo a una costruzione (equazioni e generatori)\|9]] | [[#Dalle equazioni ai generatori\|Dalle equazioni ai generatori]] |
| Come si applicano le stesse idee a polinomi e funzioni? | [[#Esercizio 10 — Un vincolo sui valori di un polinomio (generatori e coefficienti)\|10]], [[#Esercizio 11 — Valori uguali e oggetti diversi (sottospazi di funzioni)\|11]] | [[#Generatori di polinomi e condizioni sulle funzioni\|Generatori di polinomi e condizioni sulle funzioni]] |
| Quali sottospazi possono esistere nel piano? | [[#Esercizio 12 — Non ci sono altre forme (sottospazi del piano)\|12]] | [[#Tutti i sottospazi del piano\|Tutti i sottospazi del piano]] |

## Esercizi per verificare la comprensione

Gli esercizi 1–4 controllano il significato di sottospazio; 5–9 la costruzione mediante generatori; 10–12 trasferiscono le idee a nuovi oggetti e alle dimostrazioni. In una risposta negativa basta un controesempio preciso; in una risposta positiva devi controllare ogni condizione necessaria.

### Esercizio 1 — Passare per l'origine non basta (criterio di sottospazio)

Stabilisci quali dei seguenti sottoinsiemi di $\mathbb R^2$ siano sottospazi:

$$
L=\{(x,y):y=3x\},\qquad
H=\{(x,y):y=3x+1\},
$$

$$
Q=\{(x,y):x\ge0,\ y\ge0\},\qquad
C=\{(x,y):xy=0\}.
$$

Per ciascun insieme che non è un sottospazio, indica una condizione del criterio che fallisce e mostrala su elementi concreti.

Se ti blocchi: [[#Restare dentro dopo le operazioni|Restare dentro dopo le operazioni]] · [[#Il criterio di sottospazio e le sue ragioni|Il criterio di sottospazio e le sue ragioni]].

Controllo dopo il tentativo: [[#Riscontro 1|riscontro 1]].

### Esercizio 2 — Tre condizioni da tenere separate (non vacuità e chiusure)

Uno studente propone questo criterio: «$W\subseteq V$ è un sottospazio se per ogni $u,v\in W$ e ogni $\alpha,\beta\in K$ si ha $\alpha u+\beta v\in W$». Individua l'ipotesi mancante e spiega perché il vuoto è un controesempio.

Mostra poi che né «non vuoto e chiuso per somma» né «non vuoto e chiuso per prodotto per scalare» bastano, usando rispettivamente $\mathbb Z^2\subseteq\mathbb R^2$ e l'unione degli assi. Infine ricostruisci perché non vuoto più entrambe le chiusure garantiscano anche zero e opposti.

Se ti blocchi: [[#Il criterio di sottospazio e le sue ragioni|Il criterio di sottospazio e le sue ragioni]].

Controllo dopo il tentativo: [[#Riscontro 2|riscontro 2]].

### Esercizio 3 — Lo stesso nome non significa lo stesso insieme (ambiente e immersione)

Correggi l'affermazione «$\mathbb R^2$ è un sottospazio di $\mathbb R^3$ perché ha gli stessi primi due assi». Scrivi esplicitamente l'immersione $(x,y)\mapsto(x,y,0)$ e la sua immagine $P$; verifica che $P$ sia un sottospazio.

Confronta poi $P$ con $P_1=\{(x,y,1):x,y\in\mathbb R\}$. Quale passaggio del criterio permette di distinguerli immediatamente? Il fatto che entrambi siano piani geometrici basta a renderli sottospazi?

Se ti blocchi: [[#L'ambiente e l'origine fanno parte del problema|L'ambiente e l'origine fanno parte del problema]].

Controllo dopo il tentativo: [[#Riscontro 3|riscontro 3]].

### Esercizio 4 — Due piani e due operazioni insiemistiche (intersezione e unione)

Considera i sottospazi di $\mathbb R^3$

$$
U=\{(x,y,z):x=z\},\qquad W=\{(x,y,z):y=z\}.
$$

Descrivi $U\cap W$ mediante un solo parametro e verifica che $U\cup W$ non sia un sottospazio. Per quest'ultimo punto usa un vettore di $U\setminus W$ e uno di $W\setminus U$.

Dimostra poi in generale che l'unione di **due** sottospazi è un sottospazio se e solo se uno contiene l'altro.

Se ti blocchi: [[#Intersezioni e unioni: due comportamenti diversi|Intersezioni e unioni: due comportamenti diversi]].

Controllo dopo il tentativo: [[#Riscontro 4|riscontro 4]].

### Esercizio 5 — Raggiungere un bersaglio (combinazioni lineari e appartenenza)

Siano $u=(1,1,0)$ e $v=(0,1,1)$ in $\mathbb R^3$. Trova una condizione sulle coordinate $(a,b,c)$ equivalente ad appartenere a $\operatorname{span}(u,v)$, dimostrando entrambe le direzioni.

Decidi se $(2,5,3)$ e $(1,1,1)$ appartengano allo span. Quando l'appartenenza vale, esibisci i coefficienti; quando non vale, mostra l'ostacolo.

Se ti blocchi: [[#Combinazioni lineari: costruire con pezzi assegnati|Combinazioni lineari: costruire con pezzi assegnati]].

Controllo dopo il tentativo: [[#Riscontro 5|riscontro 5]].

### Esercizio 6 — Cambiare i pezzi senza cambiare gli oggetti (uguaglianza di span)

In uno spazio su un campo qualsiasi, dimostra che

$$
\operatorname{span}(u,v)=\operatorname{span}(u+v,v).
$$

La prova deve funzionare anche nel campo con due elementi. Spiega poi perché aggiungere il vettore nullo o ripetere uno dei generatori non cambi lo span. Da questo puoi dedurre che ogni vettore abbia un'unica espressione mediante una famiglia di generatori?

Se ti blocchi: [[#Combinazioni lineari: costruire con pezzi assegnati|Combinazioni lineari: costruire con pezzi assegnati]] · [[#Il più piccolo sottospazio che contiene i dati|Il più piccolo sottospazio che contiene i dati]].

Controllo dopo il tentativo: [[#Riscontro 6|riscontro 6]].

### Esercizio 7 — Una lista infinita di interruttori (span e supporto finito)

Nello spazio delle successioni reali $\mathbb R^{\mathbb N_{>0}}$, sia $e_j$ la successione con $1$ al posto $j$ e $0$ in tutti gli altri posti. Descrivi lo span dell'insieme $\{e_1,e_2,\ldots\}$.

La successione $(1,1,1,\ldots)$ appartiene a questo span? E $(2,0,-1,0,0,\ldots)$? Spiega perché scrivere $\sum_{j=1}^{\infty}e_j$ non risolva la prima domanda nel linguaggio delle combinazioni lineari.

Se ti blocchi: [[#Lo span di un insieme arbitrario|Lo span di un insieme arbitrario]].

Controllo dopo il tentativo: [[#Riscontro 7|riscontro 7]].

### Esercizio 8 — Prendere la chiusura una volta sola (minimalità e proprietà dello span)

Per $A\subseteq B\subseteq V$, dimostra

$$
\operatorname{span}(A)\subseteq\operatorname{span}(B),\qquad
\operatorname{span}(\operatorname{span}(A))=\operatorname{span}(A).
$$

Spiega il significato di $\operatorname{span}(\varnothing)$ e dimostra che $A$ è un sottospazio se e solo se $\operatorname{span}(A)=A$.

Infine, per due sottoinsiemi arbitrari $A,B\subseteq V$, senza più assumere l'inclusione $A\subseteq B$, stabilisci se sia sempre vero

$$
\operatorname{span}(A\cap B)
=\operatorname{span}(A)\cap\operatorname{span}(B).
$$

Per cercare un controesempio puoi usare in $\mathbb R^2$ gli insiemi $A=\{(1,0)\}$ e $B=\{(2,0)\}$. Quale inclusione resta sempre vera?

Se ti blocchi: [[#Il più piccolo sottospazio che contiene i dati|Il più piccolo sottospazio che contiene i dati]].

Controllo dopo il tentativo: [[#Riscontro 8|riscontro 8]].

### Esercizio 9 — Da un vincolo a una costruzione (equazioni e generatori)

Trova una famiglia di generatori dell'insieme

$$
S=\{x\in\mathbb R^4:2x_1-x_3+3x_4=0\}
$$

e dimostra che la descrizione ottenuta è equivalente all'equazione.

Ripeti per

$$
S_\lambda=\{(x_1,x_2,x_3)\in\mathbb R^3:
\lambda x_1+x_2-\lambda x_3=0\},
$$

con $\lambda\in\mathbb R$. Puoi scegliere i parametri in modo da non dividere mai per $\lambda$? Che cosa accade se tutti i coefficienti di un'equazione omogenea sono nulli?

Se ti blocchi: [[#Dalle equazioni ai generatori|Dalle equazioni ai generatori]].

Controllo dopo il tentativo: [[#Riscontro 9|riscontro 9]].

### Esercizio 10 — Un vincolo sui valori di un polinomio (generatori e coefficienti)

Nello spazio $\mathbb R[t]_{\le3}$ considera

$$
P=\{p:p(0)=p(1)\}.
$$

Verifica che sia un sottospazio e trova generatori partendo dai coefficienti di $p=a_0+a_1t+a_2t^2+a_3t^3$. Esprimi poi $1+2t-3t^2+t^3$ attraverso i tuoi generatori. L'insieme dei polinomi di grado **esattamente** $3$ è invece un sottospazio?

Se ti blocchi: [[#Generatori di polinomi e condizioni sulle funzioni|Generatori di polinomi e condizioni sulle funzioni]].

Controllo dopo il tentativo: [[#Riscontro 10|riscontro 10]].

### Esercizio 11 — Valori uguali e oggetti diversi (sottospazi di funzioni)

Nello spazio di tutte le funzioni $\mathbb R\to\mathbb R$, stabilisci se siano sottospazi

$$
F=\{f:f(0)=f(1)\},\qquad G=\{f:f(0)=1\}.
$$

La sola condizione sui valori in $0$ e $1$ autorizza a identificare queste funzioni con polinomi di grado al più $3$?

Considera inoltre il polinomio formale $p(t)=t^2+t$ su $\mathbb F_2$. Esso è il polinomio nullo? Quale funzione induce su $\mathbb F_2$? Spiega perché la verifica dell'uguaglianza di polinomi formali debba confrontare i coefficienti.

Se ti blocchi: [[#Generatori di polinomi e condizioni sulle funzioni|Generatori di polinomi e condizioni sulle funzioni]].

Controllo dopo il tentativo: [[#Riscontro 11|riscontro 11]].

### Esercizio 12 — Non ci sono altre forme (sottospazi del piano)

Dimostra, senza usare dimensione o determinanti, che un sottospazio di $\mathbb R^2$ è il solo vettore nullo, una retta per l'origine oppure tutto il piano.

Nel caso decisivo, parti da $u=(a,b)\ne0$ e da $v=(c,d)$ che non è multiplo di $u$: costruisci i due vettori $(1,0)$ e $(0,1)$ usando somme e prodotti per scalare di $u,v$. Distingui $a\ne0$ da $a=0$ prima di dividere.

Se ti blocchi: [[#Tutti i sottospazi del piano|Tutti i sottospazi del piano]].

Controllo dopo il tentativo: [[#Riscontro 12|riscontro 12]].

## Teoria da recuperare

Usa la tabella iniziale per trovare lo strumento necessario. Dopo la lettura, torna all'esercizio e prova a ricostruire il passaggio senza guardare. Le dimostrazioni di questo capitolo usano soltanto gli assiomi degli spazi vettoriali e le proprietà dei campi.

## Restare dentro dopo le operazioni

Immagina un veicolo capace di compiere spostamenti nel piano, ma vincolato a una direzione. Se può compiere lo spostamento $u$, può percorrerne un multiplo, anche negativo; se può compiere due spostamenti, può eseguirli uno dopo l'altro. Quali insiemi di spostamenti rimangono possibili dopo queste operazioni?

La retta per l'origine

$$
L=\{s(1,2):s\in\mathbb R\}
$$

possiede questa stabilità:

$$
s(1,2)+t(1,2)=(s+t)(1,2),\qquad
\lambda[s(1,2)]=(\lambda s)(1,2).
$$

In entrambi i casi il risultato è ancora un elemento di $L$. La retta contiene inoltre lo spostamento nullo. Al suo interno possiamo quindi continuare a fare algebra vettoriale senza uscire dall'insieme.

La retta parallela $y=2x+1$ si comporta diversamente: non contiene $(0,0)$, e moltiplicare per zero un suo punto produce proprio $(0,0)$, che ne esce. Non basta che l'insieme abbia un aspetto geometrico semplice: deve essere compatibile con le operazioni fissate.

**Definizione.** Sia $V$ uno spazio vettoriale su $K$. Un sottoinsieme $W\subseteq V$ è un **sottospazio vettoriale** se, con le operazioni di $V$ ristrette a $W$ e sullo stesso campo $K$, è a sua volta uno spazio vettoriale. Scriviamo anche $W\le V$.

La parola «ristrette» è essenziale: la somma di due elementi di $W$ si calcola esattamente come in $V$. Non si possono inventare una nuova somma o un nuovo vettore nullo per far funzionare l'insieme. L'obiettivo è riconoscere una struttura già presente dentro quella nota.

## Il criterio di sottospazio e le sue ragioni

Ricontrollare tutti gli assiomi sarebbe un lavoro ripetitivo. Associatività e distributività, per esempio, valgono già per tutti i vettori di $V$, dunque anche per quelli di $W$. Le possibili difficoltà riguardano il fatto che i risultati delle operazioni restino in $W$ e che gli elementi richiesti dagli assiomi vi appartengano.

> [!abstract] Concetto chiave — Criterio di sottospazio
> Un sottoinsieme $W\subseteq V$ è un sottospazio se e solo se:
> 1. $0_V\in W$;
> 2. $u,v\in W$ implica $u+v\in W$;
> 3. $u\in W$ e $\lambda\in K$ implicano $\lambda u\in W$.
>
> Equivalentemente, si può chiedere che $W$ sia **non vuoto** e chiuso rispetto a $\alpha u+\beta v$ per ogni $u,v\in W$ e $\alpha,\beta\in K$.

**Dimostrazione del criterio.** Se $W$ è un sottospazio, le chiusure sono necessarie perché le operazioni devono avere valori in $W$; il vettore nullo appartiene a $W$. Per vedere che è lo stesso zero di $V$, possiamo prendere un elemento $w\in W$: il prodotto $0_Kw$, calcolato in $V$, è $0_V$ e deve appartenere a $W$.

Viceversa, assumiamo le tre condizioni.

*Passo 1 — Le operazioni sono ben definite su $W$.* Le due chiusure assicurano che somma e prodotto per scalare restituiscano ancora elementi di $W$.

*Passo 2 — Ci sono zero e opposti.* Lo zero appartiene a $W$ per ipotesi. Per ogni $w\in W$,

$$
-w=(-1_K)w\in W
$$

per la chiusura rispetto agli scalari. Le identità $w+0_V=w$ e $w+(-w)=0_V$ valgono perché valgono in $V$.

*Passo 3 — Le altre identità si ereditano.* Per $u,v,w\in W$, associatività e commutatività della somma sono le stesse uguaglianze vere in $V$. Lo stesso vale per le due distributività, la compatibilità con il prodotto degli scalari e $1_Kw=w$. Tutti gli assiomi sono soddisfatti.

Se invece sappiamo soltanto che $W\ne\varnothing$, scegliamo $w\in W$. La chiusura per scalari dà $0_Kw=0_V\in W$, e si torna al criterio precedente. La formulazione compatta implica le due chiusure scegliendo rispettivamente $\alpha=\beta=1$ e $\alpha=\lambda,\beta=0$; le due chiusure, a loro volta, implicano quella compatta.

> [!warning] Attenzione — La condizione «non vuoto» non è decorativa
> Nella [[_transcripts/Geometria 1/2026-09-30 - Spazi vettoriali, esempi e sottospazi|lezione del 30 settembre sugli spazi vettoriali]] il docente segnala il problema dell'insieme vuoto: la frase «per ogni $u,v\in W$...» è vera anche quando non ci sono elementi da scegliere. Il vuoto soddisfa vacuamente le condizioni di chiusura, ma non contiene il vettore nullo. Nel criterio compatto occorre quindi dichiarare $W\ne\varnothing$.

**Esempio svolto.** Consideriamo

$$
W=\{(x,y,z)\in\mathbb R^3:2x-y+3z=0\}.
$$

Lo zero soddisfa l'equazione. Se $u=(x,y,z)$ e $u'=(x',y',z')$ la soddisfano, allora

$$
2(x+x')-(y+y')+3(z+z')
=(2x-y+3z)+(2x'-y'+3z')=0.
$$

Per $\lambda\in\mathbb R$,

$$
2\lambda x-\lambda y+3\lambda z
=\lambda(2x-y+3z)=0.
$$

Il criterio prova che $W$ è un sottospazio. Abbiamo verificato proprietà per elementi arbitrari, non solo per qualche punto del piano.

> [!example] Esempi e controesempi — Avere lo zero è solo il primo controllo
> $\{0_V\}$ e $V$ sono sempre sottospazi.
> Il primo quadrante di $\mathbb R^2$ contiene lo zero ed è chiuso per somma, ma $(-1)(1,0)=(-1,0)$ esce dall'insieme.
> L'unione dei due assi contiene lo zero ed è chiusa per ogni prodotto per scalare, ma $(1,0)+(0,1)=(1,1)$ non appartiene ad alcun asse.
> Controllare soltanto una chiusura non basta.

## L'ambiente e l'origine fanno parte del problema

Dire «un piano è un sottospazio» lascia fuori dati importanti. Un piano passante per l'origine nello spazio degli spostamenti è compatibile con le operazioni; un piano parallelo che non contiene l'origine non lo è.

Inoltre, **prima di verificare un sottospazio bisogna verificare l'inclusione nell'ambiente**. Letteralmente $\mathbb R^2$ contiene coppie, mentre $\mathbb R^3$ contiene terne. Non è dunque corretto scrivere $\mathbb R^2\le\mathbb R^3$ senza specificare un'identificazione.

Possiamo definire l'immersione

$$
\iota:\mathbb R^2\longrightarrow\mathbb R^3,\qquad
\iota(x,y)=(x,y,0).
$$

La sua immagine

$$
P=\{(x,y,0):x,y\in\mathbb R\}
$$

è invece un vero sottoinsieme di $\mathbb R^3$ ed è un sottospazio: contiene $(0,0,0)$ e le operazioni mantengono nulla l'ultima coordinata. Il piano $P$ è una **copia** di $\mathbb R^2$ collocata nell'ambiente attraverso $\iota$.

> [!warning] Attenzione — Uguaglianza e identificazione sono passaggi diversi
> La distinzione fra coppie e terne è discussa nella [[_transcripts/Geometria 1/2026-10-06 - Sottospazi, combinazioni lineari e basi|lezione del 6 ottobre]]. Il simbolo $0$ può abbreviare $(0,0)$ oppure $(0,0,0)$, ma non rende uguali i due elementi. Una corrispondenza naturale permette di trasferire i calcoli; non elimina la necessità di dire dove vivono gli oggetti.

Per un controllo pratico chiediti quindi: qual è l'ambiente? Qual è il campo? Le operazioni sono quelle dell'ambiente? Quale oggetto è il suo vettore nullo? Le stesse domande valgono per una matrice nulla di formato assegnato, un polinomio nullo e una funzione nulla.

## Intersezioni e unioni: due comportamenti diversi

Imporre contemporaneamente due condizioni lineari è compatibile con le operazioni. Scegliere, di volta in volta, una condizione oppure un'altra può invece rompere la stabilità.

**Proposizione.** Se $U,W\le V$, allora $U\cap W\le V$.

Lo zero appartiene a entrambi. Se $u,v\in U\cap W$, la somma appartiene a $U$ perché $U$ è un sottospazio, e appartiene a $W$ per lo stesso motivo. Quindi $u+v\in U\cap W$. Identico ragionamento per $\lambda u$. Il criterio conclude la prova.

La prova vale per una famiglia qualunque $(W_i)_{i\in I}$ di sottospazi dello **stesso** spazio $V$:

$$
\bigcap_{i\in I}W_i\le V.
$$

Un vettore appartiene all'intersezione se appartiene a ciascun $W_i$; la chiusura si controlla separatamente per ogni indice. Se $I$ è vuoto, adottiamo la convenzione dell'intersezione vuota **dentro $V$** uguale a $V$: non ci sono condizioni da imporre.

L'unione ha una risposta diversa.

**Proposizione.** Per due sottospazi $U,W\le V$,

$$
U\cup W\le V
\quad\Longleftrightarrow\quad
U\subseteq W\ \text{oppure}\ W\subseteq U.
$$

*Passo 1 — Se c'è inclusione, l'unione funziona.* Se $U\subseteq W$, allora $U\cup W=W$, che è un sottospazio; lo stesso nell'altro caso.

*Passo 2 — Se non c'è nessuna inclusione, troviamo il guasto.* Possiamo scegliere

$$
u\in U\setminus W,\qquad w\in W\setminus U.
$$

Entrambi appartengono all'unione. Ma $u+w$ non appartiene a $U$: altrimenti, sottraendo $u\in U$, avremmo $w\in U$, contro la scelta. Non appartiene neppure a $W$: sottraendo $w$ si avrebbe $u\in W$. Dunque $u+w\notin U\cup W$, e manca la chiusura per somma.

**Esempio svolto.** Due assi distinti del piano hanno intersezione $\{(0,0)\}$, un sottospazio, ma unione non stabile per somma. Contenerli entrambi e accettare tutte le combinazioni ci porterà invece all'intero piano: è il motivo per introdurre lo span.

> [!warning] Attenzione — Il teorema riguarda l'unione di due sottospazi
> Precisazione redazionale: non trasformarlo senza prova in un'affermazione su unioni arbitrarie. Per esempio, l'unione di **tutte** le rette per l'origine in $\mathbb R^2$ è l'intero piano, anche se nessuna singola retta contiene tutte le altre.

## Combinazioni lineari: costruire con pezzi assegnati

Supponi ora di conoscere alcuni spostamenti elementari $v_1,\ldots,v_k$. Puoi riscalarli e sommarli: i vettori costruibili hanno la forma

$$
\lambda_1v_1+\cdots+\lambda_kv_k,\qquad \lambda_j\in K.
$$

Questa è una **combinazione lineare** della famiglia assegnata. «Lineare» indica che i vettori vengono soltanto sommati e moltiplicati per scalari; non si richiedono prodotti fra vettori. I coefficienti possono essere zero, negativi quando il campo lo consente e ripetuti.

Definiamo lo **span**, o **sottospazio generato**, mediante

$$
\operatorname{span}(v_1,\ldots,v_k)
=\left\{\sum_{j=1}^k\lambda_jv_j:\lambda_j\in K\right\}.
$$

Per appartenere allo span basta **esistere** una scelta dei coefficienti. Non stiamo affermando che la scelta sia unica.

**Esempio svolto.** In $\mathbb R^3$ prendiamo

$$
v_1=(1,2,0),\qquad v_2=(0,3,1).
$$

La combinazione generica è

$$
s v_1+t v_2=(s,2s+3t,t).
$$

Ogni vettore così ottenuto soddisfa $2x-y+3z=0$. Viceversa, se $(x,y,z)$ soddisfa l'equazione, allora $y=2x+3z$ e

$$
(x,y,z)=xv_1+zv_2.
$$

Pertanto lo stesso insieme ammette due descrizioni:

$$
\{(x,y,z):2x-y+3z=0\}
=\operatorname{span}(v_1,v_2).
$$

L'equazione è una descrizione **implicita**, utile per controllare un candidato; i generatori danno una descrizione **parametrica**, utile per produrre elementi.

Una lista differente può generare lo stesso insieme. Per esempio, $u+v$ e $v$ appartengono a $\operatorname{span}(u,v)$, mentre

$$
u=(u+v)-v
$$

permette di ricostruire $u$ dai nuovi vettori. Ogni combinazione della prima famiglia si traduce quindi in una combinazione della seconda, e viceversa.

> [!example] Esempi e controesempi — Generare non significa distinguere i coefficienti
> $\operatorname{span}(v)$ è l'insieme dei multipli di $v$; se $v=0$, coincide con $\{0\}$.
> $\operatorname{span}(v,2v)=\operatorname{span}(v)$ su $\mathbb R$, ma $2v$ ha le due espressioni $2v+0(2v)$ e $0v+1(2v)$.
> Aggiungere un generatore può non aggiungere nessun vettore allo span. Il [[Books/Geometria-I/06 - Indipendenza basi e coordinate|capitolo 06]] studierà precisamente questa ridondanza.

## Lo span di un insieme arbitrario

La definizione deve funzionare anche quando l'insieme dei pezzi disponibili è infinito. In $K[t]$, per esempio, vogliamo usare tutti i monomi $1,t,t^2,\ldots$: nessun polinomio richiede però una somma infinita.

Per $A\subseteq V$ definiamo

$$
\operatorname{span}(A)=
\left\{\sum_{j=1}^k\lambda_ja_j:
k\ge0,\ a_j\in A,\ \lambda_j\in K\right\}.
$$

La somma con $k=0$ è la **somma vuota**, che per convenzione vale $0_V$. Ne segue immediatamente

$$
\operatorname{span}(\varnothing)=\{0_V\}.
$$

Se $A$ non è vuoto, lo zero si può anche ottenere assegnando coefficiente zero a un suo elemento. Lo span di una famiglia finita coincide con quello dell'insieme dei suoi elementi: le ripetizioni si raccolgono e i vettori non utilizzati si inseriscono con coefficiente zero.

**Teorema.** Per qualunque $A\subseteq V$, lo span di $A$ è un sottospazio di $V$.

Lo zero vi appartiene. Siano

$$
x=\sum_{j=1}^r\alpha_ja_j,\qquad
y=\sum_{\ell=1}^s\beta_\ell b_\ell,
\qquad a_j,b_\ell\in A.
$$

Le due liste possono essere diverse. La somma $x+y$ è comunque una combinazione finita di elementi di $A$: basta concatenare le liste. Se uno stesso vettore compare più volte, si sommano i suoi coefficienti. Dunque $x+y\in\operatorname{span}(A)$. Per ogni $\lambda\in K$,

$$
\lambda x=\sum_{j=1}^r(\lambda\alpha_j)a_j
\in\operatorname{span}(A).
$$

Il criterio di sottospazio conclude la prova. Nessun passaggio richiede che $A$ sia finito: richiede soltanto che le singole somme lo siano.

> [!warning] Attenzione — Infiniti generatori, combinazioni finite
> Nella [[_transcripts/Geometria 1/2026-10-02 - Span, indipendenza lineare e basi vettoriali|lezione del 2 ottobre]] il docente insiste su questa distinzione. Lo span non autorizza una serie infinita $\sum_{j=1}^{\infty}\lambda_jv_j$. Una tale scrittura richiederebbe ulteriori definizioni, assenti dalla struttura di spazio vettoriale astratto.

Un esempio rende concreto il limite. Nello spazio di tutte le successioni reali, le successioni $e_j$ con un unico $1$ generano esattamente le successioni a **supporto finito**, cioè con soltanto un numero finito di termini non nulli. Una loro combinazione finita non può accendere infinite posizioni. Viceversa, una successione con termini non nulli solo nelle posizioni $j_1,\ldots,j_k$ si scrive

$$
x_{j_1}e_{j_1}+\cdots+x_{j_k}e_{j_k}.
$$

La successione costante $(1,1,1,\ldots)$ appartiene all'ambiente ma non allo span degli $e_j$. Essere dentro lo spazio e poter essere costruiti dai generatori assegnati sono due condizioni differenti.

## Il più piccolo sottospazio che contiene i dati

Lo span non è soltanto un modo di produrre esempi. Risponde a un problema di minimalità: se vogliamo uno spazio che contenga certi vettori, quali altri vettori siamo obbligati a includere?

**Teorema.** Per ogni $A\subseteq V$:

1. $A\subseteq\operatorname{span}(A)$;
2. se $W\le V$ e $A\subseteq W$, allora $\operatorname{span}(A)\subseteq W$.

Per la prima proprietà, ogni $a\in A$ è la combinazione $1_Ka$. Per la seconda, ogni combinazione finita di elementi di $A$ appartiene a $W$, perché $W$ è chiuso per scalari e somme. Formalmente si applica la chiusura per somma un numero finito di volte; la somma vuota dà lo zero, anch'esso in $W$.

Abbiamo già provato che lo span è un sottospazio. Quindi è **il più piccolo per inclusione** fra i sottospazi che contengono $A$: non possiamo eliminarne elementi senza perdere qualche combinazione richiesta dalle chiusure.

> [!abstract] Concetto chiave — Costruzione e minimalità descrivono lo stesso oggetto
> Lo span di $A$ è l'insieme di tutte le combinazioni lineari finite di elementi di $A$ ed è il più piccolo sottospazio che contiene $A$.
> Per dimostrare che $\operatorname{span}(A)=W$, controlla due cose: i generatori sono in $W$, e ogni vettore di $W$ si ricostruisce da essi.

La minimalità dà anche la descrizione

$$
\operatorname{span}(A)
=\bigcap_{\substack{W\le V\\A\subseteq W}}W.
$$

La famiglia intersecata non è vuota, perché contiene $V$. Lo span è contenuto in ogni suo membro, dunque nell'intersezione. Viceversa, lo span stesso è uno dei membri: l'intersezione è contenuta nello span. Le due inclusioni provano l'uguaglianza.

Tre conseguenze tornano spesso negli esercizi.

**Monotonia.** Se $A\subseteq B$, allora

$$
\operatorname{span}(A)\subseteq\operatorname{span}(B).
$$

Infatti lo span di $B$ è un sottospazio che contiene $A$, quindi contiene il più piccolo fra essi. Aggiungere pezzi non può ridurre ciò che si può costruire.

**Idempotenza.** Si ha

$$
\operatorname{span}(\operatorname{span}(A))
=\operatorname{span}(A).
$$

Lo span di $A$ è già un sottospazio: è esso stesso un candidato che contiene tutti gli elementi cui si applica il secondo span. La minimalità dà l'inclusione da sinistra a destra; la proprietà di contenimento dà l'altra. Costruire combinazioni di combinazioni non richiede nuovi pezzi.

**Riconoscimento dei sottospazi.** Un insieme $A$ è un sottospazio se e solo se $\operatorname{span}(A)=A$. Se è un sottospazio, la minimalità dà l'uguaglianza; se coincide con il suo span, è un sottospazio perché lo span lo è. Vale anche per $A=\{0\}$, mentre non vale per $A=\varnothing$.

Una famiglia $A$ si chiama **famiglia di generatori di $W$** quando $\operatorname{span}(A)=W$. I generatori devono appartenere a $W$ e devono bastare per ricostruirne ogni elemento. Nessuna delle due richieste può essere omessa. Non si richiede invece che siano pochi o che le rappresentazioni siano uniche.

## Dalle equazioni ai generatori

Una descrizione implicita pone un test: «le coordinate soddisfano questa uguaglianza?». Una descrizione tramite generatori pone una costruzione: «scegli coefficienti e combina questi vettori». Per provare che coincidono dobbiamo poter passare in entrambe le direzioni.

Consideriamo su un campo $K$ l'equazione omogenea

$$
\alpha_1x_1+\cdots+\alpha_nx_n=0.
$$

Le sue soluzioni formano un sottospazio: zero soddisfa l'equazione e il membro sinistro, applicato a una somma o a un multiplo, diventa rispettivamente somma o multiplo dei due membri sinistri. È lo stesso controllo effettuato nell'esempio iniziale.

Supponiamo che almeno un coefficiente sia non nullo e scegliamo un indice $j$ con $\alpha_j\ne0$. Possiamo isolare quella coordinata:

$$
x_j=-\sum_{i\ne j}\frac{\alpha_i}{\alpha_j}x_i.
$$

Le altre coordinate $x_i$, per $i\ne j$, possono essere scelte liberamente. Indichiamo con $e_i$ i vettori con $1$ nella posizione $i$ e zero nelle altre e poniamo

$$
g_i=e_i-\frac{\alpha_i}{\alpha_j}e_j,\qquad i\ne j.
$$

**Ogni soluzione è generata.** Per una soluzione $x$,

$$
x=\sum_{i\ne j}x_i g_i:
$$

le coordinate diverse da $j$ coincidono per costruzione, e la coordinata $j$ coincide per l'equazione appena risolta.

**Ogni combinazione è soluzione.** Il vettore $g_i$ soddisfa l'equazione perché i suoi soli contributi possibili sono $\alpha_i$ e $-\alpha_j(\alpha_i/\alpha_j)$, che si cancellano. Essendo l'insieme delle soluzioni un sottospazio, ogni loro combinazione vi appartiene.

Quindi i $g_i$ generano esattamente le soluzioni. Abbiamo provato l'uguaglianza, non solo trovato qualche vettore che passa il test.

In più, i coefficienti della combinazione si leggono nelle posizioni $i\ne j$. Se due combinazioni producono lo stesso vettore, confrontando quelle posizioni si vede che i coefficienti coincidono. Questa proprietà preparerà il concetto di indipendenza, senza essere necessaria alla sola generazione.

**Esempio svolto.** Per

$$
3x_1+2x_2-x_3=0
$$

conviene scegliere il coefficiente $-1$ di $x_3$. Si ottiene

$$
x_3=3x_1+2x_2,\qquad
x=x_1(1,0,3)+x_2(0,1,2).
$$

Non occorre che tutti i coefficienti dell'equazione siano non nulli: per isolare una coordinata ne basta uno. Se **tutti** sono nulli, invece, l'equazione è $0=0$: ogni vettore di $K^n$ è soluzione e i vettori $e_1,\ldots,e_n$ generano l'insieme.

> [!warning] Attenzione — Scegli il divisore dopo averne verificato il valore
> Controllo redazionale: se un coefficiente contiene un parametro, non dividerci prima di aver escluso che sia zero. In $\lambda x_1+x_2-\lambda x_3=0$ il coefficiente di $x_2$ è sempre $1$: isolare $x_2$ evita una divisione per $\lambda$ e funziona anche per $\lambda=0$.

## Generatori di polinomi e condizioni sulle funzioni

Le combinazioni lineari non dipendono dalla forma grafica degli oggetti. In $K[t]$ vale

$$
K[t]=\operatorname{span}\{1,t,t^2,t^3,\ldots\},
$$

perché ogni polinomio è, per definizione, una combinazione **finita** di monomi. Il sottoinsieme dei polinomi con soli esponenti pari è

$$
E=\operatorname{span}\{1,t^2,t^4,\ldots\}.
$$

La somma e il prodotto per scalare non introducono esponenti dispari. Viceversa, ogni polinomio con soli esponenti pari è una combinazione finita dei monomi indicati. Analogamente,

$$
O=\operatorname{span}\{t,t^3,t^5,\ldots\}
$$

contiene i polinomi con soli esponenti dispari; il polinomio nullo appartiene a entrambi. Queste descrizioni tramite coefficienti valgono su qualunque campo. Su $\mathbb R$ coincidono rispettivamente con i polinomi che soddisfano $p(-t)=p(t)$ e $p(-t)=-p(t)$; questa caratterizzazione mediante il segno richiede attenzione in caratteristica $2$, dove $-t=t$ e non distingue i due casi.

Un vincolo sui valori può essere studiato con il criterio senza cambiare gli oggetti. Consideriamo, per esempio,

$$
W=\{p\in K[t]_{\le3}:p(1)=0\}.
$$

Il polinomio nullo appartiene a $W$; se $p(1)=q(1)=0$, allora

$$
(p+q)(1)=p(1)+q(1)=0,\qquad
(\lambda p)(1)=\lambda p(1)=0.
$$

Dunque $W$ è un sottospazio. Per trovarne generatori, scriviamo

$$
p=a_0+a_1t+a_2t^2+a_3t^3.
$$

La condizione è $a_0+a_1+a_2+a_3=0$, quindi

$$
p=a_1(t-1)+a_2(t^2-1)+a_3(t^3-1).
$$

Abbiamo ottenuto generatori risolvendo un'equazione **sui coefficienti**, senza usare metodi matriciali. Ogni combinazione indicata si annulla in $1$, perciò la descrizione è esatta.

Lo stesso controllo di chiusura vale nello spazio di tutte le funzioni $X\to K$: se $x_0\in X$, le funzioni con $f(x_0)=0$ formano un sottospazio, mentre quelle con $f(x_0)=1_K$ non contengono la funzione nulla. Il vincolo descrive i valori; l'ambiente decide se gli oggetti ammessi siano polinomi, funzioni continue o tutte le funzioni.

> [!warning] Attenzione — Una condizione sui valori non cambia la natura degli oggetti
> Precisazione redazionale: in $K[t]$ l'uguaglianza è quella dei coefficienti. In uno spazio di funzioni l'uguaglianza richiede gli stessi valori in ogni punto del dominio. Su $\mathbb F_2$, il polinomio formale $t^2+t$ è non nullo ma vale zero in entrambi gli elementi del campo. Non si può verificare un'identità di polinomi formali soltanto provando i valori disponibili.

La strategia comune è ormai visibile: tradurre la condizione di appartenenza, controllare le operazioni e, quando possibile, isolare coefficienti per produrre tutti gli oggetti ammessi.

## Tutti i sottospazi del piano

Nel piano possiamo completare il quadro con una prova che non usa ancora dimensione o determinanti.

**Teorema.** I sottospazi di $\mathbb R^2$ sono esattamente $\{0\}$, le rette per l'origine e $\mathbb R^2$.

Sia $W\le\mathbb R^2$. Se non contiene vettori non nulli, è $\{0\}$. Altrimenti scegliamo $u\ne0$ in $W$. La chiusura per scalari impone che tutti i multipli di $u$ appartengano a $W$.

Se non ci sono altri vettori, $W=\operatorname{span}(u)$ è una retta per l'origine. Se invece esiste $v\in W$ che non sia multiplo di $u$, mostriamo che $W$ contiene i due vettori $e_1=(1,0)$ ed $e_2=(0,1)$; allora contiene anche ogni $(x,y)=xe_1+ye_2$.

Scriviamo $u=(a,b)$ e $v=(c,d)$.

*Caso 1 — $a\ne0$.* La combinazione

$$
w=v-\frac ca u=\left(0,d-\frac{cb}{a}\right)
$$

appartiene a $W$. La sua seconda coordinata $\eta=d-cb/a$ è non nulla: se fosse zero, avremmo $v=(c/a)u$, contro la scelta. Pertanto

$$
e_2=\eta^{-1}w\in W,\qquad
e_1=a^{-1}(u-be_2)\in W.
$$

*Caso 2 — $a=0$.* Poiché $u\ne0$, abbiamo $b\ne0$ e $e_2=b^{-1}u\in W$. Inoltre $c\ne0$: altrimenti anche $v=(0,d)$ sarebbe multiplo di $u$. Possiamo quindi scrivere

$$
e_1=c^{-1}(v-de_2)\in W.
$$

In entrambi i casi otteniamo tutti i vettori del piano, dunque $W=\mathbb R^2$. Le possibilità elencate sono anche effettivamente sottospazi, come già verificato.

Questa prova mostra il ruolo delle combinazioni lineari: basta che un insieme stabile contenga due direzioni non proporzionali perché debba contenere tutto il piano. Nei prossimi capitoli l'indipendenza e la dimensione renderanno sistematico questo principio in spazi meno facili da disegnare.

## Fonti

Definizione e criterio di sottospazio, esempi geometrici, intersezione e unione derivano dalla [[Notes/Geometria 1/Lectures/2026-09-30 - Spazi vettoriali, esempi e sottospazi|nota del 30 settembre sugli spazi vettoriali]] e dalla [[_transcripts/Geometria 1/2026-09-30 - Spazi vettoriali, esempi e sottospazi|relativa trascrizione]]. Il requisito di non vacuità è mantenuto anche nella formulazione compatta: il docente ne discute esplicitamente la necessità, mentre una formulazione abbreviata nella nota non lo ripete.

Combinazioni lineari finite, span di insiemi arbitrari, proprietà di minimalità e monomi pari e dispari riprendono la [[Notes/Geometria 1/Lectures/2026-10-02 - Span, indipendenza lineare e basi vettoriali|nota del 2 ottobre]] e la [[_transcripts/Geometria 1/2026-10-02 - Span, indipendenza lineare e basi vettoriali|trascrizione del 2 ottobre]]. L'avvertenza sulle combinazioni sempre finite riformula un richiamo effettivo della lezione.

La distinzione fra $\mathbb R^2$ e una sua copia immersa in $\mathbb R^3$, la parametrizzazione del piano $2x-y+3z=0$, il caso generale di una sola equazione e la prova diretta della classificazione nel piano sono sviluppati nelle fonti del 6 ottobre: [[Notes/Geometria 1/Lectures/2026-10-06 - (!) Sottospazi, combinazioni lineari e basi|nota]] e [[_transcripts/Geometria 1/2026-10-06 - Sottospazi, combinazioni lineari e basi|trascrizione]]. Gli esempi con condizioni sui valori dei polinomi si collegano anche alla [[Notes/Geometria 1/Lectures/2026-10-14 - Basi, sottospazi e sistemi lineari|nota del 14 ottobre]] e alla [[_transcripts/Geometria 1/2026-10-14 - Basi, sottospazi e sistemi lineari|trascrizione corrispondente]].

Sono esplicitazioni didattiche la somma vuota, il caso della famiglia vuota di sottospazi, le prove complete di tutte le proprietà dello span e il confronto fra polinomi formali e funzioni nei campi finiti. L'esempio delle successioni e tutti gli esercizi e riscontri sono redazionali. Le avvertenze ulteriori sono indicate come tali; le fonti originali non sono state modificate. Per le precisazioni complessive: [[Books/Geometria-I/90 - Fonti e criteri editoriali|fonti e criteri editoriali]].

## Riscontri degli esercizi

Apri il riscontro soltanto dopo il tentativo. Per una verifica di sottospazio, controlla che tu abbia usato elementi arbitrari nelle prove positive e controesempi effettivamente appartenenti all'insieme nelle risposte negative.

### Riscontro 1

> [!tip]- Riscontro 1
> Solo $L$ è un sottospazio. Contiene zero; la somma di $(x,3x)$ e $(x',3x')$ è $(x+x',3(x+x'))$, e $\lambda(x,3x)=(\lambda x,3\lambda x)$: entrambe le operazioni restano in $L$.
> $H$ non contiene zero, perché $0\ne3\cdot0+1$. $Q$ contiene $(1,0)$ ma non il suo multiplo $(-1,0)$ per lo scalare $-1$. $C$ contiene $(1,0)$ e $(0,1)$, ma non la loro somma $(1,1)$, il cui prodotto delle coordinate è $1$. In particolare, contenere l'origine non garantisce le chiusure.

Torna a [[#Esercizio 1 — Passare per l'origine non basta (criterio di sottospazio)|esercizio 1]].

### Riscontro 2

> [!tip]- Riscontro 2
> Manca $W\ne\varnothing$. Per il vuoto non esistono coppie $u,v$ che violino la condizione universale, quindi la chiusura proposta è vera; il vuoto però non contiene zero e non è uno spazio vettoriale.
> $\mathbb Z^2$ è non vuoto e chiuso per somma, ma $(1/2)(1,0)=(1/2,0)\notin\mathbb Z^2$. L'unione degli assi è non vuota e chiusa per qualsiasi scalare, ma la somma di $(1,0)$ e $(0,1)$ ne esce.
> Se invece valgono entrambe le chiusure e puoi scegliere $w\in W$, ottieni $0_V=0_Kw\in W$ e, per ogni $u\in W$, $-u=(-1_K)u\in W$. Associatività, commutatività e gli assiomi del prodotto per scalare sono ereditati dall'ambiente. Sono questi passaggi, insieme alle chiusure, a completare la verifica.

Torna a [[#Esercizio 2 — Tre condizioni da tenere separate (non vacuità e chiusure)|esercizio 2]].

### Riscontro 3

> [!tip]- Riscontro 3
> $\mathbb R^2$ è un insieme di coppie, non un sottoinsieme dell'insieme delle terne. L'immersione $\iota(x,y)=(x,y,0)$ ha immagine $P=\{(x,y,z):z=0\}$. Questa contiene $(0,0,0)$; sommare due sue terne e moltiplicarle per scalari mantiene l'ultima coordinata nulla.
> $P_1$ non contiene $(0,0,0)$, perché richiede ultima coordinata $1$. Dunque fallisce già la prima condizione. I due piani hanno la stessa forma geometrica, ma soltanto quello collocato attraverso l'origine è compatibile con le operazioni vettoriali assegnate.

Torna a [[#Esercizio 3 — Lo stesso nome non significa lo stesso insieme (ambiente e immersione)|esercizio 3]].

### Riscontro 4

> [!tip]- Riscontro 4
> Nell'intersezione valgono sia $x=z$ sia $y=z$, dunque $U\cap W=\{s(1,1,1):s\in\mathbb R\}$. I vettori $u=(1,0,1)\in U\setminus W$ e $w=(0,1,1)\in W\setminus U$ hanno somma $(1,1,2)$, che non soddisfa nessuna delle due equazioni. L'unione non è chiusa per somma.
> In generale, se c'è inclusione, l'unione coincide con il sottospazio più grande. Se non c'è inclusione, scegli $u\in U\setminus W$ e $w\in W\setminus U$. Se $u+w$ fosse in $U$, sottraendo $u$ avresti $w\in U$; se fosse in $W$, sottraendo $w$ avresti $u\in W$. Entrambe le possibilità sono escluse. Il controesempio generale prova che l'unione non è un sottospazio.

Torna a [[#Esercizio 4 — Due piani e due operazioni insiemistiche (intersezione e unione)|esercizio 4]].

### Riscontro 5

> [!tip]- Riscontro 5
> Una combinazione generica è $su+tv=(s,s+t,t)$. Pertanto l'appartenenza implica $b=a+c$, ossia $a-b+c=0$. Viceversa, se $b=a+c$, scegliendo $s=a$ e $t=c$ ricostruisci $(a,b,c)=au+cv$. La condizione è quindi necessaria e sufficiente.
> Per $(2,5,3)$ vale $5=2+3$ e la combinazione è $2u+3v$. Per $(1,1,1)$ la seconda coordinata dovrebbe essere $1+1=2$, mentre è $1$: il vettore non appartiene allo span.

Torna a [[#Esercizio 5 — Raggiungere un bersaglio (combinazioni lineari e appartenenza)|esercizio 5]].

### Riscontro 6

> [!tip]- Riscontro 6
> Una combinazione dei nuovi vettori è $a(u+v)+bv=au+(a+b)v$, quindi appartiene al vecchio span. Viceversa, $cu+dv=c(u+v)+(d-c)v$, quindi appartiene al nuovo. Sono le due inclusioni richieste. La sottrazione significa sommare l'opposto nel campo; anche in $\mathbb F_2$ l'identità resta valida, con $-c=c$.
> Il vettore nullo non aggiunge contributi. Due occorrenze dello stesso generatore si raccolgono mediante $av+bv=(a+b)v$, mentre una combinazione che non le usa entrambe si reinserisce con un coefficiente zero. Lo span non cambia.
> L'unicità non segue. Nella famiglia $(v,v)$, con $v\ne0$, lo stesso vettore ha espressioni $1v+0v$ e $0v+1v$, con coefficienti diversi. Generazione significa esistenza, non unicità.

Torna a [[#Esercizio 6 — Cambiare i pezzi senza cambiare gli oggetti (uguaglianza di span)|esercizio 6]].

### Riscontro 7

> [!tip]- Riscontro 7
> Lo span è l'insieme delle successioni a supporto finito. Una combinazione di un numero finito di $e_j$ può essere non nulla soltanto nelle posizioni selezionate. Viceversa, ogni successione con finitissime posizioni non nulle si ottiene assegnando a ciascun $e_j$ interessato il valore che deve comparire in quella posizione.
> La successione costante $1$ non appartiene allo span, perché ha infinite posizioni non nulle. La seconda appartiene: è $2e_1-e_3$. La scrittura $\sum_{j=1}^{\infty}e_j$ non è una combinazione lineare nel senso definito: sostituire una somma infinita alla richiesta di una somma finita cambia la domanda. La struttura vettoriale da sola non definisce il valore di quelle somme.

Torna a [[#Esercizio 7 — Una lista infinita di interruttori (span e supporto finito)|esercizio 7]].

### Riscontro 8

> [!tip]- Riscontro 8
> Ogni combinazione di elementi di $A$ è anche una combinazione di elementi di $B$: questo prova la monotonia. Lo span di $A$ è già un sottospazio che contiene sé stesso, quindi la minimalità dà $\operatorname{span}(\operatorname{span}(A))\subseteq\operatorname{span}(A)$; il contenimento di un insieme nel proprio span dà l'altra inclusione.
> Per il vuoto l'unica combinazione ammessa è la somma vuota: $\operatorname{span}(\varnothing)=\{0\}$. Se $A$ è un sottospazio contiene tutte le combinazioni dei propri elementi, perciò coincide con lo span; viceversa, coincidere con uno span significa essere un sottospazio.
> Nell'esempio proposto $A\cap B=\varnothing$, dunque lo span dell'intersezione è $\{0\}$. Entrambi gli span, invece, coincidono con l'asse orizzontale: la loro intersezione è quell'asse. L'uguaglianza è falsa. Resta sempre vera l'inclusione $\operatorname{span}(A\cap B)\subseteq\operatorname{span}(A)\cap\operatorname{span}(B)$, per monotonia rispetto a ciascuno dei due insiemi.

Torna a [[#Esercizio 8 — Prendere la chiusura una volta sola (minimalità e proprietà dello span)|esercizio 8]].

### Riscontro 9

> [!tip]- Riscontro 9
> Isola $x_3=2x_1+3x_4$. Ponendo $x_1=s,x_2=t,x_4=r$, ottieni
> $$
> x=s(1,0,2,0)+t(0,1,0,0)+r(0,0,3,1).
> $$
> Ogni soluzione ha questa forma e ogni combinazione così costruita soddisfa l'equazione: le due direzioni provano che i tre vettori generano esattamente $S$.
> Nel secondo caso scegli $x_2=-\lambda x_1+\lambda x_3$. Con $x_1=s,x_3=t$,
> $$
> x=s(1,-\lambda,0)+t(0,\lambda,1).
> $$
> Non hai diviso per $\lambda$: per $\lambda=0$ la descrizione diventa $x=(s,0,t)$, coerente con l'equazione $x_2=0$. Se tutti i coefficienti sono nulli, la condizione è $0=0$ e non elimina alcun vettore: i vettori canonici generano l'intero ambiente.

Torna a [[#Esercizio 9 — Da un vincolo a una costruzione (equazioni e generatori)|esercizio 9]].

### Riscontro 10

> [!tip]- Riscontro 10
> Il polinomio zero soddisfa il vincolo. Se $p(0)=p(1)$ e $q(0)=q(1)$, allora anche $p+q$ ha i due valori uguali; lo stesso vale per $\lambda p$. È quindi un sottospazio.
> Sui coefficienti la condizione è $a_1+a_2+a_3=0$, da cui $a_1=-a_2-a_3$ e
> $$
> p=a_0\cdot1+a_2(t^2-t)+a_3(t^3-t).
> $$
> I generatori sono $1,t^2-t,t^3-t$. Ognuno soddisfa il vincolo e la formula ricostruisce ogni polinomio ammesso. Il polinomio richiesto è $1-3(t^2-t)+(t^3-t)$; sviluppando ritrovi $1+2t-3t^2+t^3$.
> I polinomi di grado esattamente $3$ non contengono il nullo. Inoltre $t^3$ e $-t^3$ hanno grado $3$, ma la loro somma no. Contenere polinomi dello stesso grado non garantisce stabilità.

Torna a [[#Esercizio 10 — Un vincolo sui valori di un polinomio (generatori e coefficienti)|esercizio 10]].

### Riscontro 11

> [!tip]- Riscontro 11
> $F$ è un sottospazio: contiene la funzione nulla, e per $f,g\in F$ si ha $(f+g)(0)=f(0)+g(0)=f(1)+g(1)=(f+g)(1)$; per gli scalari la verifica è analoga. $G$ non contiene la funzione nulla, perché essa vale $0$, non $1$, nel punto $0$.
> Il vincolo non identifica le funzioni con polinomi. Per esempio, la funzione che vale $1$ solo in $x=2$ e zero altrove appartiene a $F$, ma non è un polinomio di grado al più $3$: un tale polinomio, annullandosi nei quattro punti distinti $0,1,3,4$, dovrebbe essere nullo, mentre qui il valore in $2$ è $1$. È applicato il limite sulle radici del capitolo 03.
> Su $\mathbb F_2$, $t^2+t$ ha coefficienti non nulli e non è il polinomio zero. Tuttavia vale $0$ in $0$ e $1+1=0$ in $1$: induce la funzione nulla. Gli oggetti formali sono distinti anche quando le funzioni indotte coincidono.

Torna a [[#Esercizio 11 — Valori uguali e oggetti diversi (sottospazi di funzioni)|esercizio 11]].

### Riscontro 12

> [!tip]- Riscontro 12
> Se non esistono vettori non nulli, il sottospazio è $\{0\}$. Altrimenti contiene tutti i multipli di un certo $u\ne0$; se non contiene altro, è quella retta. Resta il caso di un vettore $v$ non multiplo di $u$.
> Se $a\ne0$, la combinazione $v-(c/a)u=(0,\eta)$ ha $\eta\ne0$, altrimenti $v$ sarebbe multiplo di $u$. Riscalando ottieni $e_2$, quindi da $u-be_2=(a,0)$ ottieni $e_1$. Se $a=0$, allora $b\ne0$ e ottieni direttamente $e_2=b^{-1}u$; deve essere $c\ne0$, altrimenti $v$ sarebbe ancora multiplo di $u$, e da $v-de_2$ ricavi $e_1$.
> Il sottospazio contiene pertanto $xe_1+ye_2$ per ogni $x,y\in\mathbb R$: coincide con il piano. Ogni divisione è stata preceduta dalla verifica che il divisore fosse non nullo; non sono stati usati né determinanti né dimensione.

Torna a [[#Esercizio 12 — Non ci sono altre forme (sottospazi del piano)|esercizio 12]].

Puoi considerare acquisito il capitolo quando sai distinguere un test di appartenenza da una costruzione tramite generatori, provare entrambe le inclusioni quando passi fra le due descrizioni e spiegare perché uno span infinito usi comunque somme finite. Prima di dichiarare una famiglia di generatori, chiediti sempre se i vettori proposti appartengano allo spazio e se permettano di ricostruirne ogni elemento.

---

[[Books/Geometria-I/04 - Spazi vettoriali e operazioni lineari|← 04 · Spazi vettoriali e operazioni lineari]] · [[Books/Geometria-I/00 - Indice e piano di studio|Indice e piano di studio]] · [[Books/Geometria-I/06 - Indipendenza basi e coordinate|06 · Indipendenza basi e coordinate →]]

