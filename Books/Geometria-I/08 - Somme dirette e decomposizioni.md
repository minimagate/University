# Somme dirette e decomposizioni

Prerequisiti: [[Books/Geometria-I/05 - Sottospazi e combinazioni lineari|sottospazi e span]], [[Books/Geometria-I/06 - Indipendenza basi e coordinate|basi e unicità delle coordinate]] e [[Books/Geometria-I/07 - Dimensione scambio e completamento|dimensione e completamento di una base]]. Torna all'[[Books/Geometria-I/00 - Indice e piano di studio|indice e piano di studio]].

> [!info] In questo capitolo
> - Costruirai lo spazio degli spostamenti ottenibili sommando contributi di sottospazi diversi.
> - Distinguerai la possibilità di scomporre un vettore dall'**unicità** della scomposizione: questa è la ragione della somma diretta.
> - Dimostrerai la **formula di Grassmann**, che corregge il conteggio delle dimensioni quando due sottospazi hanno una parte comune.
> - Costruirai supplementari e decomposizioni in più componenti, riconoscendo perché le sole intersezioni a due a due non bastino.
> - Separerai ogni matrice quadrata in una parte simmetrica e una antisimmetrica, indicando quando è lecito dividere per due.

## Domande per iniziare dagli esercizi

Prova il problema indicato e scrivi dove intervengono esistenza e unicità. Se ti manca uno strumento, recupera la sezione collegata e poi torna al tentativo senza guardare la spiegazione. I riscontri richiudibili sono raccolti alla fine.

| Domanda guida | Esercizi da tentare | Teoria da recuperare |
|---|---|---|
| Sommare due direzioni permette di raggiungere tutto l'ambiente? | [[#Esercizio 1 — Due direzioni dentro lo spazio (somma e ambiente)\|1]] | [[#Due comandi possono descrivere lo stesso spostamento\|Il problema di partenza]] · [[#La somma è il più piccolo spazio che contiene entrambi\|La costruzione della somma]] |
| Che cosa rende unica una decomposizione e come descrivi tutte le alternative? | [[#Esercizio 2 — Spostare una parte comune (intersezione e unicità)\|2]] | [[#Somma diretta significa componenti uniche\|Il criterio di unicità]] |
| Perché mettere insieme due basi richiede un'ipotesi ulteriore? | [[#Esercizio 3 — Un vettore comune scompare dalla lista (basi e concatenazione)\|3]] | [[#Le basi si possono unire senza perdere indipendenza\|Basi della somma diretta]] |
| Quale parte va sottratta nel conteggio delle dimensioni e perché? | [[#Esercizio 4 — Due sottospazi occupano quattro coordinate (formula di Grassmann)\|4]], [[#Esercizio 5 — Quanto deve essere grande la parte comune (vincoli dimensionali)\|5]] | [[#Grassmann: contare la parte comune una sola volta\|La formula e la sua dimostrazione]] |
| Come completi un sottospazio e perché la scelta non è unica? | [[#Esercizio 6 — Molti modi di completare un piano (supplementari)\|6]] | [[#Un supplementare completa lo spazio\|Esistenza e non unicità]] |
| Perché tre intersezioni nulle non garantiscono tre componenti indipendenti? | [[#Esercizio 8 — Tre rette si intralciano (somme dirette multiple)\|8]], [[#Esercizio 9 — Il terzo contributo dipende da un parametro (criterio progressivo)\|9]] | [[#Tre o più componenti: controllare la somma degli altri\|Il criterio per più sottospazi]] |
| Come costruisci una decomposizione con dimensioni assegnate? | [[#Esercizio 7 — Dividere i monomi in gruppi (partizione di una base)\|7]], [[#Esercizio 10 — Progettare tre componenti non nulle (costruzione di sottospazi)\|10]] | [[#Costruire decomposizioni dividendo una base\|La costruzione mediante blocchi]] |
| Come separi una matrice in due parti e come provi che non esistono alternative? | [[#Esercizio 11 — Due parti di una matrice (simmetria e antisimmetria)\|11]] | [[#Un esempio completo: matrici simmetriche e antisimmetriche\|La decomposizione delle matrici]] |
| Quanti parametri hanno le due parti e che cosa cambia in caratteristica due? | [[#Esercizio 12 — Il due non è sempre invertibile (basi e campo degli scalari)\|12]] | [[#Contare le parti di una matrice e controllare il campo\|Basi, dimensioni e ipotesi sul campo]] |

## Esercizi per verificare la comprensione

Gli esercizi 1–6 sviluppano le due componenti; 7–10 richiedono di costruire e controllare decomposizioni; 11–12 trasferiscono il ragionamento alle matrici. Non sostituire una verifica delle intersezioni con il solo conto delle dimensioni, a meno di aver giustificato il criterio usato.

### Esercizio 1 — Due direzioni dentro lo spazio (somma e ambiente)

In $\mathbb R^3$ considera

$$
U=\operatorname{span}\{(1,0,1)\},\qquad
W=\operatorname{span}\{(0,1,1)\}.
$$

Descrivi $U+W$ mediante un'equazione e trova $U\cap W$. La somma è diretta? È tutto $\mathbb R^3$? Decomponi $(2,-1,1)$ nei due contributi e spiega perché la sua decomposizione sia unica.

Se ti blocchi: [[#La somma è il più piccolo spazio che contiene entrambi|La somma è il più piccolo spazio che contiene entrambi]] · [[#Somma diretta significa componenti uniche|Somma diretta significa componenti uniche]].

Controllo dopo il tentativo: [[#Riscontro 1|riscontro 1]].

### Esercizio 2 — Spostare una parte comune (intersezione e unicità)

Siano

$$
U=\{(x,y,0):x,y\in\mathbb R\},\qquad
W=\{(0,y,z):y,z\in\mathbb R\}.
$$

Trova tutte le coppie $(u,w)\in U\times W$ tali che $u+w=(2,3,4)$. Individua l'intersezione e spiega quale libertà produce.

Dimostra poi il risultato generale: fissata una decomposizione $v=u_0+w_0$, tutte le altre hanno la forma $(u_0+t,w_0-t)$ con $t\in U\cap W$. La prova deve mostrare anche che ogni decomposizione si ottiene così.

Se ti blocchi: [[#Somma diretta significa componenti uniche|Somma diretta significa componenti uniche]].

Controllo dopo il tentativo: [[#Riscontro 2|riscontro 2]].

### Esercizio 3 — Un vettore comune scompare dalla lista (basi e concatenazione)

In $\mathbb R^3$ siano $U=\operatorname{span}(e_1,e_2)$ e $W=\operatorname{span}(e_2,e_3)$. Uno studente scrive: «L'unione delle due basi è $\{e_1,e_2,e_3\}$, che è una base della somma; dunque la somma è diretta».

Individua l'errore. Che cosa succede usando la **famiglia concatenata** $(e_1,e_2,e_2,e_3)$? Scrivi una relazione non banale. Formula e dimostra il criterio corretto che collega somma diretta e concatenazione di basi.

Se ti blocchi: [[#Le basi si possono unire senza perdere indipendenza|Le basi si possono unire senza perdere indipendenza]].

Controllo dopo il tentativo: [[#Riscontro 3|riscontro 3]].

### Esercizio 4 — Due sottospazi occupano quattro coordinate (formula di Grassmann)

In $\mathbb R^4$ siano

$$
U=\{(x_1,x_2,x_3,x_4):x_4=0\},
$$

$$
W=\operatorname{span}\{(1,0,0,1),(0,1,1,0)\}.
$$

Trova una base di $U\cap W$ e una base di $U+W$. Verifica la formula di Grassmann e decidi se la somma sia diretta.

Ricostruisci poi la dimostrazione generale della formula: parti da una base dell'intersezione, completala in entrambi i sottospazi e spiega perché i vettori aggiunti, insieme alla parte comune presa una sola volta, siano indipendenti.

Se ti blocchi: [[#Grassmann: contare la parte comune una sola volta|Grassmann: contare la parte comune una sola volta]].

Controllo dopo il tentativo: [[#Riscontro 4|riscontro 4]].

### Esercizio 5 — Quanto deve essere grande la parte comune (vincoli dimensionali)

In uno spazio $V$ di dimensione $7$ siano $\dim U=4$ e $\dim W=5$. Determina tutti i valori possibili di $\dim(U\cap W)$ e di $\dim(U+W)$. Costruisci esempi per ciascun valore prendendo opportuni vettori di una base $(e_1,\ldots,e_7)$ di $V$.

Considera infine una nuova coppia di sottospazi. Uno studente sostiene: «Se le loro dimensioni sommano alla dimensione dell'ambiente, sono supplementari». È sufficiente? Trova un controesempio in dimensione $7$ e indica quale condizione manca.

Se ti blocchi: [[#Grassmann: contare la parte comune una sola volta|Grassmann: contare la parte comune una sola volta]] · [[#Un supplementare completa lo spazio|Un supplementare completa lo spazio]].

Controllo dopo il tentativo: [[#Riscontro 5|riscontro 5]].

### Esercizio 6 — Molti modi di completare un piano (supplementari)

Sia $U=\{(x,y,0):x,y\in\mathbb R\}$. Per ogni $\alpha\in\mathbb R$ poni

$$
W_\alpha=\operatorname{span}\{(\alpha,0,1)\}.
$$

Dimostra che ciascun $W_\alpha$ è un supplementare di $U$ in $\mathbb R^3$ e che valori diversi di $\alpha$ danno rette diverse. Scrivi la decomposizione di $(x,y,z)$ rispetto a $U\oplus W_\alpha$; confronta le componenti di $(1,2,3)$ per $\alpha=0$ e $\alpha=2$.

Qual è la dimensione di un qualunque supplementare di $U$? Perché la dimensione neppure qui determina il sottospazio?

Se ti blocchi: [[#Un supplementare completa lo spazio|Un supplementare completa lo spazio]].

Controllo dopo il tentativo: [[#Riscontro 6|riscontro 6]].

### Esercizio 7 — Dividere i monomi in gruppi (partizione di una base)

Nello spazio $K[t]_{\le4}$ considera

$$
A=K[t]_{\le1},\qquad B=\operatorname{span}(t^2,t^3,t^4).
$$

Dimostra che $K[t]_{\le4}=A\oplus B$ e trova le componenti di $2-t+3t^3$ su $K=\mathbb R$. Quali sono le dimensioni dei due sottospazi?

Spiega poi perché partizionare una base in gruppi disgiunti produca sempre una somma diretta dei rispettivi span. È necessario che i vettori della base siano ortogonali o di lunghezza uno?

Se ti blocchi: [[#Le basi si possono unire senza perdere indipendenza|Le basi si possono unire senza perdere indipendenza]] · [[#Costruire decomposizioni dividendo una base|Costruire decomposizioni dividendo una base]].

Controllo dopo il tentativo: [[#Riscontro 7|riscontro 7]].

### Esercizio 8 — Tre rette si intralciano (somme dirette multiple)

Nel piano reale siano

$$
L_1=\operatorname{span}(e_1),\qquad
L_2=\operatorname{span}(e_2),\qquad
L_3=\operatorname{span}(e_1+e_2).
$$

Verifica che ogni intersezione a due a due sia $\{0\}$ e che anche $L_1\cap L_2\cap L_3=\{0\}$. Mostra comunque che la somma non è diretta, sia attraverso due decomposizioni di $(1,1)$ sia attraverso una relazione nulla con contributi nei tre sottospazi.

Quale intersezione del criterio progressivo fallisce?

Se ti blocchi: [[#Tre o più componenti: controllare la somma degli altri|Tre o più componenti: controllare la somma degli altri]].

Controllo dopo il tentativo: [[#Riscontro 8|riscontro 8]].

### Esercizio 9 — Il terzo contributo dipende da un parametro (criterio progressivo)

In $\mathbb R^3$ considera

$$
U_1=\operatorname{span}(e_1),\qquad
U_2=\operatorname{span}(e_2),\qquad
U_3(\lambda)=\operatorname{span}\{(1,1,\lambda)\}.
$$

Determina per quali $\lambda$ la somma sia diretta e per quali sia tutto $\mathbb R^3$. Nei casi in cui valga $\mathbb R^3=U_1\oplus U_2\oplus U_3(\lambda)$, trova le tre componenti di $(a,b,c)$.

Che cosa cambia per $\lambda=0$? Le intersezioni a due a due permettono di distinguere i casi?

Se ti blocchi: [[#Tre o più componenti: controllare la somma degli altri|Tre o più componenti: controllare la somma degli altri]].

Controllo dopo il tentativo: [[#Riscontro 9|riscontro 9]].

### Esercizio 10 — Progettare tre componenti non nulle (costruzione di sottospazi)

Su un campo $K$, considera

$$
D=\{(x_1,\ldots,x_6)\in K^6:x_1+x_2+\cdots+x_6=0\}.
$$

Costruisci tre sottospazi $D_1,D_2,D_3$ di dimensioni rispettivamente $2,2,1$ tali che $D=D_1\oplus D_2\oplus D_3$. Indica basi esplicite e giustifica tanto la generazione quanto l'unicità.

Si può scrivere $D$ come somma diretta di sei sottospazi tutti non nulli? Spiega quale risultato impedisce o consente la costruzione.

Se ti blocchi: [[#Costruire decomposizioni dividendo una base|Costruire decomposizioni dividendo una base]].

Controllo dopo il tentativo: [[#Riscontro 10|riscontro 10]].

### Esercizio 11 — Due parti di una matrice (simmetria e antisimmetria)

Per

$$
M=\begin{pmatrix}1&4\\-2&3\end{pmatrix}\in M_{2,2}(\mathbb R)
$$

trova una matrice simmetrica $S$ e una antisimmetrica $A$ tali che $M=S+A$. Controlla tutte e tre le uguaglianze $S^T=S$, $A^T=-A$, $S+A=M$ e spiega perché un'altra coppia con le stesse proprietà debba coincidere con la tua.

Ripeti il ragionamento per una matrice quadrata generica su un campo con $2\ne0$: ricava le formule, invece di usarle come una regola memorizzata.

Se ti blocchi: [[#Un esempio completo: matrici simmetriche e antisimmetriche|Un esempio completo: matrici simmetriche e antisimmetriche]].

Controllo dopo il tentativo: [[#Riscontro 11|riscontro 11]].

### Esercizio 12 — Il due non è sempre invertibile (basi e campo degli scalari)

Su un campo con $2\ne0$, costruisci basi dei sottospazi delle matrici simmetriche e antisimmetriche $n\times n$ e deducine le dimensioni. Mostra come le basi riconoscano separatamente le entrate sulla diagonale e quelle sopra di essa.

Passa poi a $M_{2,2}(\mathbb F_2)$. Con la definizione di antisimmetria $A^T=-A$, confronta i due sottospazi. Trova una matrice non nulla nella loro intersezione e una matrice che non possa scriversi come somma di una simmetrica e un'antisimmetrica. Perché non è consentito mantenere le formule con $1/2$?

Se ti blocchi: [[#Contare le parti di una matrice e controllare il campo|Contare le parti di una matrice e controllare il campo]].

Controllo dopo il tentativo: [[#Riscontro 12|riscontro 12]].

## Teoria da recuperare

La domanda da tenere visibile è: «Le componenti esistono? E, se esistono, sono uniche?». Recupera dalla tabella la sezione necessaria e poi torna all'esercizio. Le formule dimensionali saranno conseguenze di costruzioni di basi.

## Due comandi possono descrivere lo stesso spostamento

Immagina un dispositivo con due comandi. Il primo produce uno spostamento nel piano orizzontale; il secondo uno spostamento lungo una retta inclinata. Per ottenere lo spostamento complessivo sommiamo i due contributi. Ma il risultato permette di riconoscere quanto abbia fatto ciascun comando?

Prendiamo in $\mathbb R^3$

$$
U=\{(x,y,0):x,y\in\mathbb R\},\qquad
W=\operatorname{span}\{(1,0,1)\}.
$$

Un vettore $(a,b,c)$ si scrive

$$
(a,b,c)=(a-c,b,0)+c(1,0,1).
$$

Il primo addendo sta nel piano, il secondo sulla retta. La terza coordinata impone il coefficiente $c$ del secondo comando; a quel punto il contributo del primo è obbligato. Qui ogni spostamento si realizza in un unico modo.

Se il secondo comando agisse invece lungo una retta contenuta nel piano orizzontale, una parte dello spostamento potrebbe essere assegnata indifferentemente al primo o al secondo. Il risultato perderebbe l'informazione su chi l'ha prodotta.

La **somma** descrive gli spostamenti ottenibili. La **somma diretta** dice che i contributi sono distinguibili dal risultato. Sono due domande diverse: una riguarda l'esistenza delle componenti, l'altra la loro unicità.

## La somma è il più piccolo spazio che contiene entrambi

Siano $U,W$ sottospazi dello stesso spazio vettoriale $V$ sul campo $K$. Definiamo

$$
U+W=\{u+w:u\in U,\ w\in W\}.
$$

La scelta dei due addendi può dipendere dal vettore da costruire. L'appartenenza $v\in U+W$ afferma che esiste almeno una coppia $(u,w)$ con $v=u+w$.

**Proposizione.** $U+W$ è un sottospazio di $V$ ed è il più piccolo sottospazio che contiene sia $U$ sia $W$.

*Passo 1 — Le operazioni restano dentro.* Lo zero è $0+0$. Se $v=u_1+w_1$ e $v'=u_2+w_2$, allora

$$
v+v'=(u_1+u_2)+(w_1+w_2)\in U+W.
$$

Abbiamo riordinato gli addendi usando associatività e commutatività. Per $\lambda\in K$,

$$
\lambda v=\lambda u_1+\lambda w_1\in U+W.
$$

Il criterio di sottospazio conclude.

*Passo 2 — Contiene i dati iniziali.* Per $u\in U$ vale $u=u+0$ con $0\in W$, dunque $U\subseteq U+W$. Analogamente $W\subseteq U+W$.

*Passo 3 — È obbligato a stare in ogni altro candidato.* Se $Z\le V$ contiene $U$ e $W$, per chiusura rispetto alla somma contiene ogni $u+w$. Quindi $U+W\subseteq Z$.

Riconosciamo la proprietà minima dello span:

$$
U+W=\operatorname{span}(U\cup W).
$$

Non stiamo uguagliando la somma all'unione. L'unione accetta un vettore che appartenga a uno dei due sottospazi; la somma accetta anche contributi misti. Se $U,W$ sono i due assi del piano, $(1,1)$ appartiene alla somma ma non all'unione.

Se $U=\operatorname{span}(u_1,\ldots,u_r)$ e $W=\operatorname{span}(w_1,\ldots,w_s)$, allora

$$
U+W=\operatorname{span}(u_1,\ldots,u_r,w_1,\ldots,w_s).
$$

Infatti ogni addendo si sviluppa nei propri generatori; viceversa, ogni combinazione della lista concatenata si separa nei due gruppi. In questa fase si ottengono **generatori**, non necessariamente una base.

> [!example] Esempi e controesempi — Sommare e riempire l'ambiente
> Due rette distinte nel piano hanno somma tutto il piano. Due rette distinte in $\mathbb R^3$ hanno invece una somma di dimensione $2$: non raggiungono tutto lo spazio.
> Se $W\subseteq U$, allora $U+W=U$. In particolare $U+U=U$, e $U+\{0\}=U$.
> La scrittura $U+W$ non implica da sola né che la somma sia tutto $V$, né che le componenti siano uniche.

La somma è commutativa. È anche associativa: $(U+W)+Z$ e $U+(W+Z)$ contengono esattamente i vettori $u+w+z$, perché lo è la somma dei vettori. Questo giustifica la scrittura senza parentesi per un numero finito di sottospazi.

## Somma diretta significa componenti uniche

**Definizione.** La somma di $U$ e $W$ si dice **diretta** se

$$
U\cap W=\{0\}.
$$

In tal caso si scrive $U\oplus W$. Il simbolo indica qui la somma di due sottospazi già collocati nello stesso ambiente. Per scrivere $V=U\oplus W$ bisogna avere anche $U+W=V$.

Perché l'intersezione è proprio il test giusto? Un vettore nella parte comune può essere spostato da una componente all'altra, senza cambiare la somma.

> [!abstract] Concetto chiave — Intersezione nulla e unicità
> Per $U,W\le V$ sono equivalenti:
> - $U\cap W=\{0\}$;
> - ogni $v\in U+W$ ammette un'unica coppia $(u,w)\in U\times W$ con $v=u+w$;
> - se $u\in U$, $w\in W$ e $u+w=0$, allora $u=w=0$.
>
> L'esistenza è già contenuta nella definizione di $U+W$. La somma diretta aggiunge l'unicità delle componenti.

**Dimostrazione.** Se l'intersezione è nulla e

$$
u+w=u'+w',
$$

allora

$$
u-u'=w'-w.
$$

Il primo membro appartiene a $U$, il secondo a $W$: il vettore comune è nell'intersezione e deve essere zero. Seguono $u=u'$ e $w=w'$. Lo stesso ragionamento, confrontando $u+w=0+0$, dà il criterio della relazione nulla.

Viceversa, se $t\in U\cap W$, il vettore $t$ ha le due decomposizioni $t=t+0=0+t$. L'unicità impone $t=0$. Usando invece il criterio della relazione nulla, basta osservare che $t+(-t)=0$ con $t\in U$ e $-t\in W$: anche qui si ricava $t=0$.

### Quando l'intersezione non è nulla

Possiamo descrivere tutta l'ambiguità, non soltanto trovarne un esempio. Fissiamo

$$
v=u_0+w_0.
$$

Per ogni $t\in U\cap W$,

$$
v=(u_0+t)+(w_0-t).
$$

Gli addendi rimangono nei rispettivi sottospazi e il contributo aggiunto si cancella. Viceversa, se $v=u+w$ è un'altra decomposizione, allora

$$
t:=u-u_0=w_0-w\in U\cap W.
$$

Quindi $u=u_0+t$ e $w=w_0-t$. Le decomposizioni sono esattamente quelle indicate. Su $\mathbb R$ un'intersezione di dimensione positiva dà infinite decomposizioni; su un campo finito di $q$ elementi e con intersezione di dimensione finita $d$, le decomposizioni sono $q^d$. In entrambi i casi l'unicità corrisponde all'intersezione nulla.

**Esempio svolto.** I piani $U=\{z=0\}$ e $W=\{x=0\}$ hanno come intersezione l'asse $y$. Ogni $(a,b,c)$ si scrive

$$
(a,b,c)=(a,s,0)+(0,b-s,c),\qquad s\in\mathbb R.
$$

La somma è tutto $\mathbb R^3$, ma la componente lungo l'asse comune può essere ripartita liberamente. Raggiungere tutto l'ambiente non significa avere una somma diretta.

## Le basi si possono unire senza perdere indipendenza

Se conosciamo una base di $U$ e una di $W$, concatenarle fornisce sempre generatori di $U+W$. Quando rimangono indipendenti?

**Teorema.** Siano

$$
B_U=(u_1,\ldots,u_r),\qquad B_W=(w_1,\ldots,w_s)
$$

basi finite. La famiglia concatenata

$$
B=(u_1,\ldots,u_r,w_1,\ldots,w_s)
$$

è una base di $U+W$ se e solo se $U\cap W=\{0\}$. In questo caso

$$
\dim(U\oplus W)=\dim U+\dim W.
$$

*Passo 1 — La generazione non è il problema.* Ogni vettore della somma è $u+w$; sviluppando $u$ in $B_U$ e $w$ in $B_W$ si ottiene una combinazione dei vettori concatenati.

*Passo 2 — L'intersezione nulla garantisce l'indipendenza.* Consideriamo una relazione

$$
\sum_{i=1}^r\alpha_i u_i+\sum_{j=1}^s\beta_jw_j=0.
$$

Separando i due gruppi,

$$
\sum_{i=1}^r\alpha_i u_i=-\sum_{j=1}^s\beta_jw_j\in U\cap W.
$$

Il vettore comune è zero. L'indipendenza di $B_U$ dà tutti gli $\alpha_i=0$; quella di $B_W$ dà tutti i $\beta_j=0$. La famiglia concatenata è una base.

*Passo 3 — L'indipendenza esclude una parte comune non nulla.* Se $t\in U\cap W$, scriviamo $t$ in entrambe le basi e sottraiamo le espressioni. Otteniamo una relazione sulla famiglia concatenata, che per indipendenza ha tutti i coefficienti nulli. Ne segue $t=0$.

Infine la base concatenata ha $r+s$ elementi: questo dimostra la formula della dimensione, senza presupporla.

> [!warning] Attenzione — Una base richiede due verifiche
> Nella [[_transcripts/Geometria 1/2026-10-13 - Somma diretta e dimensione dei sottospazi|lezione del 13 ottobre]] viene richiamata la necessità di giustificare sia generazione sia indipendenza. Sapere che ciascun gruppo è indipendente non prova che lo siano i gruppi messi insieme: serve controllarne le relazioni reciproche.
> Inoltre, nella prova si concatena una **famiglia**. Se i due sottospazi hanno un vettore di base in comune, un'unione insiemistica ne elimina la ripetizione e può nascondere proprio la dipendenza che dobbiamo riconoscere.

Il ragionamento funziona anche quando uno dei sottospazi è $\{0\}$: la sua base è vuota e non aggiunge vettori. Non occorre che $U+W$ coincida con tutto l'ambiente.

## Grassmann: contare la parte comune una sola volta

Due piani distinti in $\mathbb R^3$ hanno dimensioni $2$ e $2$. La loro somma non può avere dimensione $4$, perché sta in uno spazio di dimensione $3$. Il vettore lungo la retta comune è stato contato due volte.

L'immagine del «doppio conteggio» suggerisce la formula; per provarla dobbiamo individuare una base della somma che contenga la parte comune una sola volta.

> [!abstract] Concetto chiave — Formula di Grassmann
> Se $U,W$ sono sottospazi di dimensione finita dello stesso spazio $V$, allora
> $$
> \dim(U+W)=\dim U+\dim W-\dim(U\cap W).
> $$
> Non è necessario che tutto $V$ abbia dimensione finita: basta che l'abbiano i due sottospazi. La somma è diretta esattamente quando il termine sottratto è zero.

**Dimostrazione mediante basi adattate alla parte comune.** Poniamo

$$
\dim(U\cap W)=k,\qquad \dim U=r,\qquad \dim W=s.
$$

*Passo 1 — Scegliere una sola descrizione della parte comune.* Prendiamo una base

$$
C=(c_1,\ldots,c_k)
$$

di $U\cap W$. Per il completamento di una famiglia indipendente, prolunghiamola separatamente:

$$
B_U=(c_1,\ldots,c_k,u_1,\ldots,u_{r-k}),
$$

$$
B_W=(c_1,\ldots,c_k,w_1,\ldots,w_{s-k}).
$$

Consideriamo la famiglia

$$
B=(c_1,\ldots,c_k,u_1,\ldots,u_{r-k},w_1,\ldots,w_{s-k}).
$$

Contiene $k+(r-k)+(s-k)=r+s-k$ vettori. La parte comune compare una sola volta.

*Passo 2 — Genera la somma.* Dato $v=u+w$, sviluppiamo $u$ in $B_U$ e $w$ in $B_W$. Le due combinazioni usano i vettori di $B$; i coefficienti dei $c_i$ si sommano. Quindi ogni vettore di $U+W$ è generato da $B$.

*Passo 3 — Non ci sono relazioni nascoste.* Supponiamo

$$
\sum_{i=1}^k\gamma_i c_i
+\sum_{j=1}^{r-k}\alpha_j u_j
+\sum_{\ell=1}^{s-k}\beta_\ell w_\ell=0.
$$

Separiamo gli ultimi termini:

$$
z:=\sum_{i=1}^k\gamma_i c_i+\sum_{j=1}^{r-k}\alpha_j u_j
=-\sum_{\ell=1}^{s-k}\beta_\ell w_\ell.
$$

Il membro sinistro sta in $U$, il destro in $W$, dunque $z\in U\cap W$. Esistono quindi coefficienti $\delta_i$ tali che

$$
z=\sum_{i=1}^k\delta_i c_i.
$$

Confrontiamo questa espressione con $z=-\sum_\ell\beta_\ell w_\ell$ **nella base $B_W$**. La prima ha coordinate nulle lungo tutti i $w_\ell$; la seconda ha coordinate nulle lungo tutti i $c_i$. Per unicità delle coordinate, tutti i $\beta_\ell$ e tutti i $\delta_i$ sono zero. Quindi $z=0$.

Rimane

$$
\sum_{i=1}^k\gamma_i c_i+\sum_{j=1}^{r-k}\alpha_j u_j=0.
$$

L'indipendenza di $B_U$ impone $\gamma_i=\alpha_j=0$. Tutti i coefficienti iniziali sono nulli, perciò $B$ è indipendente.

*Passo 4 — Contare la base costruita.* Abbiamo una base di $U+W$ con $r+s-k$ vettori: questa è la formula cercata. Se $k=0$, la base comune è vuota e ritroviamo la prova della somma diretta.

### Leggere la posizione relativa attraverso le dimensioni

Se anche $V$ ha dimensione finita $n$, dalla formula e da $\dim(U+W)\le n$ ricaviamo

$$
\dim(U\cap W)\ge\dim U+\dim W-n.
$$

Il limite va combinato con

$$
0\le\dim(U\cap W)\le\min\{\dim U,\dim W\}.
$$

Per due piani in $\mathbb R^3$ l'intersezione ha dimensione almeno $1$. Se i piani sono distinti, non può avere dimensione $2$: un sottospazio contenuto in un piano e della stessa dimensione coinciderebbe con esso, rendendo i due piani uguali. Quindi l'intersezione è una retta e la somma ha dimensione $3$.

Per un piano e una retta in $\mathbb R^3$ ci sono invece due casi: se la retta sta nel piano, la somma è quel piano; se non vi sta, l'intersezione è nulla e la somma ha dimensione $3$, dunque è tutto $\mathbb R^3$.

Questi conti non sostituiscono le ipotesi. L'uguaglianza di due dimensioni implica l'uguaglianza dei sottospazi soltanto quando uno è contenuto nell'altro e le dimensioni sono finite.

## Un supplementare completa lo spazio

Una somma diretta può occupare soltanto una parte dell'ambiente. Un **supplementare** aggiunge esattamente ciò che manca per raggiungerlo tutto.

**Definizione.** $W$ è un supplementare di $U$ in $V$ se

$$
V=U\oplus W.
$$

La relazione è simmetrica. Richiede contemporaneamente $U+W=V$ e $U\cap W=\{0\}$.

**Teorema di esistenza nel caso finito.** Ogni sottospazio di uno spazio di dimensione finita ammette un supplementare.

Per costruirlo, prendiamo una base $(u_1,\ldots,u_r)$ di $U$ e completiamola a una base di $V$:

$$
(u_1,\ldots,u_r,w_1,\ldots,w_{n-r}).
$$

Poniamo $W=\operatorname{span}(w_1,\ldots,w_{n-r})$. La base intera genera $V$, quindi $U+W=V$. Se un vettore appartiene a entrambi, le sue due espressioni nei due blocchi danno, sottraendole, una relazione sulla base intera; tutti i coefficienti sono nulli. L'intersezione è $\{0\}$. Pertanto

$$
\dim W=\dim V-\dim U.
$$

**Esempio svolto: il supplementare dipende dalla scelta.** Per l'asse $U=\operatorname{span}(e_1)$ nel piano, la retta $W_0=\operatorname{span}(e_2)$ è un supplementare. Lo è anche $W_1=\operatorname{span}(e_1+e_2)$. Per il vettore $(a,b)$ le due decomposizioni sono

$$
(a,b)=ae_1+be_2
=(a-b)e_1+b(e_1+e_2).
$$

Per ciascuna scelta del supplementare le componenti sono uniche, ma cambiando la scelta cambiano le componenti. Non c'è contraddizione: l'unicità riguarda sottospazi fissati.

> [!warning] Attenzione — Dimensioni complementari non bastano
> Controllo redazionale: da $\dim U+\dim W=\dim V$ non segue da solo $V=U\oplus W$. Nel piano, scegliendo $U=W$ uguale a una retta, la somma delle dimensioni è $2$, ma la somma dei sottospazi rimane una retta.
> Con quelle dimensioni, basta invece aggiungere **una** delle due condizioni $U\cap W=\{0\}$ oppure $U+W=V$: Grassmann impone l'altra.

Non è richiesta ortogonalità. Prima di introdurre nozioni di angolo o di distanza, il completamento di una base costruisce già supplementari. Nei casi estremi, $\{0\}$ ha come unico supplementare $V$, e $V$ ha come unico supplementare $\{0\}$.

## Tre o più componenti: controllare la somma degli altri

Con tre comandi, una direzione può essere prodotta combinando gli altri due anche se non coincide con nessuno di essi. Per questo non basta confrontare le componenti a coppie.

Siano $U_1,\ldots,U_m\le V$, con $m\ge1$. La loro somma è

$$
U_1+\cdots+U_m
=\{u_1+\cdots+u_m:u_i\in U_i\}.
$$

La somma si dice **diretta** se ogni vettore ammette un'unica tale decomposizione, e si scrive $U_1\oplus\cdots\oplus U_m$.

La definizione è equivalente al criterio

$$
u_1+\cdots+u_m=0,\quad u_i\in U_i
\quad\Longrightarrow\quad u_1=\cdots=u_m=0.
$$

Se le decomposizioni sono uniche, confrontiamo quella data dello zero con $0+\cdots+0$. Viceversa, sottraendo due decomposizioni dello stesso vettore otteniamo una relazione nulla; il criterio ne annulla separatamente tutti i contributi.

### Un test progressivo

**Teorema.** La somma di $U_1,\ldots,U_m$ è diretta se e solo se

$$
U_i\cap(U_1+\cdots+U_{i-1})=\{0\}
\qquad\text{per }i=2,\ldots,m.
$$

*Necessità.* Se $t\in U_i\cap(U_1+\cdots+U_{i-1})$, possiamo scrivere $t=u_1+\cdots+u_{i-1}$. Portando $t$ dall'altra parte otteniamo una relazione nulla con contributi nei primi $i$ sottospazi; mettiamo a zero quelli successivi. Per il criterio appena dimostrato tutti i contributi sono nulli, in particolare $t=0$.

*Sufficienza.* Prendiamo una relazione $u_1+\cdots+u_m=0$. Allora

$$
u_m=-(u_1+\cdots+u_{m-1})
\in U_m\cap(U_1+\cdots+U_{m-1}).
$$

L'ultima condizione impone $u_m=0$. La relazione si riduce ai primi $m-1$ contributi: la penultima condizione impone $u_{m-1}=0$. Proseguendo a ritroso arriviamo a $u_2=0$ e infine $u_1=0$. Il criterio della relazione nulla prova la somma diretta.

Esiste anche la formulazione simmetrica

$$
U_i\cap\sum_{j\ne i}U_j=\{0\}\qquad\text{per ogni }i.
$$

È necessaria perché un vettore comune produrrebbe una relazione nulla non banale; è sufficiente perché in una relazione nulla ogni $u_i=-\sum_{j\ne i}u_j$ appartiene a quell'intersezione e deve annullarsi. Il caso di un solo sottospazio è incluso usando la somma vuota $\{0\}$.

> [!warning] Attenzione — Intersezioni a due a due nulle non bastano
> Nella [[_transcripts/Geometria 1/2026-11-04 - Sistemi lineari e somme dirette di sottospazi|lezione del 4 novembre sui sistemi e sulle somme dirette]] vengono discusse e respinte sia la sola condizione sull'intersezione totale sia le sole intersezioni a coppie.
> Nel piano le tre rette $\operatorname{span}(e_1)$, $\operatorname{span}(e_2)$, $\operatorname{span}(e_1+e_2)$ hanno intersezioni a coppie nulle, ma $e_1+e_2-(e_1+e_2)=0$ ripartisce lo zero in tre contributi non nulli. Il terzo sottospazio interseca la **somma** dei primi due.

Per tre sottospazi il test progressivo dice

$$
U_1\cap U_2=\{0\},\qquad
(U_1+U_2)\cap U_3=\{0\}.
$$

Quindi possiamo costruire prima $U_1\oplus U_2$ e poi sommarvi direttamente $U_3$. Ogni raggruppamento e ogni ordine danno la stessa nozione, perché il criterio della relazione nulla non dipende dalle parentesi o dall'ordine dei contributi. È questo il contenuto preciso dell'associatività della somma diretta.

### Basi e dimensioni di più componenti

Se i sottospazi hanno dimensione finita e la somma è diretta, concatenando le loro basi otteniamo una base della somma. La generazione si prova sviluppando separatamente i contributi; per l'indipendenza, una relazione sui vettori di base si raggruppa in una relazione $u_1+\cdots+u_m=0$. La direttezza impone ogni $u_i=0$ e l'indipendenza dentro ciascuna base annulla i suoi coefficienti.

Ne segue

$$
\dim(U_1\oplus\cdots\oplus U_m)=\sum_{i=1}^m\dim U_i.
$$

Vale anche il criterio inverso: se la dimensione della somma ordinaria uguaglia la somma delle dimensioni, la concatenazione delle basi è una famiglia generatrice con tanti vettori quant'è la dimensione dello spazio generato. Per il criterio del capitolo 07 è una base. La sua indipendenza, sviluppando una relazione fra contributi nei rispettivi sottospazi, prova che la somma è diretta.

## Costruire decomposizioni dividendo una base

Se il problema chiede di **trovare** sottospazi in somma diretta, controllare molti candidati a caso è spesso inutilmente faticoso. Una base permette di costruire la proprietà fin dall'inizio.

Sia $B=(b_1,\ldots,b_n)$ una base di $V$. Suddividiamone gli indici in gruppi disgiunti $I_1,\ldots,I_m$ che, insieme, contengano tutti gli indici. Poniamo

$$
U_j=\operatorname{span}\{b_i:i\in I_j\}.
$$

Ogni vettore si sviluppa nella base; raggruppando i termini secondo $I_j$ otteniamo una somma di contributi in $U_j$. Quindi $V=U_1+\cdots+U_m$.

Se una somma di contributi è zero, sviluppiamo ciascuno nel proprio blocco. I gruppi disgiunti producono una relazione sulla base completa, e tutti i coefficienti sono nulli. Ogni contributo è zero: la somma è diretta.

La prova richiede soltanto che i vettori iniziali siano indipendenti; se non generano tutto $V$, i loro blocchi decompongono direttamente il loro span. Per ciascun gruppo, i vettori selezionati sono una base di $U_j$, dunque $\dim U_j=|I_j|$.

**Esempio svolto: un vincolo in cinque coordinate.** Consideriamo

$$
H=\{x\in K^5:x_1+2x_2+3x_3+4x_4+5x_5=0\}.
$$

I numeri interi indicano gli elementi del campo ottenuti sommando $1_K$; alcuni possono annullarsi, ma il coefficiente di $x_1$ è sempre $1_K$. Possiamo quindi scrivere

$$
x=x_2b_2+x_3b_3+x_4b_4+x_5b_5,
$$

con

$$
b_2=(-2,1,0,0,0),\quad b_3=(-3,0,1,0,0),
$$

$$
b_4=(-4,0,0,1,0),\quad b_5=(-5,0,0,0,1).
$$

Ogni soluzione si ricostruisce così; ogni vettore indicato soddisfa il vincolo. Inoltre una relazione tra i quattro vettori ha coefficienti nulli leggendo le coordinate $2,3,4,5$. Sono una base di $H$, che ha dimensione $4$.

Possiamo allora scegliere

$$
H_1=\operatorname{span}(b_2,b_3),\qquad
H_2=\operatorname{span}(b_4),\qquad
H_3=\operatorname{span}(b_5).
$$

La partizione della base dimostra subito $H=H_1\oplus H_2\oplus H_3$, con dimensioni $2,1,1$. È la costruzione suggerita dal tipo di problema affrontato nella lezione del 4 novembre; qui tutti i controlli sono esplicitati.

In generale, se vogliamo $m$ sottospazi **non nulli** in somma diretta che esauriscano uno spazio di dimensione $n$, serve $m\le n$: ogni componente contribuisce almeno una dimensione. La condizione è anche sufficiente, perché possiamo dividere una base in $m$ gruppi non vuoti. Per dimensioni prescritte $d_1,\ldots,d_m$, basta e occorre che siano interi non negativi con somma $n$; se si richiedono componenti non nulle, devono essere tutti positivi. Il caso $V=\{0\}$ ammette soltanto componenti nulle.

## Un esempio completo: matrici simmetriche e antisimmetriche

La decomposizione non riguarda soltanto frecce e coordinate. Una matrice può contenere una parte invariata dallo scambio fra righe e colonne e una parte che cambia segno. Separarle significa ancora trovare due sottospazi la cui somma sia tutto lo spazio e la cui intersezione sia nulla.

Per $M=(m_{ij})\in M_{m,n}(K)$, la **trasposta** $M^T\in M_{n,m}(K)$ ha entrate

$$
(M^T)_{ij}=m_{ji}.
$$

Le righe diventano colonne. Dalla definizione seguono

$$
(M^T)^T=M,\qquad
(M+N)^T=M^T+N^T,\qquad
(\lambda M)^T=\lambda M^T,
$$

quando le somme hanno formati compatibili: per esempio, l'entrata $(i,j)$ di entrambi i membri della seconda identità è $m_{ji}+n_{ji}$. Qui non serve ancora il prodotto fra matrici.

Per confrontare $M$ con $M^T$ prendiamo matrici quadrate. Definiamo

$$
\mathcal S_n=\{S\in M_{n,n}(K):S^T=S\},\qquad
\mathcal A_n=\{A\in M_{n,n}(K):A^T=-A\}.
$$

Sono rispettivamente le matrici **simmetriche** e **antisimmetriche**. Entrambi gli insiemi sono sottospazi: contengono la matrice nulla e le identità della trasposta conservano la condizione per somme e multipli. Per esempio,

$$
(A+B)^T=-A-B=-(A+B)
$$

se $A,B$ sono antisimmetriche.

Da qui fino alla discussione finale sulla caratteristica assumiamo

$$
2:=1_K+1_K\ne0.
$$

Essendo $K$ un campo, $2$ è allora invertibile.

### Trovare le componenti e provarne l'unicità

Se cercassimo $M=S+A$ con $S^T=S$ e $A^T=-A$, trasponendo avremmo

$$
M^T=S-A.
$$

Sommare e sottrarre le due uguaglianze isola le componenti:

$$
S=\frac{M+M^T}{2},\qquad
A=\frac{M-M^T}{2}.
$$

Questa deduzione suggerisce le formule, ma dobbiamo ancora verificarne l'esistenza. Le due matrici hanno somma $M$; inoltre

$$
S^T=\frac{M^T+M}{2}=S,\qquad
A^T=\frac{M^T-M}{2}=-A.
$$

Quindi ogni $M$ appartiene a $\mathcal S_n+\mathcal A_n$.

Se $X$ appartiene all'intersezione, soddisfa sia $X^T=X$ sia $X^T=-X$. Ne segue $X=-X$, dunque $2X=0$ e, moltiplicando per $2^{-1}$, $X=0$. La somma è diretta:

$$
M_{n,n}(K)=\mathcal S_n\oplus\mathcal A_n.
$$

La prova dell'intersezione nulla dimostra anche che non può esistere una seconda coppia di componenti. Non abbiamo soltanto trovato una formula utile: abbiamo risolto un problema di esistenza e unicità.

**Esempio svolto.** Su $\mathbb R$ prendiamo

$$
M=\begin{pmatrix}
2&5&-1\\
1&0&4\\
3&-2&6
\end{pmatrix}.
$$

Si ottiene

$$
S=\begin{pmatrix}
2&3&1\\
3&0&1\\
1&1&6
\end{pmatrix},\qquad
A=\begin{pmatrix}
0&2&-2\\
-2&0&3\\
2&-3&0
\end{pmatrix}.
$$

Ogni coppia di entrate speculari di $S$ coincide; in $A$ cambia segno. Sommando entrata per entrata si recupera $M$, compresa la diagonale, che sta tutta nella parte simmetrica.

## Contare le parti di una matrice e controllare il campo

Le dimensioni possono essere lette dalle entrate libere, ma per giustificare il conteggio costruiamo le basi. Indichiamo con $E_{ij}$ la matrice che ha $1$ in posizione $(i,j)$ e zero altrove.

Una base di $\mathcal S_n$ è la famiglia

$$
(E_{ii})_{1\le i\le n},\qquad
(E_{ij}+E_{ji})_{1\le i<j\le n}.
$$

Per generare una matrice simmetrica $S=(s_{ij})$ basta scrivere

$$
S=\sum_{i=1}^n s_{ii}E_{ii}
+\sum_{i<j}s_{ij}(E_{ij}+E_{ji}).
$$

L'espressione è unica: le entrate sulla diagonale determinano i primi coefficienti e quelle sopra la diagonale determinano i rimanenti. Equivale a provare l'indipendenza leggendo quelle stesse entrate in una relazione nulla. Ci sono $n$ posizioni diagonali e $n(n-1)/2$ coppie con $i<j$, dunque

$$
\dim\mathcal S_n=\frac{n(n+1)}2.
$$

Per $A\in\mathcal A_n$, sulla diagonale vale $a_{ii}=-a_{ii}$, cioè $2a_{ii}=0$. Dall'ipotesi $2\ne0$ segue $a_{ii}=0$. Fuori dalla diagonale l'entrata inferiore è l'opposto di quella superiore. Pertanto

$$
A=\sum_{i<j}a_{ij}(E_{ij}-E_{ji}).
$$

Le entrate sopra la diagonale mostrano generazione e unicità dei coefficienti, quindi

$$
(E_{ij}-E_{ji})_{i<j}
$$

è una base e

$$
\dim\mathcal A_n=\frac{n(n-1)}2.
$$

Il conteggio torna con la decomposizione:

$$
\frac{n(n+1)}2+\frac{n(n-1)}2=n^2=\dim M_{n,n}(K).
$$

Per $n=1$ la base antisimmetrica è vuota e il sottospazio è nullo. Per $n=3$ le due dimensioni sono $6$ e $3$.

> [!warning] Attenzione — In caratteristica due il segno meno non separa le parti
> Nella [[_transcripts/Geometria 1/2026-10-13 - Somma diretta e dimensione dei sottospazi|lezione del 13 ottobre]] viene esplicitamente segnalata l'importanza del campo: nel campo con due elementi una matrice simmetrica è anche antisimmetrica.
> Infatti $-a=a$ per ogni scalare, quindi $A^T=-A$ coincide con $A^T=A$. Le due condizioni definiscono lo stesso sottospazio, non due componenti in somma diretta. La diagonale di una matrice antisimmetrica non è obbligata a essere nulla e $1/2$ non esiste.

La definizione usata qui di antisimmetria è precisamente $A^T=-A$. In caratteristica due non le aggiungiamo la condizione di diagonale nulla: sarebbe una definizione diversa. La base e il conteggio di $\mathcal S_n$ restano validi su ogni campo; quelli di $\mathcal A_n$ appena dimostrati e la decomposizione richiedono invece $2\ne0$. Il divisore $2$ nel numero intero $n(n+1)/2$ conta coppie di indici: non è una divisione nel campo e resta sensato anche in caratteristica due.

L'esempio riassume il metodo del capitolo: cercare due tipi di contributi, provare che ogni oggetto si possa ottenere sommando quei contributi e controllare la parte comune per stabilire se la ricostruzione sia unica.

## Fonti

Somma di sottospazi, interpretazione come span, criterio di somma diretta mediante intersezione e unicità, partizione di una famiglia indipendente, basi della somma diretta e formula della dimensione derivano dalla [[Notes/Geometria 1/Lectures/2026-10-13 - Somma diretta e dimensione dei sottospazi|nota del 13 ottobre]] e dalla [[_transcripts/Geometria 1/2026-10-13 - Somma diretta e dimensione dei sottospazi|trascrizione corrispondente]]. La stessa lezione dimostra la formula generale della dimensione attraverso una base dell'intersezione prolungata nei due sottospazi e introduce la decomposizione delle matrici in parte simmetrica e antisimmetrica. I richiami sulla necessità di provare generazione e indipendenza e sul campo con due elementi riformulano osservazioni effettive della lezione.

La nozione di supplementare e la sua non unicità sono riprese dall'apertura della [[Notes/Geometria 1/Lectures/2026-10-22 - Sistemi lineari, nucleo, immagine e rango|nota del 22 ottobre su nucleo, immagine e rango]] e dalla [[_transcripts/Geometria 1/2026-10-22 - Sistemi lineari, nucleo, immagine e rango|relativa trascrizione]]. La costruzione generale mediante completamento di una base è esplicitata usando i risultati del capitolo 07.

Le somme dirette di tre o più sottospazi, la critica alle sole intersezioni a coppie, il criterio progressivo e la costruzione di più componenti partizionando una base riprendono la [[Notes/Geometria 1/Lectures/2026-11-04 - Sistemi lineari e somme dirette di sottospazi|nota del 4 novembre sui sistemi e sulle somme dirette]] e la [[_transcripts/Geometria 1/2026-11-04 - Sistemi lineari e somme dirette di sottospazi|trascrizione]]. L'esempio del sottospazio in cinque coordinate sviluppa il vincolo e la base leggibili in quella fonte; qui il controllo è formulato su un campo generico e non richiede divisioni per gli interi presenti nei coefficienti.

Sono rielaborazioni o completamenti didattici le formulazioni uniformi dei criteri, il conteggio delle decomposizioni sui campi finiti, le basi esplicite degli spazi di matrici, i casi limite e le verifiche dettagliate. Gli ulteriori esempi numerici, tutti gli esercizi e tutti i riscontri sono redazionali. Le formule incerte o con delimitatori incoerenti delle note non sono riprodotte: il libro usa identità verificate, conservando le fonti originali. Per il quadro complessivo: [[Books/Geometria-I/90 - Fonti e criteri editoriali|fonti e criteri editoriali]].

## Riscontri degli esercizi

Apri il riscontro dopo un tentativo scritto. Per una somma diretta, controlla separatamente che i sottospazi generino ciò che dichiari e che le componenti siano uniche. Se usi una dimensione, indica quale base o quale teorema la giustifica.

### Riscontro 1

> [!tip]- Riscontro 1
> Una somma generica è $s(1,0,1)+t(0,1,1)=(s,t,s+t)$. Quindi $U+W=\{(x,y,z):z=x+y\}$: ogni combinazione soddisfa l'equazione e, viceversa, basta scegliere $s=x,t=y$. Nell'intersezione vale $(s,0,s)=(0,t,t)$; la prima coordinata dà $s=0$ e la seconda $t=0$. L'intersezione è nulla e la somma è diretta.
> Non è tutto $\mathbb R^3$: per esempio $(0,0,1)$ non soddisfa l'equazione. Il vettore richiesto è $2(1,0,1)-(0,1,1)$; i due contributi sono $(2,0,2)$ e $(0,-1,-1)$. L'intersezione nulla ne garantisce l'unicità.

Torna a [[#Esercizio 1 — Due direzioni dentro lo spazio (somma e ambiente)|esercizio 1]].

### Riscontro 2

> [!tip]- Riscontro 2
> Le coppie sono $u=(2,s,0)$ e $w=(0,3-s,4)$, per ogni $s\in\mathbb R$. L'intersezione è l'asse $y$: i vettori $(0,s,0)$ possono essere assegnati all'una o all'altra componente. Non ci sono altre coppie, perché la prima coordinata impone $u_1=2$, la terza impone $w_3=4$ e la seconda impone $u_2+w_2=3$.
> In generale, per $t\in U\cap W$, $(u_0+t)+(w_0-t)=v$ e gli addendi rimangono nei rispettivi sottospazi. Viceversa, da $u+w=u_0+w_0$ segue $u-u_0=w_0-w=:t$, che appartiene sia a $U$ sia a $W$. Allora $u=u_0+t$, $w=w_0-t$. Sono state provate entrambe le direzioni.

Torna a [[#Esercizio 2 — Spostare una parte comune (intersezione e unicità)|esercizio 2]].

### Riscontro 3

> [!tip]- Riscontro 3
> L'unione insiemistica ha cancellato una delle due occorrenze di $e_2$. Qui $U\cap W=\operatorname{span}(e_2)\ne\{0\}$ e la somma non è diretta. La famiglia concatenata ha la relazione $0e_1+1e_2-1e_2+0e_3=0$, con coefficienti non tutti nulli.
> Il criterio corretto riguarda la concatenazione delle basi: genera sempre $U+W$ ed è indipendente se e solo se l'intersezione è nulla. Nel verso diretto, separa una relazione nei due blocchi: il vettore comune è nell'intersezione, dunque è zero, e l'indipendenza delle singole basi annulla i coefficienti. Nel verso opposto, sviluppa un vettore dell'intersezione nelle due basi e sottrai: l'indipendenza della concatenazione annulla entrambe le espressioni.

Torna a [[#Esercizio 3 — Un vettore comune scompare dalla lista (basi e concatenazione)|esercizio 3]].

### Riscontro 4

> [!tip]- Riscontro 4
> Un vettore di $W$ è $(a,b,b,a)$ e appartiene a $U$ se e solo se $a=0$. Quindi $U\cap W=\operatorname{span}\{(0,1,1,0)\}$ ha dimensione $1$. I due generatori di $W$ sono indipendenti leggendo prima la quarta e poi la seconda coordinata, dunque $\dim W=2$; $\dim U=3$ dalla base $(e_1,e_2,e_3)$.
> La famiglia $(e_1,e_2,e_3,(1,0,0,1))$ è una base della somma: genera perché contiene una base di $U$ e il secondo generatore di $W$ è $e_2+e_3$; è indipendente leggendo la quarta coordinata e poi le prime tre. Pertanto $U+W=\mathbb R^4$, con dimensione $4=3+2-1$. La somma non è diretta.
> Nella prova generale scegli una base $C$ dell'intersezione e completala con vettori $u_j$ in $U$ e $w_\ell$ in $W$. La famiglia che usa $C$ una sola volta genera la somma. In una relazione nulla, sposta il blocco dei $w_\ell$ a destra: il vettore comune appartiene all'intersezione e quindi ha una rappresentazione usando soltanto $C$. L'unicità nella base di $W$ annulla i coefficienti dei $w_\ell$ e il vettore comune; l'indipendenza della base di $U$ annulla tutti gli altri. Il numero dei vettori è $\dim U+\dim W-\dim(U\cap W)$.

Torna a [[#Esercizio 4 — Due sottospazi occupano quattro coordinate (formula di Grassmann)|esercizio 4]].

### Riscontro 5

> [!tip]- Riscontro 5
> Se $d=\dim(U\cap W)$, Grassmann dà $\dim(U+W)=9-d$. Poiché la somma sta in $V$, $9-d\le7$, dunque $d\ge2$; poiché l'intersezione sta in $U$, $d\le4$. I valori possibili sono $d=2,3,4$, con dimensioni della somma rispettivamente $7,6,5$.
> Per realizzarli, prendi $U=\operatorname{span}(e_1,e_2,e_3,e_4)$ e, per ciascuno dei tre valori di $d$, poni
> $$
> W_d=\operatorname{span}(e_1,\ldots,e_d,e_5,\ldots,e_{9-d}).
> $$
> La famiglia ha $d+(5-d)=5$ vettori di base; quelli comuni a $U$ sono esattamente $e_1,\ldots,e_d$. L'unicità delle coordinate nella base di $V$ prova che l'intersezione non ne contiene altre direzioni.
> La somma delle dimensioni uguale a $\dim V$ non basta. Nello stesso ambiente di dimensione $7$, scegli $U_0=\operatorname{span}(e_1,e_2,e_3)$ e $W_0=\operatorname{span}(e_1,e_2,e_3,e_4)$. Le dimensioni sommano a $7$, ma $U_0\subseteq W_0$ e la somma ha dimensione $4$. Occorre anche l'intersezione nulla oppure, con quel conto, che la somma esaurisca l'ambiente.

Torna a [[#Esercizio 5 — Quanto deve essere grande la parte comune (vincoli dimensionali)|esercizio 5]].

### Riscontro 6

> [!tip]- Riscontro 6
> Un multiplo $s(\alpha,0,1)$ appartiene al piano $U$ solo se la terza coordinata $s$ è zero. L'intersezione è nulla. Ogni $(x,y,z)$ si scrive
> $$
> (x,y,z)=(x-\alpha z,y,0)+z(\alpha,0,1),
> $$
> quindi la somma è tutto l'ambiente. Le due proprietà provano che $W_\alpha$ è supplementare.
> Se $W_\alpha=W_\beta$, il vettore $(\alpha,0,1)$ è un multiplo di $(\beta,0,1)$: la terza coordinata impone multiplo $1$, quindi $\alpha=\beta$. Per $(1,2,3)$ e $\alpha=0$ le componenti sono $(1,2,0)$ e $(0,0,3)$; per $\alpha=2$ sono $(-5,2,0)$ e $(6,0,3)$. Ogni supplementare ha dimensione $3-2=1$, ma le rette appena costruite mostrano che la dimensione non fissa la posizione del sottospazio.

Torna a [[#Esercizio 6 — Molti modi di completare un piano (supplementari)|esercizio 6]].

### Riscontro 7

> [!tip]- Riscontro 7
> Ogni polinomio di grado al più $4$ si separa nella parte costante-lineare e in quella con termini di grado $2,3,4$. Le due parti appartengono ad $A$ e $B$. Se un polinomio appartiene a entrambi, tutti i suoi coefficienti sono nulli: nella prima descrizione quelli di grado almeno $2$ sono zero, nella seconda quelli di grado $0,1$ sono zero. L'intersezione è nulla. Le dimensioni sono $2$ e $3$; le componenti richieste sono $2-t$ e $3t^3$.
> In generale, una partizione della base consente di raggruppare lo sviluppo unico di ogni vettore. Una relazione nulla fra i contributi dei gruppi diventa una relazione sulla base completa, quindi ogni coefficiente e ogni contributo è zero. Non sono richiesti angoli, lunghezze o ortogonalità: bastano generazione e indipendenza.

Torna a [[#Esercizio 7 — Dividere i monomi in gruppi (partizione di una base)|esercizio 7]].

### Riscontro 8

> [!tip]- Riscontro 8
> Nessuna delle tre direzioni è un multiplo di un'altra, dunque le intersezioni a due a due sono nulle; l'intersezione totale, contenuta in ciascuna di esse, è nulla. Tuttavia
> $$
> (1,1)=(1,0)+(0,1)+(0,0)=(0,0)+(0,0)+(1,1)
> $$
> fornisce due decomposizioni diverse. La relazione nulla corrispondente è $(1,0)+(0,1)+(-1,-1)=0$, con ciascun contributo nella propria retta.
> Il criterio progressivo fallisce perché $(L_1+L_2)\cap L_3=\mathbb R^2\cap L_3=L_3\ne\{0\}$. Il conto dimensionale conferma l'ostacolo: tre dimensioni non possono essere indipendenti dentro un piano.

Torna a [[#Esercizio 8 — Tre rette si intralciano (somme dirette multiple)|esercizio 8]].

### Riscontro 9

> [!tip]- Riscontro 9
> I primi due sottospazi hanno intersezione nulla e somma il piano $z=0$. Un vettore $s(1,1,\lambda)$ è in quel piano se e solo se $s\lambda=0$. Per $\lambda\ne0$ questo impone $s=0$: il criterio progressivo prova la somma diretta. Le dimensioni sono $1+1+1=3$, quindi la somma è tutto $\mathbb R^3$.
> In questo caso le componenti di $(a,b,c)$ sono
> $$
> \left(a-\frac c\lambda\right)e_1,\qquad
> \left(b-\frac c\lambda\right)e_2,\qquad
> \frac c\lambda(1,1,\lambda).
> $$
> Per $\lambda=0$ la terza retta sta nella somma delle prime due: la somma rimane il piano $z=0$ e non è diretta. Se $c\ne0$, il vettore non è nemmeno raggiungibile; se $c=0$, le decomposizioni sono $(a-s)e_1+(b-s)e_2+s(1,1,0)$ per ogni $s$. Le intersezioni a coppie sono nulle per ogni $\lambda$ e non distinguono i casi. La divisione è stata effettuata soltanto nel caso $\lambda\ne0$.

Torna a [[#Esercizio 9 — Il terzo contributo dipende da un parametro (criterio progressivo)|esercizio 9]].

### Riscontro 10

> [!tip]- Riscontro 10
> Per $j=2,\ldots,6$ poni $g_j=e_j-e_1$. Isolando $x_1=-\sum_{j=2}^6x_j$, ogni elemento di $D$ si scrive $\sum_{j=2}^6x_jg_j$. Ogni $g_j$ soddisfa il vincolo e le coordinate $2,\ldots,6$ mostrano che una relazione nulla ha tutti i coefficienti nulli. Quindi $(g_2,\ldots,g_6)$ è una base di $D$, di dimensione $5$, su qualunque campo.
> Prendi $D_1=\operatorname{span}(g_2,g_3)$, $D_2=\operatorname{span}(g_4,g_5)$ e $D_3=\operatorname{span}(g_6)$. La partizione della base prova generazione e direttezza; le dimensioni sono $2,2,1$. Sei componenti non nulle in somma diretta avrebbero dimensione totale almeno $6$, impossibile in uno spazio di dimensione $5$.

Torna a [[#Esercizio 10 — Progettare tre componenti non nulle (costruzione di sottospazi)|esercizio 10]].

### Riscontro 11

> [!tip]- Riscontro 11
> Si ottiene
> $$
> S=\begin{pmatrix}1&1\\1&3\end{pmatrix},\qquad
> A=\begin{pmatrix}0&3\\-3&0\end{pmatrix}.
> $$
> Le entrate speculari di $S$ coincidono e quelle di $A$ sono opposte; la loro somma restituisce $M$. Per ricavare le formule nel caso generale, da $M=S+A$ ottieni trasponendo $M^T=S-A$. Sommando e sottraendo risulta $2S=M+M^T$, $2A=M-M^T$. Poiché $2\ne0$, le componenti sono forzate. La verifica delle proprietà mostra che esistono. Se ci fossero due coppie, la differenza delle parti simmetriche sarebbe uguale all'opposto della differenza delle parti antisimmetriche: starebbe nell'intersezione, che è nulla, dunque le coppie coinciderebbero.

Torna a [[#Esercizio 11 — Due parti di una matrice (simmetria e antisimmetria)|esercizio 11]].

### Riscontro 12

> [!tip]- Riscontro 12
> Per le simmetriche usa $E_{ii}$ e $E_{ij}+E_{ji}$ con $i<j$: ogni entrata diagonale e ogni entrata sopra la diagonale sono coefficienti liberi e determinano tutte le altre. La lettura delle stesse posizioni in una relazione nulla prova l'indipendenza. La dimensione è $n+n(n-1)/2=n(n+1)/2$.
> Per le antisimmetriche, l'ipotesi $2\ne0$ impone diagonale nulla; usa $E_{ij}-E_{ji}$, $i<j$. Le entrate superiori determinano unicamente i coefficienti, quindi la dimensione è $n(n-1)/2$.
> Su $\mathbb F_2$ vale $-A=A$, perciò le due condizioni coincidono: $\mathcal A_2=\mathcal S_2$. La matrice $E_{11}\ne0$ appartiene alla loro intersezione. La matrice $E_{12}$ non è simmetrica e non può essere somma di due simmetriche, quindi non appartiene neppure a $\mathcal S_2+\mathcal A_2=\mathcal S_2$. Il simbolo $2$ rappresenta lo zero del campo e non ha inverso: le formule con $1/2$ non sono definite.

Torna a [[#Esercizio 12 — Il due non è sempre invertibile (basi e campo degli scalari)|esercizio 12]].

Il capitolo è acquisito quando sai distinguere la somma dalla somma diretta e dal riempimento dell'ambiente, ricostruire Grassmann partendo dalle basi e progettare componenti con dimensioni assegnate. Per controllare una decomposizione, chiediti sempre se ogni oggetto sia raggiunto e se una relazione nulla possa distribuire contributi non nulli fra i sottospazi.

---

[[Books/Geometria-I/07 - Dimensione scambio e completamento|← 07 · Dimensione scambio e completamento]] · [[Books/Geometria-I/00 - Indice e piano di studio|Indice e piano di studio]] · [[Books/Geometria-I/09 - Matrici e sistemi lineari|09 · Matrici e sistemi lineari →]]
