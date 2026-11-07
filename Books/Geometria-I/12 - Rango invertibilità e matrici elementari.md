# Rango invertibilità e matrici elementari

Prerequisiti: [[Books/Geometria-I/07 - Dimensione scambio e completamento|dimensione e criteri per le basi]], [[Books/Geometria-I/09 - Matrici e sistemi lineari|prodotto e trasposta]], [[Books/Geometria-I/10 - Il metodo di Gauss|riduzione di Gauss]] e [[Books/Geometria-I/11 - Applicazioni lineari nucleo e immagine|nucleo, immagine e rango-nullità]]. Torna all'[[Books/Geometria-I/00 - Indice e piano di studio|indice e piano di studio]].

> [!info] In questo capitolo
> - Capirai perché il **rango** si può leggere nelle colonne, nelle righe e nei pivot, anche se gli spazi coinvolti sono diversi.
> - Riconoscerai quando un sistema è compatibile e quando una matrice quadrata descrive una trasformazione **reversibile**.
> - Tradurrai le mosse di Gauss in prodotti per **matrici elementari** e userai questa lettura per calcolare un'inversa.
> - Distinguerai ciò che conservano le operazioni di riga da ciò che conservano quelle di colonna.
> - Dimostrerai perché la **forma ridotta a scala** è unica, anche quando il procedimento seguito per ottenerla cambia.

## Domande per iniziare dagli esercizi

Prova prima gli esercizi indicati. Se ti manca un passaggio, apri la sezione collegata e torna poi al tentativo. In questo capitolo è particolarmente utile accompagnare ogni uguaglianza di numeri con il nome dello spazio di cui stai calcolando la dimensione. I riscontri sono raccolti in fondo.

| Domanda guida | Esercizi da tentare | Teoria da recuperare |
|---|---|---|
| Quale libertà misura il rango e che cosa significa invertire? | [[#Esercizio 1 — Tre letture dello stesso numero (rango e pivot)\|1]], [[#Esercizio 4 — Essere non nulla non basta (invertibilità)\|4]] | [[#Due misure per la stessa libertà\|Il problema di partenza]] |
| Quando aggiungere il termine noto non cambia lo spazio raggiungibile? | [[#Esercizio 2 — Un termine noto da raggiungere (Rouché-Capelli)\|2]], [[#Esercizio 3 — La dimensione da sola non basta (inclusione)\|3]] | [[#Il rango e la compatibilità\|Il criterio dei ranghi]] |
| Perché una scala con r pivot ha rango r? | [[#Esercizio 1 — Tre letture dello stesso numero (rango e pivot)\|1]] | [[#Perché i pivot misurano il rango\|Rango della scala e invarianza]] |
| Come possono coincidere dimensioni di spazi diversi? | [[#Esercizio 1 — Tre letture dello stesso numero (rango e pivot)\|1]], [[#Esercizio 13 — Lo stesso disegno su campi diversi (campo e rango)\|13]] | [[#Perché righe e colonne danno lo stesso numero\|Uguaglianza dei due ranghi]] |
| Quali condizioni equivalgono all'esistenza di un'inversa? | [[#Esercizio 4 — Essere non nulla non basta (invertibilità)\|4]], [[#Esercizio 6 — Portare due blocchi fino in fondo (inversa con Gauss)\|6]] | [[#Riconoscere una matrice invertibile\|Criteri e inverse da un solo lato]] |
| Quale matrice realizza una mossa e quale la annulla? | [[#Esercizio 5 — Registrare tre mosse (matrici elementari)\|5]] | [[#Le operazioni di riga hanno una matrice\|Costruzione delle elementari]] |
| Perché si deve affiancare l'identità per trovare l'inversa? | [[#Esercizio 6 — Portare due blocchi fino in fondo (inversa con Gauss)\|6]] | [[#Calcolare l'inversa insieme alla riduzione\|Il significato del blocco destro]] |
| Perché gli inversi si moltiplicano in ordine contrario? | [[#Esercizio 7 — Sciogliere un prodotto (ordine degli inversi)\|7]], [[#Esercizio 8 — Un gruppo che non è uno spazio (GL e non commutatività)\|8]], [[#Esercizio 9 — Ricostruire una trasformazione dalle mosse (generazione del gruppo)\|9]] | [[#Il gruppo delle trasformazioni reversibili\|Prodotti, inversi e generazione]] |
| Che cosa cambia se agisco dall'altro lato? | [[#Esercizio 10 — Stesso rango spazi diversi (equivalenza a sinistra e a destra)\|10]] | [[#Cambiare righe e cambiare colonne\|Equivalenze e invarianti]] |
| Perché due riduzioni complete devono dare la stessa matrice? | [[#Esercizio 11 — Due candidate alla forma finale (forma ridotta)\|11]], [[#Esercizio 12 — Ricostruire l'unicità (pivot e spazio delle righe)\|12]] | [[#La forma ridotta è una rappresentante unica\|Esistenza e prova di unicità]] |

## Esercizi per verificare la comprensione

Gli esercizi 1–3 collegano il rango ai sistemi; 4–9 costruiscono e riconoscono le trasformazioni reversibili; 10–13 controllano gli invarianti, l'unicità della forma ridotta e il ruolo del campo. Tutti gli enunciati e i riscontri sono redazionali. Per le domande teoriche scrivi una prova completa, anche se il calcolo suggerisce subito il risultato.

### Esercizio 1 — Tre letture dello stesso numero (rango e pivot)

Sia
$$
A=\begin{pmatrix}
1&2&0&1\\
0&0&1&1\\
1&2&1&2
\end{pmatrix}\in M_{3,4}(\mathbb R).
$$
Trova una forma a scala, il rango e una base dello spazio delle righe. Individua una base dello spazio delle colonne scegliendola fra le colonne originali. Determina inoltre una base del nucleo e verifica rango-nullità.

Ricostruisci la prova generale che le colonne pivot di una matrice a scala sono indipendenti e che generano lo spazio delle colonne. Perché una base dello spazio delle righe non può essere confrontata come insieme con una base dello spazio delle colonne di questa matrice?

Se ti blocchi: [[#Perché i pivot misurano il rango|il rango di una scala]] · [[#Perché righe e colonne danno lo stesso numero|righe e colonne]].

Controllo dopo il tentativo: [[#Riscontro 1|riscontro 1]].

### Esercizio 2 — Un termine noto da raggiungere (Rouché-Capelli)

Per la matrice dell'esercizio 1 e $b=(u,v,w)^T$, stabilisci quando $Ax=b$ è compatibile. In ciascun caso indica il rango di $A$ e quello di $[A\mid b]$. Nei casi compatibili scrivi tutte le soluzioni e il numero di parametri.

Che cosa cambia nel conteggio delle soluzioni se le stesse equazioni sono considerate su un campo con $q$ elementi? Ricostruisci anche la prova generale del criterio dei ranghi, spiegando dove serve un'inclusione fra spazi.

Se ti blocchi: [[#Il rango e la compatibilità|Rouché-Capelli]].

Controllo dopo il tentativo: [[#Riscontro 2|riscontro 2]].

### Esercizio 3 — La dimensione da sola non basta (inclusione)

Uno studente scrive: «Due spazi delle colonne hanno la stessa dimensione; dunque sono uguali». Costruisci un controesempio in $\mathbb R^2$. Spiega perché lo stesso passaggio è invece corretto nella dimostrazione di Rouché-Capelli.

Per un sottospazio finito dimensionale $U\subseteq V$ e un vettore $b\in V$, dimostra direttamente che $b\in U$ se e solo se $U+\operatorname{span}(b)=U$. Se $b\notin U$, di quanto cresce la dimensione?

Se ti blocchi: [[#Il rango e la compatibilità|l'inclusione che autorizza il confronto]].

Controllo dopo il tentativo: [[#Riscontro 3|riscontro 3]].

### Esercizio 4 — Essere non nulla non basta (invertibilità)

Su $\mathbb R$ considera
$$
A=\begin{pmatrix}1&2\\3&5\end{pmatrix},
\qquad
B=\begin{pmatrix}1&2\\2&4\end{pmatrix}.
$$
Decidi quale matrice è invertibile usando Gauss o il nucleo. Per quella invertibile trova l'inversa e verifica entrambi i prodotti; per l'altra esibisci un vettore non nullo annullato.

Per matrici quadrate $C,D\in M_{n,n}(K)$, dimostra che $CD=I_n$ implica anche $DC=I_n$. Spiega perché il risultato non si estende automaticamente a formati rettangolari, usando
$$
L=\begin{pmatrix}1\\0\end{pmatrix},\qquad
R=\begin{pmatrix}1&0\end{pmatrix}.
$$

Se ti blocchi: [[#Riconoscere una matrice invertibile|criteri e ruolo del formato quadrato]].

Controllo dopo il tentativo: [[#Riscontro 4|riscontro 4]].

### Esercizio 5 — Registrare tre mosse (matrici elementari)

Su una matrice reale con tre righe si eseguono, nell'ordine,
$$
R_1\leftrightarrow R_3,\qquad
R_2\longleftarrow-2R_2,\qquad
R_1\longleftarrow R_1+3R_2.
$$
Scrivi le tre matrici elementari $E_1,E_2,E_3$, la matrice complessiva $P=E_3E_2E_1$ e le inverse delle singole mosse. Come si esprime $P^{-1}$?

Dimostra inoltre, per $i\ne j$, che $(I+\lambda E_{ij})^{-1}=I-\lambda E_{ij}$ e indica che cosa si romperebbe ammettendo $i=j$ senza altre condizioni.

Se ti blocchi: [[#Le operazioni di riga hanno una matrice|elementari e inverse]] · [[#Il gruppo delle trasformazioni reversibili|inversa del prodotto]].

Controllo dopo il tentativo: [[#Riscontro 5|riscontro 5]].

### Esercizio 6 — Portare due blocchi fino in fondo (inversa con Gauss)

Su $\mathbb R$ calcola con Gauss l'inversa di
$$
C=\begin{pmatrix}1&1&0\\0&1&1\\1&0&1\end{pmatrix}.
$$
Scrivi le operazioni sull'intera matrice $[C\mid I_3]$. Verifica poi il risultato con una moltiplicazione.

Perché il blocco di destra finale è l'inversa e non soltanto una matrice che ha subito le stesse mosse? Che cosa impedisce di ottenere il blocco sinistro $I_3$ se si parte da una matrice singolare?

Se ti blocchi: [[#Calcolare l'inversa insieme alla riduzione|il significato dei due blocchi]].

Controllo dopo il tentativo: [[#Riscontro 6|riscontro 6]].

### Esercizio 7 — Sciogliere un prodotto (ordine degli inversi)

Siano, su un campo $K$,
$$
S=\begin{pmatrix}1&1\\0&1\end{pmatrix},
\qquad
T=\begin{pmatrix}1&0\\1&1\end{pmatrix}.
$$
Trova $S^{-1}$, $T^{-1}$, $ST$ e $(ST)^{-1}$. Confronta $T^{-1}S^{-1}$ con $S^{-1}T^{-1}$ e spiega perché l'ordine è essenziale anche quando entrambi i prodotti sono definiti.

Dimostra in generale $(AB)^{-1}=B^{-1}A^{-1}$, verificando le due identità richieste. Dimostra anche che $(A^T)^{-1}=(A^{-1})^T$.

Se ti blocchi: [[#Il gruppo delle trasformazioni reversibili|prodotti e inversi]].

Controllo dopo il tentativo: [[#Riscontro 7|riscontro 7]].

### Esercizio 8 — Un gruppo che non è uno spazio (GL e non commutatività)

Verifica che $S,T$ dell'esercizio 7 sono invertibili ma $ST\ne TS$ su qualsiasi campo. Perché questo dimostra la non commutatività di $\mathrm{GL}_n(K)$ per ogni $n\ge2$?

Controlla tutte le proprietà di gruppo per $\mathrm{GL}_n(K)$ e spiega perché, per $n\ge1$, questo insieme non è un sottospazio di $M_{n,n}(K)$. Il problema scompare in caratteristica due? Che cosa succede nel caso $n=1$ rispetto alla commutatività?

Se ti blocchi: [[#Il gruppo delle trasformazioni reversibili|gruppo e spazio vettoriale]].

Controllo dopo il tentativo: [[#Riscontro 8|riscontro 8]].

### Esercizio 9 — Ricostruire una trasformazione dalle mosse (generazione del gruppo)

Riduci a $I_2$ la matrice $A$ dell'esercizio 4 usando, nell'ordine,
$$
R_2\longleftarrow R_2-3R_1,\qquad
R_2\longleftarrow-R_2,\qquad
R_1\longleftarrow R_1-2R_2.
$$
Dalla relazione ottenuta esprimi $A$ come prodotto di matrici elementari e controlla moltiplicando.

Ricostruisci la dimostrazione generale che ogni matrice invertibile è prodotto di elementari. Che cosa significa qui «generare» e perché non si sta parlando di combinazioni lineari?

Se ti blocchi: [[#Il gruppo delle trasformazioni reversibili|generazione mediante le mosse di Gauss]].

Controllo dopo il tentativo: [[#Riscontro 9|riscontro 9]].

### Esercizio 10 — Stesso rango spazi diversi (equivalenza a sinistra e a destra)

Su un campo $K$ siano
$$
A=\begin{pmatrix}1&0\\0&0\end{pmatrix},
\qquad
P=Q=\begin{pmatrix}0&1\\1&0\end{pmatrix}.
$$
Calcola $PA$ e $AQ$, i loro nuclei, le immagini e i ranghi. Quali spazi sono uguali a quelli di $A$?

Può $PA$ essere equivalente a destra ad $A$? Può $AQ$ essere equivalente a sinistra ad $A$? Giustifica usando gli invarianti, senza tentare matrici generiche. Dimostra inoltre le formule $\operatorname{Im}(PA)=P(\operatorname{Im}A)$ e $\ker(AQ)=Q^{-1}(\ker A)$ quando $P,Q$ sono invertibili.

Se ti blocchi: [[#Cambiare righe e cambiare colonne|confrontare gli invarianti]].

Controllo dopo il tentativo: [[#Riscontro 10|riscontro 10]].

### Esercizio 11 — Due candidate alla forma finale (forma ridotta)

Sul campo $K$, riduci completamente
$$
H=\begin{pmatrix}
1&2&1&2\\
2&4&3&5\\
1&2&2&3
\end{pmatrix}.
$$
Quali sono i pivot? Un compagno ottiene
$$
J=\begin{pmatrix}
1&2&0&2\\
0&0&1&1\\
0&0&0&0
\end{pmatrix}.
$$
La sua matrice è ridotta a scala e ha lo stesso rango: può essere comunque il risultato corretto? Esibisci anche un vettore che appartenga al nucleo di una delle due candidate e non all'altro.

Se ti blocchi: [[#La forma ridotta è una rappresentante unica|unicità oltre il solo conteggio]].

Controllo dopo il tentativo: [[#Riscontro 11|riscontro 11]].

### Esercizio 12 — Ricostruire l'unicità (pivot e spazio delle righe)

Sia $R$ una matrice ridotta a scala, con righe non nulle $r_1,\ldots,r_s$ e pivot nelle colonne $j_1<\cdots<j_s$. Per un vettore non nullo chiama **indice iniziale** la posizione della sua prima componente non nulla.

Dimostra che gli indici iniziali dei vettori non nulli dello spazio delle righe di $R$ sono esattamente $j_1,\ldots,j_s$. Dimostra poi che un vettore di quello spazio è determinato dalle sue componenti nelle colonne pivot.

Usa questi due fatti per provare che due matrici ridotte a scala dello stesso formato, ottenute per operazioni di riga dalla stessa matrice, coincidono. Tratta anche il caso di rango zero.

Se ti blocchi: [[#La forma ridotta è una rappresentante unica|la prova di unicità]].

Controllo dopo il tentativo: [[#Riscontro 12|riscontro 12]].

### Esercizio 13 — Lo stesso disegno su campi diversi (campo e rango)

Considera
$$
D=\begin{pmatrix}1&1\\1&-1\end{pmatrix}.
$$
Studia rango, nucleo e invertibilità prima su $\mathbb R$, poi su $\mathbb F_2$. Nel primo campo calcola l'inversa. Nel secondo stabilisci per quali $b=(b_1,b_2)^T$ esistono soluzioni e quante sono.

Uno studente riduce la seconda riga e divide per $-2$, senza specificare il campo. Individua l'ipotesi mancante. L'uguaglianza fra rango per righe e per colonne continua a valere in entrambi i casi?

Se ti blocchi: [[#Perché righe e colonne danno lo stesso numero|un teorema valido su ogni campo]] · [[#Riconoscere una matrice invertibile|rango massimo]].

Controllo dopo il tentativo: [[#Riscontro 13|riscontro 13]].

## Teoria da recuperare

Usa la tabella iniziale per recuperare soltanto il passaggio che serve al tuo tentativo. Terremo separate tre domande: quanti risultati indipendenti si raggiungono, se ogni risultato richiesto è raggiungibile, e se possiamo ricostruire l'ingresso in modo unico.

## Due misure per la stessa libertà

Un sistema può avere molte equazioni e poche informazioni effettive. Per esempio,
$$
\begin{cases}
x_1+x_2=b_1,\\
x_1+2x_2=b_2,\\
2x_1+3x_2=b_3
\end{cases}
$$
contiene una terza equazione il cui membro sinistro è la somma dei primi due. Non basta però cancellarla: il termine noto deve rispettare la stessa relazione. Se $b_3=b_1+b_2$, non aggiunge un vincolo; altrimenti rende il sistema impossibile.

Questa osservazione collega due problemi. Da una parte vogliamo misurare quante direzioni indipendenti possiamo produrre combinando le colonne. Dall'altra vogliamo capire se una trasformazione permette di ricostruire l'ingresso dal risultato. Il rango risponde alla prima domanda; per una matrice quadrata, il rango massimo risponderà anche alla seconda.

Le mosse di Gauss sono già reversibili come operazioni sulle **equazioni**. Questo non significa che la matrice su cui agiamo sia invertibile: possiamo ridurre anche una matrice nulla. Significa che il cambiamento di descrizione ha un ritorno. Vedremo che quel cambiamento è a sua volta una moltiplicazione per una matrice invertibile.

## Il rango e la compatibilità

Per $A\in M_{m,n}(K)$, la funzione $F_A:K^n\to K^m$, $x\mapsto Ax$, ha immagine
$$
\operatorname{Im}A=\operatorname{span}(A_{:1},\ldots,A_{:n}).
$$
Come nel capitolo 11, definiamo il **rango**
$$
\operatorname{rank}A=\dim(\operatorname{Im}A).
$$
È il numero di vettori di una base dello spazio delle colonne. Non è in generale il numero delle colonne: alcune possono essere ridondanti. Per esempio, una matrice con tre colonne uguali non nulle ha rango $1$, mentre una matrice nulla ha rango $0$.

Il sistema $Ax=b$ è compatibile se e solo se $b\in\operatorname{Im}A$. La matrice completa $[A\mid b]$ aggiunge proprio il vettore la cui appartenenza vogliamo controllare.

> [!abstract] Concetto chiave — Teorema di Rouché-Capelli
> Per $A\in M_{m,n}(K)$ e $b\in K^m$,
> $$
> Ax=b\text{ è compatibile}
> \quad\Longleftrightarrow\quad
> \operatorname{rank}A=\operatorname{rank}[A\mid b].
> $$
> Aggiungere il risultato richiesto alle colonne non deve aumentare lo spazio dei risultati raggiungibili.

**Dimostrazione.** Poniamo $U=\operatorname{Im}A$ e $W=\operatorname{Im}[A\mid b]$. Si ha sempre $U\subseteq W$, perché ogni vecchia colonna è ancora presente.

*Passo 1 — Se il sistema è compatibile, i due spazi coincidono.* In questo caso $b$ è già combinazione delle colonne di $A$. In una combinazione che usa anche $b$ possiamo sostituire quella sua espressione e ottenere una combinazione delle sole colonne iniziali. Quindi $W\subseteq U$, e $U=W$; le dimensioni sono uguali.

*Passo 2 — Se i ranghi sono uguali, il sistema è compatibile.* Ora $\dim U=\dim W$ e $U\subseteq W$. Essendo spazi finito dimensionali, il criterio del capitolo 07 dà $U=W$. In particolare $b\in W=U$, perciò esiste una sua rappresentazione mediante le colonne di $A$, ossia una soluzione.

> [!warning] Attenzione — Le dimensioni uguali richiedono un'inclusione
> Due rette distinte del piano hanno entrambe dimensione $1$, ma non sono lo stesso sottospazio. Nel criterio dei ranghi possiamo concludere l'uguaglianza perché lo spazio delle vecchie colonne è **contenuto** in quello delle colonne complete. Questo passaggio è richiamato espressamente nella [[_transcripts/Geometria 1/2026-10-27 - Rango, sistemi lineari e matrici elementari|lezione del 27 ottobre]].

### Esempio svolto: la relazione deve valere anche per i termini noti

Per
$$
A=\begin{pmatrix}1&0\\0&1\\1&1\end{pmatrix}
$$
le colonne $(1,0,1)^T$ e $(0,1,1)^T$ sono indipendenti. La loro combinazione generica è $(u,v,u+v)^T$, quindi il rango è $2$ e
$$
Ax=(b_1,b_2,b_3)^T
\quad\Longleftrightarrow\quad
b_3=b_1+b_2,\qquad x=(b_1,b_2)^T.
$$
Se la relazione vale, la completa ha ancora rango $2$. Se non vale, aggiunge un vettore fuori dal piano delle colonne e il rango diventa $3$. Il criterio dei ranghi raccoglie proprio queste due possibilità.

Per una matrice generale, una volta accertata la compatibilità, tutte le soluzioni sono $x_p+\ker A$. Se il rango è $r$, rango-nullità dà $\dim\ker A=n-r$. Abbiamo così la classificazione:
- se i due ranghi sono diversi, non ci sono soluzioni;
- se sono uguali a $n$, la soluzione è unica;
- se sono uguali a $r<n$, ci sono $n-r$ parametri liberi.

Nell'ultimo caso le soluzioni sono infinite se $K$ è infinito; se $K$ ha $q$ elementi, sono esattamente $q^{n-r}$. La compatibilità va controllata prima di contare i parametri.

## Perché i pivot misurano il rango

Gauss produce una matrice a scala $S$ con $r$ righe non nulle. Indichiamo con $j_1<\cdots<j_r$ le colonne pivot, e con $p_i=s_{i,j_i}\ne0$ il pivot della riga $i$. Non stiamo ancora assumendo che $r$ coincida con il rango: lo dimostriamo.

### Le colonne pivot sono indipendenti

Supponiamo
$$
\lambda_1S_{:j_1}+\cdots+\lambda_rS_{:j_r}=0.
$$
Nella componente $r$, le colonne pivot precedenti hanno valore zero, perché il loro pivot è in una riga più alta e sotto ogni pivot ci sono zeri. Rimane
$$
\lambda_rp_r=0.
$$
Poiché $p_r\ne0$ e $K$ è un campo, $\lambda_r=0$. Nella componente $r-1$, la stessa relazione, dopo aver eliminato il contributo già nullo, dà $\lambda_{r-1}p_{r-1}=0$. Procedendo verso l'alto otteniamo tutti i coefficienti nulli.

La direzione di lettura conta: per le **colonne** pivot si parte dal basso. Le entrate sopra i pivot possono essere non nulle, quindi partire dall'alto non isolerebbe subito il primo coefficiente.

### Le colonne pivot generano tutte le colonne

Sotto la riga $r$, la matrice è nulla. Ogni sua colonna appartiene quindi al sottospazio
$$
H=\{(y_1,\ldots,y_m)^T:y_{r+1}=\cdots=y_m=0\}
=\operatorname{span}(e_1,\ldots,e_r)\subseteq K^m.
$$
Questo spazio ha dimensione $r$. Le $r$ colonne pivot sono indipendenti e appartengono ad $H$: formano dunque una base di $H$. Tutte le altre colonne, essendo in $H$, sono loro combinazioni. Di conseguenza
$$
\operatorname{rank}S=r.
$$
Per $r=0$, $S$ è nulla, il suo spazio delle colonne è $\{0\}$ e il rango è zero: la famiglia vuota è la base appropriata.

### Perché la riduzione conserva il rango

Il rango è stato definito per colonne, mentre Gauss opera sulle righe. Non possiamo limitarci a dire che «lo span non cambia»: quello delle colonne può cambiare. Usiamo invece un fatto già dimostrato:
$$
Ax=0\quad\Longleftrightarrow\quad Sx=0.
$$
Dunque $\ker A=\ker S$. Entrambe le applicazioni hanno dominio $K^n$ e rango-nullità dà
$$
\operatorname{rank}A=n-\dim\ker A
=n-\dim\ker S=\operatorname{rank}S=r.
$$
Abbiamo giustificato il conteggio dei pivot mediante il nucleo, senza presupporre l'uguaglianza fra rango per righe e per colonne.

**Esempio svolto.** Per
$$
C=\begin{pmatrix}
1&2&1&0\\
0&1&1&1\\
1&3&2&1
\end{pmatrix}
$$
la mossa $R_3\leftarrow R_3-R_1-R_2$, eseguibile con due aggiunte successive, porta alla scala
$$
\begin{pmatrix}
1&2&1&0\\
0&1&1&1\\
0&0&0&0
\end{pmatrix}.
$$
Ci sono due pivot, quindi $\operatorname{rank}C=2$ e $\dim\ker C=4-2=2$. Il ragionamento vale su qualunque campo: i pivot esibiti sono $1$ e non richiedono di dividere per $2$.

> [!warning] Attenzione — I pivot indicano posizioni nelle colonne originali
> Le operazioni di riga conservano tutte le relazioni fra colonne: una relazione con coefficienti $x$ è proprio l'equazione $Ax=0$. Perciò le posizioni pivot permettono di estrarre una base dalle **colonne originali**. Non si devono sostituire automaticamente con le nuove colonne a scala, il cui span può essere diverso. Il richiamo è centrale nella [[_transcripts/Geometria 1/2026-11-01 - Indipendenza lineare e basi mediante Gauss|lezione del 1° novembre]]; il procedimento completo sarà ripreso nel [[Books/Geometria-I/13 - Calcolare basi somme e intersezioni|capitolo 13]].

## Perché righe e colonne danno lo stesso numero

Per $A\in M_{m,n}(K)$, lo **spazio delle righe** è lo span dei suoi vettori riga, pensati come elementi con $n$ componenti. Le colonne appartengono invece a $K^m$. Il confronto riguarda i numeri
$$
\dim\operatorname{span}(\text{righe di }A),
\qquad
\dim\operatorname{span}(\text{colonne di }A),
$$
non un'uguaglianza fra i due spazi.

**Teorema.** Per ogni matrice su un campo,
$$
\boxed{\dim\operatorname{span}(\text{righe di }A)=\operatorname{rank}A.}
$$

*Passo 1 — Lo spazio delle righe è conservato da Gauss.* Ogni nuova riga è combinazione delle righe precedenti, quindi il nuovo spazio delle righe è contenuto nel vecchio. Ogni mossa è reversibile: applicando lo stesso ragionamento alla mossa inversa otteniamo l'inclusione opposta. Per una successione di mosse i due spazi restano uguali.

*Passo 2 — Le righe non nulle della scala sono indipendenti.* Siano $s_1,\ldots,s_r$ le righe non nulle di $S$. In una relazione $\sum_i\mu_is_i=0$, guardiamo la prima colonna pivot $j_1$. Solo la prima riga può contribuire, perché tutte quelle successive hanno zero prima del loro pivot. Otteniamo $\mu_1p_1=0$, dunque $\mu_1=0$. Guardando poi $j_2$ troviamo $\mu_2=0$, e così via. Per le **righe** la lettura procede dall'alto.

*Passo 3 — Confrontare i conteggi.* Le righe non nulle di $S$ sono una base del suo spazio delle righe, perciò la sua dimensione è $r$. Lo spazio delle righe di $A$ è uguale a quello di $S$, e abbiamo già dimostrato $\operatorname{rank}A=r$. I due numeri coincidono.

> [!abstract] Concetto chiave — Il rango ha tre letture
> Il rango di una matrice è la dimensione dello spazio delle colonne, la dimensione dello spazio delle righe e il numero dei pivot di una riduzione a scala. L'uguaglianza riguarda la **dimensione**; le operazioni di riga non conservano necessariamente lo spazio delle colonne.

Seguono due conseguenze immediate:
$$
0\le\operatorname{rank}A\le\min\{m,n\},
\qquad
\operatorname{rank}(A^T)=\operatorname{rank}A.
$$
Il primo limite deriva dal fatto che le colonne stanno in $K^m$ e sono $n$ generatori della propria immagine. Per il secondo, le colonne di $A^T$ sono le righe di $A$, scritte verticalmente: il loro spazio ha la stessa dimensione dello spazio delle righe.

Questa non è una proprietà speciale dei reali. Le prove hanno usato soltanto assiomi di campo, reversibilità di Gauss e risultati di dimensione: valgono anche su $\mathbb F_2$. Il valore numerico del rango può però cambiare quando cambia il campo, perché una relazione come $1+1=0$ può comparire in uno e non nell'altro.

## Riconoscere una matrice invertibile

Una matrice quadrata $A\in M_{n,n}(K)$ è **invertibile** se esiste $B\in M_{n,n}(K)$ tale che
$$
AB=BA=I_n.
$$
Le due identità dicono che moltiplicare prima per $A$ e poi per $B$, o nell'altro ordine, riporta ogni vettore al punto di partenza. L'inversa, quando esiste, è unica: se $B,C$ sono entrambe inverse,
$$
B=B(AC)=(BA)C=C.
$$
La indichiamo con $A^{-1}$. Una matrice quadrata non invertibile si dice **singolare**. Il simbolo $A^{-1}$ non significa invertire ciascuna entrata. Una matrice con qualche entrata nulla può essere invertibile; una con tutte le entrate non nulle può non esserlo.

**Teorema dei criteri di invertibilità.** Per $A\in M_{n,n}(K)$ sono equivalenti:
1. $A$ è invertibile;
2. $F_A:K^n\to K^n$ è biettiva;
3. $\ker A=\{0\}$;
4. $\operatorname{rank}A=n$;
5. le colonne di $A$ sono una base di $K^n$;
6. per ogni $b\in K^n$, il sistema $Ax=b$ ha un'unica soluzione;
7. mediante operazioni di riga, $A$ si può ridurre a $I_n$.

Le stesse condizioni equivalgono a dire che le righe sono una base dello spazio dei vettori riga con $n$ componenti. Per capire il teorema conviene vedere i collegamenti, anziché imparare un elenco di sinonimi.

*Passo 1 — L'inversa dà una biiezione.* Se esiste $B$, allora $F_B$ è inversa di $F_A$, perché $B(Ax)=x$ e $A(Bx)=x$. La funzione è biettiva e $Ax=b$ ha necessariamente l'unica soluzione $x=Bb$.

*Passo 2 — Nucleo, rango e basi danno lo stesso criterio.* Dal capitolo 11, l'iniettività equivale a $\ker A=\{0\}$. Rango-nullità, con dominio di dimensione $n$, rende questa condizione equivalente a $\operatorname{rank}A=n$. L'immagine è allora tutto il codominio, anch'esso di dimensione $n$: si ha anche la suriettività. Inoltre le $n$ colonne generano un sottospazio di dimensione $n$, quindi sono una base. Viceversa una base di colonne dà immediatamente rango $n$ e rappresentazioni uniche per ogni $b$.

*Passo 3 — Da una biiezione costruiamo una matrice inversa.* Per ogni vettore canonico $e_j$ troviamo l'unica colonna $b_j$ con $Ab_j=e_j$. Formiamo $B=(b_1\ \cdots\ b_n)$. La regola sulle colonne del prodotto dà $AB=I_n$. Per ottenere anche $BA=I_n$, osserviamo che
$$
A(BAx)=AB(Ax)=Ax.
$$
L'iniettività di $F_A$ impone $BAx=x$ per ogni $x$. Applicando ai vettori canonici, le matrici coincidono: $BA=I_n$. Questo passaggio verifica davvero la seconda identità.

*Passo 4 — Il rango massimo equivale alla riduzione all'identità.* Con rango $n$, una scala quadrata ha $n$ pivot in $n$ colonne: ciascuna colonna è pivot, e il pivot della riga $i$ è in posizione $(i,i)$. Dividiamo ogni riga per il suo pivot non nullo. Poi, partendo dall'ultima riga, annulliamo le entrate sopra il pivot; proseguendo verso l'alto otteniamo $I_n$. Viceversa, se si arriva a $I_n$, l'invarianza del rango dà $\operatorname{rank}A=\operatorname{rank}I_n=n$.

Il criterio sulle righe segue infine dall'uguaglianza fra i due ranghi e dal fatto che ci sono esattamente $n$ righe.

> [!example] Esempi e controesempi — Reversibilità e semplice non nullità
> La matrice $\begin{pmatrix}0&1\\1&0\end{pmatrix}$ è invertibile ed è inversa di sé stessa: scambia due coordinate. La matrice $\begin{pmatrix}1&1\\1&1\end{pmatrix}$ non è invertibile, perché annulla $(1,-1)^T\ne0$ su ogni campo, compreso quello con due elementi. Il fatto che tutte le entrate siano non nulle non aiuta a recuperare l'informazione perduta.

### Perché per le matrici quadrate basta anche un solo lato

Supponiamo $A,B\in M_{n,n}(K)$ e $AB=I_n$. Ogni $y\in K^n$ è $A(By)$: $F_A$ è suriettiva. Essendo un'applicazione fra spazi della stessa dimensione finita, è anche iniettiva. L'argomento del passo 3 dà $BA=I_n$. Se invece sappiamo $BA=I_n$, allora $Ax=0$ implica $x=BAx=0$: l'iniettività dà rango massimo e quindi invertibilità. L'inversa è necessariamente $B$.

> [!warning] Attenzione — Il formato quadrato è un'ipotesi
> La colonna $L=(1,0)^T$ e la riga $R=(1,0)$ soddisfano $RL=I_1$, ma $LR=\begin{pmatrix}1&0\\0&0\end{pmatrix}\ne I_2$. Per matrici rettangolari un ritorno in un verso non garantisce il ritorno nell'altro. Questa cautela è redazionale: nei criteri precedenti dominio e codominio avevano la stessa dimensione.

Per lo stesso motivo, rango massimo significa cose diverse nei formati rettangolari. Se $m>n$ e il rango è $n$, $F_A:K^n\to K^m$ è iniettiva ma non suriettiva; se $m<n$ e il rango è $m$, è suriettiva ma non iniettiva. La semplice frase «ha rango massimo» va accompagnata dal formato e dalla domanda che stiamo ponendo.

## Le operazioni di riga hanno una matrice

Una mossa di Gauss cambia le equazioni, non gli ingressi del sistema. La moltiplicazione a sinistra permette proprio di combinare le **righe**. Se $e_i^T$ è il vettore canonico riga con $1$ nella posizione $i$, allora
$$
e_i^TA=(a_{i1},\ldots,a_{in}),
$$
la riga $i$ di $A$. Una riga della matrice a sinistra stabilisce quindi quali righe di $A$ mescolare.

Una **matrice elementare** è una matrice ottenuta dall'identità mediante una singola operazione elementare di riga. Vediamo le tre possibilità, per matrici con $m$ righe.

### Scambiare due righe

Per $i\ne j$, sia $P_{ij}$ l'identità $I_m$ con le righe $i,j$ scambiate. La sua riga $i$ è $e_j^T$ e la riga $j$ è $e_i^T$, mentre le altre restano quelle dell'identità. Pertanto $P_{ij}A$ scambia esattamente le righe $i,j$ di $A$.

Scambiare due volte riporta alla matrice iniziale:
$$
P_{ij}^2=I_m,\qquad P_{ij}^{-1}=P_{ij}.
$$

### Riscalare una riga

Per $\lambda\ne0$, sia
$$
D_i(\lambda)=\operatorname{diag}(1,\ldots,1,\lambda,1,\ldots,1),
$$
con $\lambda$ in posizione $i$. Moltiplicare a sinistra per $D_i(\lambda)$ sostituisce $R_i$ con $\lambda R_i$. La matrice inversa è
$$
D_i(\lambda)^{-1}=D_i(\lambda^{-1}).
$$
Il prodotto delle diagonali dà $1$ in ogni posizione. Il requisito $\lambda\ne0$ serve sia alla reversibilità della mossa sia all'esistenza dell'inverso nel campo.

### Aggiungere un multiplo di un'altra riga

Indichiamo con $E_{ij}$ la matrice canonica con una sola entrata uguale a $1$. Per $i\ne j$ poniamo
$$
T_{ij}(\lambda)=I_m+\lambda E_{ij},\qquad \lambda\in K.
$$
La riga $i$ è $e_i^T+\lambda e_j^T$, quindi
$$
T_{ij}(\lambda)A
\quad\text{realizza}\quad
R_i\longleftarrow R_i+\lambda R_j.
$$
Le altre righe restano invariate. Non occorre $\lambda\ne0$: anche aggiungere zero volte una riga è una mossa reversibile, che non modifica nulla.

La mossa inversa sottrae lo stesso multiplo:
$$
T_{ij}(\lambda)^{-1}=T_{ij}(-\lambda).
$$
Possiamo controllare il prodotto direttamente. Poiché $i\ne j$, $E_{ij}^2=0$: nella moltiplicazione non si incontra la posizione che permetterebbe un contributo non nullo. Dunque
$$
(I_m+\lambda E_{ij})(I_m-\lambda E_{ij})
=I_m-\lambda^2E_{ij}^2=I_m.
$$
Anche il prodotto inverso dà $I_m$. La condizione $i\ne j$ è essenziale per questa formula.

> [!abstract] Concetto chiave — Gauss come prodotto
> Se le mosse successive sono realizzate da $E_1,\ldots,E_s$, allora
> $$
> S=E_s\cdots E_2E_1A=PA,
> \qquad P=E_s\cdots E_1.
> $$
> Ogni fattore è invertibile. La prima mossa si trova più a destra, perché è la prima applicata ad $A$.

### Lo stesso oggetto a destra agisce sulle colonne

Per $A\in M_{m,n}(K)$, moltiplicare a destra richiede matrici $n\times n$. La formula
$$
(AQ)_{:j}=\sum_{k=1}^n q_{kj}A_{:k}
$$
mostra che la colonna $j$ di $Q$ prescrive la nuova colonna $j$. Una permutazione scambia colonne; una diagonale riscala la colonna corrispondente. Per l'aggiunta conviene controllare gli indici:
$$
A(I_n+\lambda E_{ij})
\quad\text{realizza}\quad
C_j\longleftarrow C_j+\lambda C_i.
$$
A sinistra $I+\lambda E_{ij}$ modifica la **riga $i$** usando la riga $j$; a destra modifica la **colonna $j$** usando la colonna $i$. Il cambio degli indici è una conseguenza della formula del prodotto.

Questa lettura spiega anche perché le inverse delle matrici elementari siano ancora elementari: realizzano le mosse inverse dello stesso tipo.

## Calcolare l'inversa insieme alla riduzione

Se $A$ è quadrata e invertibile, Gauss può portarla a $I_n$. Vorremmo registrare tutte le mosse senza scrivere separatamente un lungo prodotto di elementari. Affiancare l'identità fa esattamente questo.

Partiamo da $[A\mid I_n]$. Se le operazioni successive hanno prodotto complessivo $P$, la matrice diventa
$$
[PA\mid PI_n]=[PA\mid P].
$$
Quando il blocco sinistro è $I_n$, otteniamo $PA=I_n$. Per il criterio sulle matrici quadrate $P=A^{-1}$, dunque
$$
\boxed{[A\mid I_n]\ \longrightarrow\ [I_n\mid A^{-1}].}
$$
Non abbiamo soltanto eseguito mosse simili su due blocchi: il blocco destro ha registrato la matrice **complessiva** delle mosse.

### Esempio svolto: seguire i due blocchi

Sia
$$
A=\begin{pmatrix}1&1\\1&2\end{pmatrix}.
$$
Su qualunque campo, eseguiamo
$$
\left(\begin{array}{cc|cc}
1&1&1&0\\
1&2&0&1
\end{array}\right)
\xrightarrow{R_2\leftarrow R_2-R_1}
\left(\begin{array}{cc|cc}
1&1&1&0\\
0&1&-1&1
\end{array}\right)
\xrightarrow{R_1\leftarrow R_1-R_2}
\left(\begin{array}{cc|cc}
1&0&2&-1\\
0&1&-1&1
\end{array}\right).
$$
Quindi
$$
A^{-1}=\begin{pmatrix}2&-1\\-1&1\end{pmatrix}.
$$
Il controllo diretto è
$$
\begin{pmatrix}1&1\\1&2\end{pmatrix}
\begin{pmatrix}2&-1\\-1&1\end{pmatrix}
=\begin{pmatrix}1&0\\0&1\end{pmatrix};
$$
nell'altro ordine si ottiene ancora $I_2$. Le scritture $2$ e $-1$ indicano elementi del campo: in $\mathbb F_2$ valgono rispettivamente $0$ e $1$, e l'identità continua a essere corretta. Non abbiamo mai diviso per $2$.

Per una matrice singolare, nessuna successione di mosse di riga può trasformare il blocco sinistro in $I_n$, perché il rango è conservato. Non basta fermarsi dopo aver ottenuto qualche pivot e leggere comunque il blocco destro come un'inversa: il criterio richiede che il blocco sinistro sia davvero l'identità.

L'inversa permette di risolvere tutti i sistemi con quella stessa matrice mediante $x=A^{-1}b$. Se però interessa un solo termine noto, risolvere direttamente $[A\mid b]$ può richiedere meno calcoli: il metodo dell'inversa risolve contemporaneamente gli $n$ problemi $Ax=e_j$.

## Il gruppo delle trasformazioni reversibili

Per $n\ge1$ indichiamo con
$$
\mathrm{GL}_n(K)=\{A\in M_{n,n}(K):A\text{ è invertibile}\}
$$
il **gruppo lineare generale**. L'operazione è il prodotto matriciale.

Per giustificare la parola «gruppo» controlliamo le proprietà. Il prodotto è associativo, come dimostrato nel capitolo 09. L'identità $I_n$ è invertibile ed è neutra. Ogni elemento possiede un inverso per definizione; quell'inverso è anch'esso invertibile, con inversa $A$. Rimane la chiusura: il prodotto di due invertibili è ancora invertibile.

### Invertire significa sciogliere i passaggi nell'ordine contrario

Se $A,B$ sono invertibili, allora
$$
\boxed{(AB)^{-1}=B^{-1}A^{-1}.}
$$
Infatti
$$
(AB)(B^{-1}A^{-1})=A(BB^{-1})A^{-1}=I_n
$$
e
$$
(B^{-1}A^{-1})(AB)=B^{-1}(A^{-1}A)B=I_n.
$$
Sono usate associatività e le due identità di inversa, senza scambiare fattori. Questo prova anche la chiusura del gruppo.

Se fai prima $B$ e poi $A$, per tornare indietro devi annullare prima l'ultimo passaggio, cioè applicare $A^{-1}$, e soltanto dopo $B^{-1}$. La regola algebrica coincide con l'ordine delle azioni.

Dalla regola della trasposta segue inoltre
$$
(A^T)^{-1}=(A^{-1})^T.
$$
Trasponendo $AA^{-1}=I_n$ e $A^{-1}A=I_n$ otteniamo infatti entrambi i prodotti richiesti fra le due trasposte.

### Un gruppo generalmente non commutativo

Consideriamo
$$
S=I_2+E_{12}=\begin{pmatrix}1&1\\0&1\end{pmatrix},
\qquad
T=I_2+E_{21}=\begin{pmatrix}1&0\\1&1\end{pmatrix}.
$$
Sono elementari e invertibili su qualunque campo. Però
$$
ST=\begin{pmatrix}2&1\\1&1\end{pmatrix},
\qquad
TS=\begin{pmatrix}1&1\\1&2\end{pmatrix}.
$$
Non sono uguali, perché $2-1=1\ne0$ in ogni campo. Per $n>2$ basta collocare questi blocchi nell'angolo iniziale e mettere $I_{n-2}$ nel blocco restante. Quindi $\mathrm{GL}_n(K)$ non è commutativo per ogni $n\ge2$. Per $n=1$ è invece il gruppo moltiplicativo $K\setminus\{0\}$, che è commutativo.

> [!warning] Attenzione — Il gruppo non è uno spazio vettoriale
> $\mathrm{GL}_n(K)$ è chiuso per **prodotto**, non per tutte le operazioni vettoriali. Per $n\ge1$ non contiene la matrice nulla. Inoltre $I_n$ e $-I_n$ sono invertibili, mentre la loro somma è nulla. Anche in caratteristica due l'esempio funziona: $-I_n=I_n$, ma $I_n+I_n=0$.

### Le elementari generano tutto il gruppo

**Teorema.** Ogni matrice invertibile è prodotto di matrici elementari.

**Dimostrazione.** Riduciamo $A\in\mathrm{GL}_n(K)$ fino a $I_n$, come consentito dal rango massimo:
$$
E_s\cdots E_1A=I_n.
$$
Il prodotto $P=E_s\cdots E_1$ è invertibile, con
$$
P^{-1}=E_1^{-1}\cdots E_s^{-1}.
$$
Moltiplicando a sinistra otteniamo
$$
A=E_1^{-1}\cdots E_s^{-1}.
$$
Ogni inversa elementare è ancora elementare; quindi l'espressione richiesta è trovata. Per l'identità si può anche usare il prodotto vuoto.

La conclusione significa **generazione come gruppo**: gli elementi sono prodotti di mosse elementari. Non stiamo dicendo che ogni invertibile sia una combinazione lineare delle elementari. La distinzione fra le due operazioni è richiamata nella [[_transcripts/Geometria 1/2026-10-27 - Rango, sistemi lineari e matrici elementari|lezione del 27 ottobre]].

## Cambiare righe e cambiare colonne

Siano $A,B\in M_{m,n}(K)$, dello stesso formato. Diciamo che sono **equivalenti a sinistra** se
$$
B=PA\qquad\text{per qualche }P\in\mathrm{GL}_m(K).
$$
Sono **equivalenti a destra** se
$$
B=AQ\qquad\text{per qualche }Q\in\mathrm{GL}_n(K).
$$
Il formato della matrice invertibile è diverso: a sinistra si agisce sui $m$ risultati, a destra sulle $n$ coordinate dell'ingresso.

### Perché sono relazioni di equivalenza

Per l'equivalenza a sinistra:
- la riflessività segue da $A=I_mA$;
- se $B=PA$, allora $A=P^{-1}B$, che prova la simmetria;
- se $B=PA$ e $C=QB$, allora $C=(QP)A$, con $QP$ invertibile, che prova la transitività.

Per quella a destra le stesse verifiche sono $A=AI_n$, $B=AQ\Rightarrow A=BQ^{-1}$ e $B=AQ$, $C=BR\Rightarrow C=A(QR)$. In ciascun caso la matrice che moltiplica ha il formato corretto.

Ogni invertibile è prodotto di elementari. Perciò
$$
B=PA\quad\Longleftrightarrow\quad
B\text{ si ottiene da }A\text{ con mosse elementari di riga},
$$
e
$$
B=AQ\quad\Longleftrightarrow\quad
B\text{ si ottiene da }A\text{ con mosse elementari di colonna}.
$$
Per il secondo verso dell'affermazione sulle colonne, si può usare che una matrice elementare nasce anche da una singola mossa di colonna sull'identità: per le aggiunte gli indici si scambiano come visto sopra.

### A sinistra: stesso nucleo, immagine trasformata

Se $B=PA$ con $P$ invertibile,
$$
Bx=0\quad\Longleftrightarrow\quad PAx=0
\quad\Longleftrightarrow\quad Ax=0.
$$
Quindi $\ker B=\ker A$. Le righe di $B$ sono combinazioni delle righe di $A$ e la relazione inversa dà l'uguaglianza dei loro span.

Per l'immagine si ha invece
$$
\operatorname{Im}(PA)=P(\operatorname{Im}A).
$$
Infatti gli elementi di sinistra sono tutti e soli i vettori $P(Ax)$. L'applicazione invertibile $P$ conserva la dimensione, ma può spostare il sottospazio. Non segue $\operatorname{Im}(PA)=\operatorname{Im}A$.

### A destra: stessa immagine, coordinate del nucleo cambiate

Se $B=AQ$ con $Q$ invertibile, al variare di $x$ il vettore $Qx$ percorre tutto $K^n$. Perciò
$$
\operatorname{Im}(AQ)=\operatorname{Im}A.
$$
Per il nucleo:
$$
x\in\ker(AQ)
\quad\Longleftrightarrow\quad
Qx\in\ker A
\quad\Longleftrightarrow\quad
x\in Q^{-1}(\ker A).
$$
Dunque
$$
\ker(AQ)=Q^{-1}(\ker A).
$$
La dimensione è la stessa, ma i vettori del nucleo non devono essere gli stessi. Nel sistema $AQy=b$, il cambio di incognite $x=Qy$ ricostruisce le soluzioni di $Ax=b$: non si conserva automaticamente lo stesso insieme numerico di soluzioni.

| Operazione | Spazio conservato esattamente | Spazio che può cambiare | Dimensione conservata |
|---|---|---|---|
| $A\mapsto PA$, $P$ invertibile | Nucleo e spazio delle righe | Immagine, trasformata da $P$ | Rango e nullità |
| $A\mapsto AQ$, $Q$ invertibile | Immagine e spazio delle colonne | Nucleo, trasformato da $Q^{-1}$ | Rango e nullità |

**Esempio svolto.** Sia
$$
A=\begin{pmatrix}1&1\\0&0\end{pmatrix},
\qquad P=\begin{pmatrix}0&1\\1&0\end{pmatrix}.
$$
Allora
$$
PA=\begin{pmatrix}0&0\\1&1\end{pmatrix}.
$$
L'immagine di $A$ è l'asse generato da $e_1$, mentre quella di $PA$ è l'asse generato da $e_2$. Il nucleo resta $\{(u,-u)^T:u\in K\}$. Il rango resta $1$. Un cambiamento di righe ha conservato le relazioni fra le colonne e la loro dimensione, non il sottospazio che esse occupano.

Avere soltanto lo stesso rango non garantisce l'equivalenza a sinistra o quella a destra: nel primo caso ci sono anche il nucleo e lo spazio delle righe da conservare; nel secondo, l'immagine. Gli esercizi 10–11 permettono di mettere alla prova questa distinzione senza introdurre ulteriori classificazioni.

## La forma ridotta è una rappresentante unica

Gauss permette scelte diverse: possiamo scambiare righe differenti, scegliere pivot diversi e usare coefficienti intermedi diversi. La matrice a scala ottenuta non è perciò unica. Possiamo però proseguire fino a una forma finale che dipende solo dalla classe per operazioni di riga.

Una matrice è in **forma ridotta a scala** se:
1. è a scala, con le righe nulle in fondo;
2. ogni pivot è uguale a $1$;
3. nella colonna di ogni pivot tutte le altre entrate sono nulle.

Le entrate nelle colonne non pivot non devono essere tutte nulle: registrano le dipendenze fra le colonne e, nei sistemi, la relazione fra variabili pivot e variabili libere.

### Esistenza: completare Gauss dal basso

Partiamo da una scala. Dividiamo ogni riga non nulla per il suo pivot. Poi cominciamo dall'ultimo pivot e sottraiamo multipli della sua riga alle righe superiori, annullando le altre entrate di quella colonna.

Questa riga ha zero in tutte le colonne precedenti al proprio pivot, perciò le sottrazioni non alterano i pivot che si trovano più a sinistra. Passiamo al pivot precedente e ripetiamo. Le colonne pivot già sistemate a destra non si alterano: nella nuova riga attiva quelle entrate sono state azzerate nei passaggi precedenti. Il numero dei pivot è finito, quindi il procedimento termina in una forma ridotta.

Per esempio,
$$
\begin{pmatrix}
1&2&1&0\\
0&1&1&1\\
0&0&0&0
\end{pmatrix}
\xrightarrow{R_1\leftarrow R_1-2R_2}
\begin{pmatrix}
1&0&-1&-2\\
0&1&1&1\\
0&0&0&0
\end{pmatrix}.
$$
Questa forma conserva le informazioni del sistema; non è obbligatorio raggiungerla per risolverlo, ma rende diretta la lettura delle variabili pivot.

### Unicità: le righe finali sono determinate dal loro spazio

Dimostriamo un fatto più preciso: **due matrici ridotte a scala dello stesso formato e con lo stesso spazio delle righe sono uguali**. È una prova di completamento dell'esercizio lasciato nella lezione del 27 ottobre.

Sia $R$ ridotta, con righe non nulle $r_1,\ldots,r_s$ e pivot nelle colonne $j_1<\cdots<j_s$. Indichiamo con $U$ il suo spazio delle righe.

*Passo 1 — Riconoscere le posizioni pivot senza conoscere la matrice.* Per un vettore non nullo, chiamiamo **indice iniziale** la posizione della prima componente non nulla. In una combinazione non nulla
$$
u=\lambda_1r_1+\cdots+\lambda_sr_s,
$$
prendiamo il primo indice $i$ per cui $\lambda_i\ne0$. Le righe con indice minore hanno coefficiente zero. Quelle successive hanno componenti nulle fino al proprio pivot, che si trova dopo $j_i$. La riga $r_i$ ha zero prima di $j_i$ e valore $1$ in $j_i$. Perciò $u$ ha indice iniziale esattamente $j_i$.

Ogni $j_i$ si presenta, scegliendo $u=r_i$. Quindi l'insieme degli indici iniziali dei vettori non nulli di $U$ è precisamente $\{j_1,\ldots,j_s\}$. Le colonne pivot sono determinate dal solo spazio $U$.

*Passo 2 — Riconoscere un vettore dai valori nelle posizioni pivot.* Poiché $R$ è ridotta, la colonna $j_i$ ha valore $1$ nella riga $i$ e $0$ nelle altre. Nello sviluppo $u=\sum_i\lambda_ir_i$ vale dunque
$$
u_{j_i}=\lambda_i.
$$
Le componenti nelle colonne pivot determinano tutti i coefficienti. In particolare, l'unico vettore di $U$ nullo in ogni posizione pivot è il vettore nullo.

*Passo 3 — Confrontare due forme ridotte.* Siano ora $R,S$ ridotte, dello stesso formato e con spazio delle righe $U$. Il passo 1 impone gli stessi indici pivot nello stesso ordine, e lo stesso numero $s$ di righe non nulle. Le righe $r_i,s_i$ hanno le stesse componenti nelle posizioni pivot: $1$ in $j_i$, $0$ nelle altre.

Il vettore $r_i-s_i$ appartiene a $U$ ed è nullo in tutte quelle posizioni. Per il passo 2 è zero: $r_i=s_i$. Le righe restanti sono nulle in entrambe. Quindi $R=S$. Se $U=\{0\}$, tutte le righe sono già nulle e la conclusione è immediata.

> [!abstract] Concetto chiave — Una forma canonica per le operazioni di riga
> Ogni matrice possiede un'unica forma ridotta a scala ottenibile per operazioni di riga. Le scelte del procedimento possono cambiare i passaggi, ma non il risultato finale.

Infatti tutte le riduzioni conservano lo spazio delle righe, quindi la prova appena data si applica ai loro risultati. Due matrici sono equivalenti a sinistra se e solo se hanno la stessa forma ridotta: un verso segue dall'invarianza dello spazio delle righe e dall'unicità; nell'altro, si passa dalla prima matrice alla forma comune e si percorrono a ritroso le mosse della seconda.

L'unicità non dipende dalla grandezza dei coefficienti o dal campo infinito. Dipende dalla struttura delle relazioni lineari. Su un campo fissato, due risultati finali diversi indicano un errore di calcolo o che non è stata raggiunta davvero la forma ridotta.

## Fonti

Il rango come dimensione dello spazio delle colonne, la prova di Rouché-Capelli tramite aggiunta del termine noto, il conteggio dei pivot, l'invarianza del rango attraverso il nucleo e l'uguaglianza fra rango per righe e per colonne riprendono la [[Notes/Geometria 1/Lectures/2026-10-27 - Rango, sistemi lineari e matrici elementari|nota del 27 ottobre]] e la [[_transcripts/Geometria 1/2026-10-27 - Rango, sistemi lineari e matrici elementari|trascrizione corrispondente]]. Dalla stessa lezione provengono matrici elementari, gruppo lineare, generazione mediante elementari, equivalenze a sinistra e a destra e descrizione della forma completamente ridotta. La necessità dell'inclusione nel confronto delle dimensioni e la distinzione fra generazione di gruppo e generazione vettoriale sono richiami effettivi di quella lezione.

La reversibilità delle mosse e la distinzione fra span delle righe e span delle colonne sono contestualizzate nella [[Notes/Geometria 1/Lectures/2026-10-22 - Sistemi lineari e algoritmo di eliminazione di Gauss|nota del 22 ottobre su Gauss]] e nella [[_transcripts/Geometria 1/2026-10-22 - Sistemi lineari e algoritmo di eliminazione di Gauss|relativa trascrizione]]. Il richiamo alle colonne originali nelle posizioni pivot proviene dalla [[Notes/Geometria 1/Lectures/2026-11-01 - Indipendenza lineare e basi mediante Gauss|nota del 1° novembre]] e dalla [[_transcripts/Geometria 1/2026-11-01 - Indipendenza lineare e basi mediante Gauss|trascrizione]]. La proprietà della trasposta usata per l'inversa è sviluppata nel capitolo 09 a partire dalla [[Notes/Geometria 1/Lectures/2026-11-04 - Sistemi lineari e somme dirette di sottospazi|nota del 4 novembre sui sistemi]] e dalla [[_transcripts/Geometria 1/2026-11-04 - Sistemi lineari e somme dirette di sottospazi|trascrizione corrispondente]].

La dimostrazione dell'unicità della forma ridotta è un **completamento didattico** dell'esercizio lasciato il 27 ottobre, non una prova svolta nella trascrizione. Sono stati inoltre esplicitati i criteri equivalenti di invertibilità, il caso delle inverse da un solo lato, il significato di $[A\mid I]$, gli invarianti esatti delle equivalenze e il controesempio alla commutatività valido su ogni campo. Gli esempi numerici, i tredici esercizi e tutti i riscontri sono redazionali. Nessuna nota o trascrizione originale è stata modificata. Per il quadro complessivo: [[Books/Geometria-I/90 - Fonti e criteri editoriali|fonti e criteri editoriali]].

## Riscontri degli esercizi

Apri il riscontro dopo un tentativo. Nei problemi di rango controlla quali spazi stai confrontando; nei prodotti controlla l'ordine; nelle inverse verifica che il blocco sinistro sia diventato l'identità. Per una prova confronta anche i casi e le ipotesi, non soltanto l'ultima formula.

### Riscontro 1

> [!tip]- Riscontro 1
> La mossa $R_3\leftarrow R_3-R_1-R_2$ dà una scala con righe non nulle $(1,2,0,1)$ e $(0,0,1,1)$. I pivot sono nelle colonne $1,3$ e il rango è $2$. Queste due righe formano una base dello spazio delle righe. Una base dell'immagine si prende dalle colonne originali:
> $$
> (1,0,1)^T,\qquad(0,1,1)^T.
> $$
> Dal sistema omogeneo $x_1+2x_2+x_4=0$, $x_3+x_4=0$, ponendo $x_2=s,x_4=t$, si ottiene
> $$
> x=s(-2,1,0,0)^T+t(-1,0,-1,1)^T.
> $$
> Le due direzioni sono indipendenti perché le componenti libere sono rispettivamente $(1,0)$ e $(0,1)$. Quindi $\dim\ker A=2$ e $2+2=4$ verifica rango-nullità.
>
> Per la prova generale, in una relazione fra colonne pivot si legge dal basso e si annullano successivamente i coefficienti. Tutte le colonne appartengono allo spazio dei vettori con zero dopo la riga $r$; questo spazio ha dimensione $r$ e contiene le $r$ colonne pivot indipendenti, che perciò lo generano. Le righe dell'esempio hanno quattro componenti, le colonne tre: i due span stanno in ambienti diversi, anche se hanno dimensione uguale.

Torna a [[#Esercizio 1 — Tre letture dello stesso numero (rango e pivot)|esercizio 1]].

### Riscontro 2

> [!tip]- Riscontro 2
> La terza riga dei coefficienti è la somma delle prime due. Nella completa la stessa riduzione lascia $[0\ 0\ 0\ 0\mid w-u-v]$. Quindi il sistema è compatibile esattamente se $w=u+v$.
>
> Il rango di $A$ è sempre $2$. Se $w=u+v$, anche la completa ha rango $2$ e tutte le soluzioni sono
> $$
> x=(u-2s-t,\ s,\ v-t,\ t)^T,\qquad s,t\in K.
> $$
> Le componenti seconda e quarta rendono i parametri unici. Su un campo con $q$ elementi ci sono $q^2$ soluzioni. Se $w\ne u+v$, la completa ha un terzo pivot, quindi rango $3$ e nessuna soluzione.
>
> In generale, ponendo $U=\operatorname{Im}A$ e $W=\operatorname{Im}[A\mid b]$, si ha $U\subseteq W$. La compatibilità equivale a $b\in U$, cioè a $U=W$. La stessa uguaglianza equivale a $\dim U=\dim W$ proprio grazie all'inclusione e alla dimensione finita.

Torna a [[#Esercizio 2 — Un termine noto da raggiungere (Rouché-Capelli)|esercizio 2]].

### Riscontro 3

> [!tip]- Riscontro 3
> Gli assi $\operatorname{span}(e_1)$ e $\operatorname{span}(e_2)$ in $\mathbb R^2$ hanno dimensione $1$ ma sono distinti. In Rouché-Capelli lo spazio delle colonne di $A$ è contenuto in quello della completa: questa informazione impedisce il controesempio.
>
> Se $b\in U$, ogni $u+\lambda b$ è ancora in $U$, quindi $U+\operatorname{span}(b)=U$. Viceversa, dall'uguaglianza segue che $b$, che appartiene alla somma, è in $U$. Se $b\notin U$, una base $(u_1,\ldots,u_r)$ di $U$ resta indipendente aggiungendo $b$: in una relazione $\sum_i\lambda_i u_i+\mu b=0$, un coefficiente $\mu\ne0$ porterebbe $b\in U$, impossibile; quindi $\mu=0$ e tutti gli altri coefficienti sono nulli. La nuova famiglia genera la somma e la dimensione cresce di uno.

Torna a [[#Esercizio 3 — La dimensione da sola non basta (inclusione)|esercizio 3]].

### Riscontro 4

> [!tip]- Riscontro 4
> Per $A$ la mossa $R_2\leftarrow R_2-3R_1$ lascia il pivot $-1$ nella seconda riga; il rango è $2$ e
> $$
> A^{-1}=\begin{pmatrix}-5&2\\3&-1\end{pmatrix}.
> $$
> I due prodotti con $A$ danno $I_2$: per esempio il primo ha entrate $-5+6=1$, $2-2=0$, $-15+15=0$, $6-5=1$. Nell'altro ordine le stesse verifiche danno ancora la diagonale $1,1$ e zeri altrove.
>
> Per $B$, $B(-2,1)^T=0$ con vettore non nullo; il rango è $1$ e non esiste inversa.
>
> Se $CD=I_n$, ogni $y$ è $C(Dy)$, quindi $C$ è suriettiva e, in dimensione finita uguale, iniettiva. Dall'identità $C(DCx)=Cx$ segue $DCx=x$ per ogni $x$, dunque $DC=I_n$. Per le rettangolari, invece, $RL=I_1$ mentre $LR=\begin{pmatrix}1&0\\0&0\end{pmatrix}\ne I_2$. Il confronto fra dimensioni che rendeva equivalenti iniettività e suriettività non è più disponibile.

Torna a [[#Esercizio 4 — Essere non nulla non basta (invertibilità)|esercizio 4]].

### Riscontro 5

> [!tip]- Riscontro 5
> Le tre matrici, nell'ordine delle mosse, sono
> $$
> E_1=\begin{pmatrix}0&0&1\\0&1&0\\1&0&0\end{pmatrix},\quad
> E_2=\begin{pmatrix}1&0&0\\0&-2&0\\0&0&1\end{pmatrix},\quad
> E_3=\begin{pmatrix}1&3&0\\0&1&0\\0&0&1\end{pmatrix}.
> $$
> Il prodotto complessivo è
> $$
> P=E_3E_2E_1=
> \begin{pmatrix}0&-6&1\\0&-2&0\\1&0&0\end{pmatrix}.
> $$
> Infatti la prima riga finale è la vecchia terza meno sei volte la vecchia seconda. Le inverse sono $E_1$, $D_2(-1/2)$ e $T_{12}(-3)$; quindi $P^{-1}=E_1^{-1}E_2^{-1}E_3^{-1}$.
>
> Per $i\ne j$, $E_{ij}^2=0$ e i termini lineari si cancellano in $(I+\lambda E_{ij})(I-\lambda E_{ij})$, lasciando $I$. Se $i=j$, si avrebbe $E_{ii}^2=E_{ii}$: la stessa formula darebbe $I-\lambda^2E_{ii}$, non in generale $I$. Inoltre $I-E_{ii}$ ha un'entrata diagonale nulla ed è singolare: ammettere $\lambda=-1$ con $i=j$ perderebbe la reversibilità.

Torna a [[#Esercizio 5 — Registrare tre mosse (matrici elementari)|esercizio 5]].

### Riscontro 6

> [!tip]- Riscontro 6
> Da $[C\mid I_3]$ esegui $R_3\leftarrow R_3-R_1$. Il blocco sinistro diventa
> $$
> \begin{pmatrix}1&1&0\\0&1&1\\0&-1&1\end{pmatrix},
> $$
> mentre le righe del blocco destro sono $(1,0,0)$, $(0,1,0)$, $(-1,0,1)$. Poi $R_3\leftarrow R_3+R_2$ dà la terza riga sinistra $(0,0,2)$ e la terza riga destra $(-1,1,1)$.
>
> Dividi $R_3$ per $2$, annulla la terza entrata di $R_2$ con $R_2\leftarrow R_2-R_3$, e infine usa $R_1\leftarrow R_1-R_2$. Si ottiene
> $$
> C^{-1}=\frac12
> \begin{pmatrix}
> 1&-1&1\\
> 1&1&-1\\
> -1&1&1
> \end{pmatrix}.
> $$
> Moltiplicando $C$ per questa matrice, la prima riga del prodotto è la somma delle prime due righe dell'inversa, cioè $(1,0,0)$; la seconda è la somma della seconda e della terza, cioè $(0,1,0)$; la terza è la somma della prima e della terza, cioè $(0,0,1)$. Anche il prodotto inverso dà $I_3$.
>
> Se le mosse hanno prodotto complessivo $P$, i due blocchi sono $[PC\mid P]$. Il blocco sinistro finale $I_3$ prova $PC=I_3$, quindi $P=C^{-1}$. Per una singolare il rango inferiore a $3$ è conservato e impedisce di arrivare all'identità.

Torna a [[#Esercizio 6 — Portare due blocchi fino in fondo (inversa con Gauss)|esercizio 6]].

### Riscontro 7

> [!tip]- Riscontro 7
> Si ha
> $$
> S^{-1}=\begin{pmatrix}1&-1\\0&1\end{pmatrix},\qquad
> T^{-1}=\begin{pmatrix}1&0\\-1&1\end{pmatrix},\qquad
> ST=\begin{pmatrix}2&1\\1&1\end{pmatrix}.
> $$
> Il prodotto nell'ordine corretto è
> $$
> T^{-1}S^{-1}=\begin{pmatrix}1&-1\\-1&2\end{pmatrix}=(ST)^{-1},
> $$
> mentre
> $$
> S^{-1}T^{-1}=\begin{pmatrix}2&-1\\-1&1\end{pmatrix}.
> $$
> Le due matrici differiscono anche in caratteristica due, perché la differenza fra $2$ e $1$ è $1\ne0$.
>
> In generale associatività dà $(AB)(B^{-1}A^{-1})=A(BB^{-1})A^{-1}=I$ e $(B^{-1}A^{-1})(AB)=B^{-1}(A^{-1}A)B=I$. Per la trasposta, trasponi separatamente $AA^{-1}=I$ e $A^{-1}A=I$, invertendo l'ordine dei fattori: ottieni le due identità che rendono $(A^{-1})^T$ inversa di $A^T$.

Torna a [[#Esercizio 7 — Sciogliere un prodotto (ordine degli inversi)|esercizio 7]].

### Riscontro 8

> [!tip]- Riscontro 8
> Le inverse di $S,T$ sono quelle dell'esercizio 7. I prodotti sono $ST=\begin{pmatrix}2&1\\1&1\end{pmatrix}$ e $TS=\begin{pmatrix}1&1\\1&2\end{pmatrix}$; sono diversi perché $2-1=1\ne0$. Per $n>2$ si aggiunge un blocco identità nelle coordinate restanti.
>
> L'associatività vale nel prodotto matriciale; $I_n$ appartiene al gruppo ed è neutro; ogni inversa è ancora invertibile; la chiusura del prodotto segue dalla formula $(AB)^{-1}=B^{-1}A^{-1}$. Queste sono le proprietà di gruppo.
>
> Come sottoinsieme dello spazio delle matrici, $\mathrm{GL}_n(K)$ non contiene zero per $n\ge1$ e non è chiuso per somma: $I_n+(-I_n)=0$. In caratteristica due i due addendi coincidono, ma sono entrambi invertibili e la somma resta non invertibile. Per $n=1$ il gruppo è $K^\times$, commutativo; continua a non essere uno spazio vettoriale con le operazioni ereditate.

Torna a [[#Esercizio 8 — Un gruppo che non è uno spazio (GL e non commutatività)|esercizio 8]].

### Riscontro 9

> [!tip]- Riscontro 9
> Dopo la prima mossa $A$ diventa $\begin{pmatrix}1&2\\0&-1\end{pmatrix}$, dopo la seconda $\begin{pmatrix}1&2\\0&1\end{pmatrix}$, dopo la terza $I_2$. Quindi
> $$
> T_{12}(-2)D_2(-1)T_{21}(-3)A=I_2
> $$
> e, invertendo il prodotto,
> $$
> A=T_{21}(3)D_2(-1)T_{12}(2).
> $$
> Moltiplicando gli ultimi due fattori si ottiene $\begin{pmatrix}1&2\\0&-1\end{pmatrix}$; il fattore $T_{21}(3)$ aggiunge tre volte la prima riga alla seconda, dando $\begin{pmatrix}1&2\\3&5\end{pmatrix}$.
>
> In generale, il rango massimo consente la riduzione $E_s\cdots E_1A=I$. Allora $A=E_1^{-1}\cdots E_s^{-1}$, e ogni fattore è ancora elementare. «Generare» significa scrivere prodotti di elementi del gruppo: non sono presenti somme di matrici con coefficienti scalari, che sarebbero invece combinazioni lineari.

Torna a [[#Esercizio 9 — Ricostruire una trasformazione dalle mosse (generazione del gruppo)|esercizio 9]].

### Riscontro 10

> [!tip]- Riscontro 10
> I prodotti sono
> $$
> PA=\begin{pmatrix}0&0\\1&0\end{pmatrix},\qquad
> AQ=\begin{pmatrix}0&1\\0&0\end{pmatrix}.
> $$
> Per $A$, nucleo e immagine sono rispettivamente $\operatorname{span}(e_2)$ e $\operatorname{span}(e_1)$. Per $PA$ sono $\operatorname{span}(e_2)$ e $\operatorname{span}(e_2)$; per $AQ$ sono $\operatorname{span}(e_1)$ e $\operatorname{span}(e_1)$. Tutti i ranghi sono $1$.
>
> $PA$ non può essere equivalente a destra ad $A$, perché le loro immagini sono diverse. $AQ$ non può essere equivalente a sinistra ad $A$, perché i nuclei sono diversi. Uguale rango non basta per nessuna delle due conclusioni.
>
> La prima formula generale segue scrivendo $\operatorname{Im}(PA)=\{P(Ax):x\in K^n\}=P(\operatorname{Im}A)$. Per la seconda, $AQx=0$ equivale a $Qx\in\ker A$, quindi a $x\in Q^{-1}(\ker A)$. Ogni equivalenza usa l'invertibilità dove è richiesta.

Torna a [[#Esercizio 10 — Stesso rango spazi diversi (equivalenza a sinistra e a destra)|esercizio 10]].

### Riscontro 11

> [!tip]- Riscontro 11
> Esegui $R_2\leftarrow R_2-2R_1$ e $R_3\leftarrow R_3-R_1$: le ultime due righe diventano entrambe $(0,0,1,1)$. Poi annulla la terza riga sottraendo la seconda, e usa $R_1\leftarrow R_1-R_2$. Il risultato è
> $$
> R=\begin{pmatrix}
> 1&2&0&1\\
> 0&0&1&1\\
> 0&0&0&0
> \end{pmatrix}.
> $$
> I pivot sono nelle colonne $1,3$. Anche $J$ è ridotta e ha rango $2$, ma è diversa da $R$: per unicità non può essere un altro risultato della riduzione di $H$.
>
> Come verifica indipendente, $x=(-1,0,-1,1)^T$ soddisfa $Rx=0$, mentre $Jx=(1,0,0)^T\ne0$. Poiché le mosse di riga conservano il nucleo, $J$ non è ottenibile da $H$ tramite quelle mosse. L'argomento vale su qualunque campo: il valore di contrasto è $1\ne0$.

Torna a [[#Esercizio 11 — Due candidate alla forma finale (forma ridotta)|esercizio 11]].

### Riscontro 12

> [!tip]- Riscontro 12
> In $u=\sum_i\lambda_ir_i\ne0$, scegli il primo coefficiente non nullo, $\lambda_h$. Le righe successive iniziano dopo $j_h$, quelle precedenti hanno coefficiente zero: tutte le componenti di $u$ prima di $j_h$ sono nulle e quella in $j_h$ vale $\lambda_h\ne0$. Gli indici iniziali possibili sono quindi i pivot; ogni pivot si realizza prendendo la sua riga.
>
> Inoltre la forma ridotta dà $u_{j_i}=\lambda_i$, perché ogni colonna pivot ha un unico $1$. Le coordinate nelle posizioni pivot determinano dunque $u$.
>
> Due forme ridotte con lo stesso spazio delle righe hanno perciò le stesse posizioni pivot. Le rispettive righe $r_i,s_i$ hanno le stesse entrate in quelle posizioni; $r_i-s_i$ è un vettore dello stesso spazio nullo su tutti i pivot, e quindi è zero. Le righe non nulle coincidono nello stesso ordine; quelle restanti sono tutte nulle. In rango zero l'unica matrice possibile è già la matrice nulla del formato assegnato. Le mosse di riga conservano lo spazio delle righe, quindi la conclusione si applica a tutte le riduzioni della stessa matrice.

Torna a [[#Esercizio 12 — Ricostruire l'unicità (pivot e spazio delle righe)|esercizio 12]].

### Riscontro 13

> [!tip]- Riscontro 13
> Su $\mathbb R$, la mossa $R_2\leftarrow R_2-R_1$ produce $(0,-2)$ nella seconda riga. Il rango è $2$, il nucleo è nullo e
> $$
> D^{-1}=\frac12\begin{pmatrix}1&1\\1&-1\end{pmatrix},
> $$
> come si verifica da $D^2=2I_2$.
>
> Su $\mathbb F_2$, $-1=1$ e le righe coincidono. Il rango è $1$, il nucleo è $\operatorname{span}((1,1)^T)$ e la matrice non è invertibile. L'immagine è lo stesso span di $(1,1)^T$; il sistema è compatibile se e solo se $b_1=b_2$. In quel caso le due soluzioni sono $(b_1,0)^T$ e $(b_1+1,1)^T$; altrimenti non ce ne sono.
>
> Dividere per $-2$ richiede che quell'elemento sia non nullo nel campo. In caratteristica due è zero e non ha inverso. Il teorema che uguaglia i ranghi resta valido: nei reali entrambi valgono $2$, in $\mathbb F_2$ entrambi valgono $1$. Cambia il valore, non la validità del teorema.

Torna a [[#Esercizio 13 — Lo stesso disegno su campi diversi (campo e rango)|esercizio 13]].

Il capitolo è acquisito quando sai giustificare il conteggio dei pivot, dimostrare i criteri di invertibilità e distinguere gli invarianti delle operazioni da sinistra e da destra. Per controllare la comprensione, prova a ricostruire l'unicità della forma ridotta usando soltanto lo spazio delle righe e a spiegare il significato di ogni blocco nell'algoritmo dell'inversa.

---

[[Books/Geometria-I/11 - Applicazioni lineari nucleo e immagine|← 11 · Applicazioni lineari nucleo e immagine]] · [[Books/Geometria-I/00 - Indice e piano di studio|Indice e piano di studio]] · [[Books/Geometria-I/13 - Calcolare basi somme e intersezioni|13 · Calcolare basi somme e intersezioni →]]
