# Calcolare basi somme e intersezioni

Prerequisiti: [[Books/Geometria-I/08 - Somme dirette e decomposizioni|somma, intersezione e formula di Grassmann]], [[Books/Geometria-I/10 - Il metodo di Gauss|riduzione e variabili libere]], [[Books/Geometria-I/11 - Applicazioni lineari nucleo e immagine|nucleo e immagine]] e [[Books/Geometria-I/12 - Rango invertibilità e matrici elementari|rango e operazioni elementari]]. Torna all'[[Books/Geometria-I/00 - Indice e piano di studio|indice e piano di studio]].

> [!info] In questo capitolo
> - Sceglierai fra **equazioni** e **generatori** in base al problema, passando dall'una all'altra descrizione quando serve.
> - Costruirai basi dalle variabili libere ed estrarrai basi dalle **colonne originali** nelle posizioni pivot.
> - Completerai una famiglia indipendente conservando i vettori assegnati e rispettando lo spazio in cui deve stare la base.
> - Calcolerai somme e intersezioni, anche quando entrambi i sottospazi sono dati da generatori.
> - Distinguerai le soluzioni nello **spazio dei coefficienti** dai vettori che esse producono: una ridondanza iniziale può trasformare un vettore di coefficienti non nullo nel vettore nullo.
> - Riutilizzerai gli stessi metodi per polinomi e matrici, verificando appartenenza, indipendenza e completezza.

## Domande per iniziare dagli esercizi

Prova il problema prima di scegliere un algoritmo. Scrivi che cosa è dato, che cosa devi trovare e quale descrizione renderebbe immediata la condizione cercata. Se ti blocchi, recupera soltanto la sezione collegata, poi riprendi il tentativo. I riscontri sono raccolti alla fine.

| Domanda guida | Esercizi da tentare | Teoria da recuperare |
|---|---|---|
| Quando convengono equazioni e quando generatori? | [[#Esercizio 5 — Riconoscere uno spazio senza cercare i coefficienti (generatori ed equazioni)\|5]], [[#Esercizio 6 — Raccogliere senza sovracontare (somma)\|6]], [[#Esercizio 7 — Soddisfare insieme due richieste (intersezione di equazioni)\|7]] | [[#Lo stesso sottospazio può avere due descrizioni\|Scegliere la descrizione]] |
| Perché i vettori ricavati dai parametri formano una base? | [[#Esercizio 1 — Ricostruire le coordinate dipendenti (base di un nucleo)\|1]] | [[#Dalle equazioni a una base\|Parametri e appartenenza]] |
| Quali colonne devi conservare dopo Gauss? | [[#Esercizio 2 — Estrarre dai vettori assegnati (colonne pivot originali)\|2]], [[#Esercizio 3 — Una base dello spazio sbagliato (diagnosi di un errore)\|3]] | [[#Dai generatori a una base\|Relazioni e colonne originali]] |
| Come mantieni i vettori iniziali quando completi una base? | [[#Esercizio 4 — Completare nello spazio giusto (estensione di una famiglia)\|4]] | [[#Completare una famiglia senza perderla\|Completamento nell'ambiente o in un sottospazio]] |
| Come ottieni tutte le condizioni di appartenenza da una matrice di generatori? | [[#Esercizio 5 — Riconoscere uno spazio senza cercare i coefficienti (generatori ed equazioni)\|5]] | [[#Dai generatori alle equazioni\|Compatibilità con un termine noto generico]] |
| Perché unire due basi può produrre una famiglia dipendente? | [[#Esercizio 6 — Raccogliere senza sovracontare (somma)\|6]] | [[#Somme: raccogliere i generatori\|Base della somma e controllo dimensionale]] |
| Come intersechi due sottospazi già descritti da condizioni? | [[#Esercizio 7 — Soddisfare insieme due richieste (intersezione di equazioni)\|7]] | [[#Intersezioni: imporre tutte le condizioni\|Il sistema sovrapposto]] |
| Come fai coincidere due combinazioni lineari senza convertirle prima in equazioni? | [[#Esercizio 8 — Far incontrare due costruzioni (intersezione da generatori)\|8]] | [[#Intersezioni da generatori: far coincidere due costruzioni\|Il nucleo di una matrice a blocchi]] |
| Perché coefficienti indipendenti possono produrre vettori dipendenti? | [[#Esercizio 9 — Una direzione che scompare (generatori ridondanti)\|9]], [[#Esercizio 12 — Quando cambia la descrizione (parametro e ridondanza)\|12]] | [[#Intersezioni da generatori: far coincidere due costruzioni\|La mappa verso l'intersezione]] · [[#Intersecare con un nucleo: usare la restrizione\|Coordinate vere e coefficienti ridondanti]] |
| Come traduci i vincoli su polinomi e matrici in sistemi? | [[#Esercizio 10 — Tre condizioni su un polinomio (valutazioni e derivata)\|10]], [[#Esercizio 11 — La stessa procedura su matrici (basi e campo finito)\|11]] | [[#Intersecare con un nucleo: usare la restrizione\|Nuclei di restrizioni]] · [[#Polinomi e matrici attraverso le coordinate\|Ritornare agli oggetti]] |
| Come controlli la completezza e i valori eccezionali? | [[#Esercizio 9 — Una direzione che scompare (generatori ridondanti)\|9]], [[#Esercizio 12 — Quando cambia la descrizione (parametro e ridondanza)\|12]] | [[#Controllare la risposta prima di fermarsi\|Controlli, parametri e casi limite]] |

## Esercizi per verificare la comprensione

Gli esercizi 1–5 costruiscono le conversioni fondamentali; 6–9 le usano per somme e intersezioni; 10–12 trasferiscono il metodo ad altri oggetti e a situazioni in cui una descrizione perde indipendenza. Gli esercizi e i riscontri sono redazionali. Per una base, una lista di vettori è soltanto il punto di partenza: giustifica appartenenza, generazione e indipendenza.

### Esercizio 1 — Ricostruire le coordinate dipendenti (base di un nucleo)

In $\mathbb R^5$ determina una base di

$$
W=\{x:x_1-x_2+2x_3+x_5=0,\quad x_2+x_3-x_4+2x_5=0\}.
$$

Usa $x_3,x_4,x_5$ come parametri. Spiega perché assegnare un parametro alla volta uguale a $1$ produce una base, mentre prendere direttamente $e_3,e_4,e_5$ non dà in generale vettori di $W$. Quanto vale $\dim W$?

Se ti blocchi: [[#Dalle equazioni a una base|dalle equazioni a una base]].

Controllo dopo il tentativo: [[#Riscontro 1|riscontro 1]].

### Esercizio 2 — Estrarre dai vettori assegnati (colonne pivot originali)

In $\mathbb R^4$ considera

$$
v_1=(1,0,1,0),\quad v_2=(2,0,2,0),\quad
v_3=(0,1,1,0),\quad v_4=(1,1,2,0),\quad v_5=(0,0,0,1).
$$

Estrai una base del loro span scegliendo fra i vettori dati. Indica gli indici pivot, esprimi i vettori scartati mediante quelli conservati e prova che il metodo funziona in generale: perché una relazione nella matrice ridotta ha gli stessi coefficienti nella matrice iniziale?

Se ti blocchi: [[#Dai generatori a una base|colonne pivot e relazioni]].

Controllo dopo il tentativo: [[#Riscontro 2|riscontro 2]].

### Esercizio 3 — Una base dello spazio sbagliato (diagnosi di un errore)

Uno studente riduce la matrice con colonne $u=(1,1,0)$ e $v=(0,1,1)$ a

$$
S=\begin{pmatrix}1&0\\0&1\\0&0\end{pmatrix}
$$

e conclude che $e_1,e_2$ formano una base di $\operatorname{span}(u,v)$. Individua l'errore, trova un'equazione dello span originario e controlla se $e_1,e_2$ vi appartengono. Quali informazioni della matrice ridotta erano invece utilizzabili?

Se ti blocchi: [[#Dai generatori a una base|ritornare alle colonne originali]] · [[#Dai generatori alle equazioni|condizioni di appartenenza]].

Controllo dopo il tentativo: [[#Riscontro 3|riscontro 3]].

### Esercizio 4 — Completare nello spazio giusto (estensione di una famiglia)

I vettori $u=(1,0,1,0)$ e $v=(0,1,0,1)$ sono indipendenti in $\mathbb R^4$. Completali a una base di $\mathbb R^4$ usando alcuni vettori canonici.

Considera poi

$$
H=\{x\in\mathbb R^4:x_1+x_2=x_3+x_4\}.
$$

Completa la stessa coppia a una base di $H$. Perché i vettori aggiunti nel primo completamento potrebbero essere inadatti al secondo? Dimostra che, disponendo una famiglia indipendente prima di una base dell'ambiente, l'estrazione mediante pivot conserva tutti i vettori iniziali.

Se ti blocchi: [[#Completare una famiglia senza perderla|completamento e spazio assegnato]].

Controllo dopo il tentativo: [[#Riscontro 4|riscontro 4]].

### Esercizio 5 — Riconoscere uno spazio senza cercare i coefficienti (generatori ed equazioni)

Su un campo qualsiasi $K$ sia

$$
U=\operatorname{span}\bigl((1,1,0,0),(0,1,1,0),(0,0,1,1)\bigr)\subseteq K^4.
$$

Trova una descrizione di $U$ tramite un'equazione omogenea e dimostra entrambe le inclusioni. Stabilisci se $(1,0,0,1)$ e $(1,0,0,0)$ appartengono a $U$. Quante equazioni linearmente indipendenti occorrono? Spiega il procedimento generale su $[C\mid x]$, precisando quali colonne guidano le operazioni.

Se ti blocchi: [[#Dai generatori alle equazioni|compatibilità con termine noto generico]].

Controllo dopo il tentativo: [[#Riscontro 5|riscontro 5]].

### Esercizio 6 — Raccogliere senza sovracontare (somma)

In $\mathbb R^4$ siano

$$
U=\operatorname{span}\bigl((1,0,1,0),(0,1,1,0)\bigr),
$$

$$
W=\operatorname{span}\bigl((1,1,2,0),(0,0,1,1)\bigr).
$$

Trova una base di $U+W$ e una di $U\cap W$. Verifica la formula di Grassmann. La somma è diretta? L'unione $U\cup W$ è un sottospazio? In ogni risposta indica il motivo e, se serve, un vettore che mostri il problema.

Se ti blocchi: [[#Somme: raccogliere i generatori|somma tramite generatori]] · [[#Controllare la risposta prima di fermarsi|controllo con Grassmann]].

Controllo dopo il tentativo: [[#Riscontro 6|riscontro 6]].

### Esercizio 7 — Soddisfare insieme due richieste (intersezione di equazioni)

In $\mathbb R^4$ poni

$$
U=\{x:x_1-x_2=0,\ x_3+x_4=0\},
\qquad W=\{x:x_1+x_3=0\}.
$$

Trova una base di $U\cap W$ unendo direttamente le equazioni. Determina poi $\dim(U+W)$ senza calcolare una nuova riduzione. È lecito concludere da questa dimensione che $U+W=\mathbb R^4$? Quale inclusione stai usando?

Se ti blocchi: [[#Intersezioni: imporre tutte le condizioni|sovrapporre i sistemi]] · [[#Controllare la risposta prima di fermarsi|dimensione e inclusione]].

Controllo dopo il tentativo: [[#Riscontro 7|riscontro 7]].

### Esercizio 8 — Far incontrare due costruzioni (intersezione da generatori)

In $\mathbb R^4$ siano

$$
u_1=(1,0,1,0),\quad u_2=(0,1,0,1),\quad u_3=(0,0,1,1),
$$

$$
w_1=(1,1,1,1),\quad w_2=(0,0,1,0),\quad w_3=(1,0,0,0).
$$

Poni $U=\operatorname{span}(u_1,u_2,u_3)$ e $W=\operatorname{span}(w_1,w_2,w_3)$. Verifica che le due famiglie sono basi dei rispettivi spazi. Costruisci $T=[C\mid-D]$, risolvi $T(a,b)=0$ e trasforma una base di quel nucleo in una base di $U\cap W$. Giustifica perché in questo caso l'indipendenza dei coefficienti si conserva. Calcola anche $\dim(U+W)$.

Se ti blocchi: [[#Intersezioni da generatori: far coincidere due costruzioni|uguagliare due combinazioni]].

Controllo dopo il tentativo: [[#Riscontro 8|riscontro 8]].

### Esercizio 9 — Una direzione che scompare (generatori ridondanti)

In $\mathbb R^2$ considera $v_1=(1,0)$, $v_2=(2,0)$ e $Z=\{(x,y):x=0\}$. Un vettore $av_1+bv_2$ appartiene a $Z$ se e solo se $a+2b=0$. Il nucleo di questa equazione ha base $(-2,1)$: che vettore produce nello spazio originale? Qual è una base di $\operatorname{span}(v_1,v_2)\cap Z$?

Per due matrici di generatori $C,D$, prova inoltre che la mappa

$$
\Psi:\ker[C\mid-D]\longrightarrow\operatorname{Im}C\cap\operatorname{Im}D,
\qquad \Psi(a,b)=Ca
$$

è suriettiva e ha nucleo $\ker C\times\ker D$. Deduci la formula che corregge la dimensione quando i generatori non sono basi.

Se ti blocchi: [[#Intersezioni da generatori: far coincidere due costruzioni|ridondanza e nucleo della mappa]] · [[#Intersecare con un nucleo: usare la restrizione|coefficienti e vettori]].

Controllo dopo il tentativo: [[#Riscontro 9|riscontro 9]].

### Esercizio 10 — Tre condizioni su un polinomio (valutazioni e derivata)

Nello spazio $\mathbb R[t]_{\le4}$ trova una base di

$$
P=\{p:p(0)=0,\ p(1)=0,\ p'(0)=0\}.
$$

Risolvi prima usando i coefficienti. Poi ritrova una base mediante la divisibilità per $t^2(t-1)$. Le due basi devono essere uguali? Come puoi verificare che descrivono lo stesso sottospazio?

Se ti blocchi: [[#Polinomi e matrici attraverso le coordinate|tradurre i vincoli sugli oggetti]] · [[#Intersecare con un nucleo: usare la restrizione|nuclei di valutazioni]].

Controllo dopo il tentativo: [[#Riscontro 10|riscontro 10]].

### Esercizio 11 — La stessa procedura su matrici (basi e campo finito)

In $M_{2,2}(K)$ siano $U$ il sottospazio delle matrici triangolari superiori, $W$ quello delle matrici simmetriche e

$$
Z=\left\{\begin{pmatrix}a&b\\c&d\end{pmatrix}:a+d=0\right\}.
$$

Trova basi di $U\cap W$, di $U+W$ e di $U\cap W\cap Z$. Giustifica il risultato su un campo qualsiasi, compreso $\mathbb F_2$: non stai usando una divisione per $2$. Quando $K=\mathbb F_2$, quanti elementi hanno questi tre spazi?

Se ti blocchi: [[#Polinomi e matrici attraverso le coordinate|matrici come vettori]] · [[#Controllare la risposta prima di fermarsi|dimensione e campo finito]].

Controllo dopo il tentativo: [[#Riscontro 11|riscontro 11]].

### Esercizio 12 — Quando cambia la descrizione (parametro e ridondanza)

Per $a\in\mathbb R$ considera

$$
U_a=\operatorname{span}\bigl((1,0,0),(1,a,0),(0,0,1)\bigr),
\qquad Z=\{x\in\mathbb R^3:x_1+x_2=0\}.
$$

Determina una base di $U_a$ e una di $U_a\cap Z$ in tutti i casi. Partendo direttamente dai tre generatori, la condizione sui coefficienti è

$$
\lambda+(1+a)\mu=0.
$$

Questo sistema ha due parametri liberi per ogni $a$. Perché non puoi concludere che l'intersezione abbia sempre dimensione $2$? Indica quale vettore prodotto da una base del sistema dei coefficienti si annulla nel caso eccezionale.

Se ti blocchi: [[#Intersecare con un nucleo: usare la restrizione|ridondanza della descrizione]] · [[#Controllare la risposta prima di fermarsi|separare i casi]].

Controllo dopo il tentativo: [[#Riscontro 12|riscontro 12]].

## Teoria da recuperare

Ora gli strumenti dei capitoli precedenti possono lavorare insieme. Non ripeteremo l'intero algoritmo di Gauss: useremo ciò che conserva per scegliere una rappresentazione, ottenere una famiglia candidata e dimostrare che è una base. Ogni conversione verrà giustificata in entrambi i versi.

## Lo stesso sottospazio può avere due descrizioni

Supponi di voler sapere se un vettore del piano appartiene a una retta. Se conosci un suo vettore direttore, puoi cercare un coefficiente che lo produca. Se conosci un'equazione della retta, puoi sostituire le coordinate. La domanda è la stessa, ma il lavoro cambia.

Per un esempio in $\mathbb R^3$, poni

$$
U=\{(x,y,z):x+y-z=0\}.
$$

Isolando $z$ ottieni

$$
(x,y,z)=x(1,0,1)+y(0,1,1).
$$

Possiamo quindi descrivere lo stesso insieme come

$$
U=\operatorname{span}\bigl((1,0,1),(0,1,1)\bigr).
$$

L'equazione è una descrizione **implicita**: controlla una condizione che un vettore deve soddisfare. I generatori danno una descrizione **parametrica**: permettono di costruire tutti i vettori del sottospazio.

Le due inclusioni sono concrete. Ogni soluzione dell'equazione ha la forma parametrica; viceversa ogni combinazione dei due generatori ha terza coordinata uguale alla somma delle prime due. Non basta osservare che i generatori soddisfano l'equazione: quello prova soltanto che lo span è contenuto nell'insieme delle soluzioni.

| Problema | Una descrizione spesso conveniente | Che cosa fare |
|---|---|---|
| Verificare l'appartenenza a un sottospazio | Equazioni | Sostituire le coordinate |
| Costruire vettori del sottospazio | Generatori o base | Scegliere i coefficienti |
| Trovare una base da equazioni | Parametri liberi | Risolvere l'omogenea |
| Calcolare una somma | Generatori | Raccogliere le due famiglie ed estrarre |
| Calcolare un'intersezione | Equazioni, oppure basi dei due spazi | Imporre insieme le condizioni o uguagliare le combinazioni |
| Completare una famiglia indipendente | Generatori dello spazio in cui si lavora | Aggiungerne solo quanto serve |

Queste sono scelte di convenienza, non obblighi. Se entrambi i sottospazi sono dati da generatori, possiamo intersecarli direttamente senza convertirli prima in equazioni. Vedremo perché questa strada è sicura quando teniamo distinti i coefficienti e i vettori.

> [!abstract] Concetto chiave — La descrizione si sceglie in funzione della domanda
> Un sottospazio è un insieme di vettori. Equazioni, generatori e basi sono modi di descriverlo. Possiamo cambiare descrizione conservando l'insieme, purché dimostriamo che i vettori costruiti sono tutti e soli quelli cercati.

Iniziamo da $K^n$. Se gli oggetti sono polinomi, matrici o altri vettori, una base dell'ambiente permette di passare alle coordinate; alla fine dovremo ricostruire gli oggetti originali.

## Dalle equazioni a una base

Sia

$$
W=\{x\in K^n:Ax=0\}=\ker A,
\qquad A\in M_{m,n}(K).
$$

Nel [[Books/Geometria-I/10 - Il metodo di Gauss|capitolo 10]] abbiamo dimostrato che, dopo la riduzione a scala, una scelta delle variabili libere determina una e una sola soluzione. Se il rango è $r$, ci sono $n-r$ variabili libere.

Per ciascuna variabile libera scegli valore $1$ in quella posizione e $0$ nelle altre posizioni libere; poi ricostruisci tutte le coordinate pivot. Ottieni vettori $h_1,\ldots,h_{n-r}$ di $W$.

**Perché generano?** Una soluzione $x$ ha certi valori $t_1,\ldots,t_{n-r}$ nelle posizioni libere. Anche $\sum_jt_jh_j$ risolve l'omogenea e ha gli stessi valori in quelle posizioni. L'unicità della ricostruzione forza l'uguaglianza con $x$.

**Perché sono indipendenti?** In una relazione $\sum_jc_jh_j=0$, la coordinata corrispondente alla $j$-esima variabile libera è proprio $c_j$. Dunque ogni $c_j=0$.

L'indipendenza non deriva dall'aver trovato il numero giusto di vettori per caso: è leggibile nella forma dei parametri. Il procedimento costruisce una base e giustifica

$$
\dim W=n-\operatorname{rank}A.
$$

### Esempio svolto: due equazioni in quattro coordinate

Consideriamo

$$
x_1+2x_2-x_3=0,\qquad x_2+x_3-x_4=0
$$

su $\mathbb R$. Con $x_3=s$ e $x_4=t$, la seconda equazione dà $x_2=-s+t$ e la prima dà $x_1=3s-2t$. Quindi

$$
x=s(3,-1,1,0)+t(-2,1,0,1).
$$

I due vettori appartengono al sottospazio per sostituzione. Generano per la parametrizzazione; sono indipendenti perché i coefficienti si leggono nelle posizioni $3$ e $4$. Abbiamo una base, non soltanto una famiglia contenuta nel sottospazio.

### L'esempio della lezione in cinque coordinate

Nella [[_transcripts/Geometria 1/2026-11-04 - Sistemi lineari e somme dirette di sottospazi|lezione del 4 novembre]] viene discusso

$$
W=\{x\in\mathbb R^5:x_1+2x_2+3x_3+4x_4+5x_5=0\}.
$$

Scegliamo liberamente $x_2,x_3,x_4,x_5$ e ricostruiamo

$$
x_1=-2x_2-3x_3-4x_4-5x_5.
$$

Ne segue la base

$$
\begin{aligned}
b_2&=(-2,1,0,0,0),& b_3&=(-3,0,1,0,0),\\
b_4&=(-4,0,0,1,0),& b_5&=(-5,0,0,0,1).
\end{aligned}
$$

L'ultima coordinata libera distingue $b_5$, la precedente distingue $b_4$, e così via; più direttamente, nelle posizioni $2,3,4,5$ le quattro colonne formano un'identità. La dimensione è $4$.

> [!warning] Attenzione — Prima di proporre una base controlla l'appartenenza
> Nella stessa lezione viene corretta la proposta di usare direttamente la base canonica di $\mathbb R^5$: per esempio $e_1$ non soddisfa l'equazione, perché il primo membro vale $1$. La base canonica dello **spazio dei parametri** $\mathbb R^4$ è utile per costruire i quattro vettori, ma ogni scelta libera deve essere riportata nelle cinque coordinate dell'ambiente.

Controllare l'appartenenza è economico e viene prima di ogni calcolo di indipendenza. Una famiglia indipendente fuori da $W$ non può essere una base di $W$.

## Dai generatori a una base

Supponiamo ora di conoscere

$$
U=\operatorname{span}(v_1,\ldots,v_k),
\qquad v_j\in K^n.
$$

Disponiamo i vettori come **colonne**:

$$
C=[v_1\ \cdots\ v_k]\in M_{n,k}(K).
$$

Una relazione fra i generatori è $C\lambda=0$. Riducendo per righe otteniamo $S=PC$, con $P$ invertibile. Allora

$$
S\lambda=0
\iff PC\lambda=0
\iff C\lambda=0.
$$

Gli stessi coefficienti danno una relazione nulla prima e dopo la riduzione. Non stiamo affermando che $S\lambda=C\lambda$; stiamo usando soltanto l'equivalenza del loro annullarsi.

**Teorema di estrazione.** Se $j_1,\ldots,j_r$ sono gli indici delle colonne pivot di $S$, allora

$$
(v_{j_1},\ldots,v_{j_r})
$$

è una base di $U$. I vettori da prendere sono le colonne di $C$, non quelle di $S$.

*Passo 1 — Trasferire l'indipendenza.* Le colonne pivot di una matrice a scala sono indipendenti, come dimostrato nel [[Books/Geometria-I/12 - Rango invertibilità e matrici elementari|capitolo 12]]. Se una combinazione delle corrispondenti colonne di $C$ è nulla, moltiplicando per $P$ otteniamo la stessa combinazione delle colonne pivot di $S$. Tutti i coefficienti sono quindi nulli.

*Passo 2 — Trasferire la generazione.* Ogni colonna $S_j$ si esprime come combinazione delle colonne pivot:

$$
S_j=\sum_{\ell=1}^r c_\ell S_{j_\ell}.
$$

Portando tutto a sinistra otteniamo una relazione fra colonne di $S$. Gli stessi coefficienti danno una relazione fra colonne di $C$:

$$
v_j=\sum_{\ell=1}^r c_\ell v_{j_\ell}.
$$

Quindi tutti i generatori iniziali appartengono allo span della famiglia estratta. La famiglia estratta è contenuta in quella iniziale: le due inclusioni degli span danno l'uguaglianza.

> [!warning] Attenzione — Gli indici si leggono nella scala, i vettori si prendono all'inizio
> È una cautela esplicita della [[_transcripts/Geometria 1/2026-11-01 - Indipendenza lineare e basi mediante Gauss|lezione del 1° novembre]]. Le operazioni di riga possono cambiare lo span delle colonne come sottoinsieme di $K^n$. Usare le nuove colonne darebbe una base dell'immagine trasformata, che può essere un altro sottospazio. A essere conservati sono i coefficienti delle relazioni.

### Esempio svolto: scegliere tre vettori da cinque

In $\mathbb R^4$ prendiamo

$$
\begin{aligned}
v_1&=(1,1,0,0),&v_2&=(0,1,1,0),&v_3&=(1,2,1,0),\\
v_4&=(0,0,0,1),&v_5&=(1,1,0,1).
\end{aligned}
$$

La matrice dei generatori è

$$
C=\begin{pmatrix}
1&0&1&0&1\\
1&1&2&0&1\\
0&1&1&0&0\\
0&0&0&1&1
\end{pmatrix}.
$$

Eseguiamo $R_2\leftarrow R_2-R_1$, poi $R_3\leftarrow R_3-R_2$, usando la seconda riga già aggiornata, e scambiamo le ultime due righe. Otteniamo

$$
S=\begin{pmatrix}
1&0&1&0&1\\
0&1&1&0&0\\
0&0&0&1&1\\
0&0&0&0&0
\end{pmatrix}.
$$

Gli indici pivot sono $1,2,4$. Una base è dunque $(v_1,v_2,v_4)$, con vettori originali. Le relazioni sono anche visibili:

$$
v_3=v_1+v_2,\qquad v_5=v_1+v_4.
$$

La terza e la quinta colonna potevano essere scartate senza restringere lo span. La dimensione è $3$, benché la lista iniziale contenga cinque vettori.

Se tutti i generatori sono nulli, il rango è zero e non si sceglie alcuna colonna: la base estratta è la famiglia vuota di $\{0\}$. Anche una lista di generatori iniziale vuota genera proprio $\{0\}$, per la convenzione della somma vuota.

### Usare coordinate per oggetti diversi dalle tuple

Se $v_j$ sono polinomi o matrici, scegliamo una base dell'ambiente e mettiamo in colonna le loro coordinate. L'isomorfismo delle coordinate conserva le relazioni lineari, quindi gli indici pivot selezionano una base fra gli **oggetti originari**. Il risultato finale deve essere scritto come famiglia di polinomi o di matrici, non lasciato come elenco di colonne numeriche senza indicare la base usata.

## Completare una famiglia senza perderla

Estrarre significa eliminare ridondanze da una famiglia che genera già lo spazio cercato. Completare significa partire da una famiglia indipendente e aggiungere vettori fino a generare lo spazio assegnato.

Siano $u_1,\ldots,u_k$ indipendenti in $K^n$. Consideriamo

$$
C=[u_1\ \cdots\ u_k\ e_1\ \cdots\ e_n].
$$

Questa famiglia genera $K^n$, perché contiene l'intera base canonica. Riduciamo per righe, senza cambiare l'ordine delle colonne, ed estraiamo i vettori originali nelle posizioni pivot.

**Perché i primi $k$ vettori restano?** Il sottoblocco delle prime $k$ colonne ha rango $k$, perché quelle colonne sono indipendenti. Le operazioni di riga non cambiano le loro relazioni. Nella scala finale quelle prime $k$ colonne devono quindi contenere $k$ pivot: se una fosse priva di pivot, il loro rango sarebbe minore di $k$. Per la forma a scala, i pivot delle prime $k$ colonne non possono dipendere da colonne successive.

L'estrazione conserva dunque tutti gli $u_j$ e aggiunge alcuni vettori canonici. Alla fine si ottiene una base di $K^n$, con esattamente $n$ vettori.

**Esempio svolto.** In $\mathbb R^4$ parti da

$$
u_1=(1,1,0,0),\qquad u_2=(0,1,1,0).
$$

Aggiungi $e_1$. Una relazione

$$
a u_1+b u_2+c e_1=0
$$

ha terza coordinata $b=0$, seconda coordinata $a+b=0$, poi prima coordinata $a+c=0$: tutti i coefficienti sono nulli. I tre vettori sono indipendenti.

I vettori $e_2=u_1-e_1$ ed $e_3=u_2-u_1+e_1$ non aggiungono direzioni; $e_4$ invece ha quarta coordinata non nulla, mentre i precedenti hanno quarta coordinata zero. Quindi

$$
(u_1,u_2,e_1,e_4)
$$

è una base di $\mathbb R^4$ che completa la famiglia assegnata. Il metodo con la matrice concatenata compie sistematicamente questa selezione.

### Completare dentro un sottospazio

Se il problema chiede una base di $W\le V$, tutti i vettori aggiunti devono appartenere a $W$. La base canonica dell'ambiente può uscire da $W$ e non è una famiglia candidata da usare senza controllo.

Trova prima una base $(b_1,\ldots,b_d)$ di $W$, oppure un qualunque insieme finito di suoi generatori. Affiancala alla famiglia indipendente assegnata:

$$
[u_1\ \cdots\ u_k\ b_1\ \cdots\ b_d].
$$

L'estrazione conserva i primi $k$ vettori e sceglie i rimanenti fra vettori che stanno già in $W$. La famiglia finale genera $W$ ed è indipendente. Il ragionamento non richiede di cambiare l'ordine dei vettori iniziali.

> [!example] Esempi e controesempi — Due completamenti con scopi diversi
> Per una base di $\mathbb R^4$ è lecito aggiungere vettori di $\mathbb R^4$ fuori da un piano che contiene la famiglia iniziale. Per una base di quel piano, invece, uscire dal piano rende il vettore inutilizzabile. La parola «completare» deve essere accompagnata dall'indicazione dello spazio in cui si vuole una base.

## Dai generatori alle equazioni

Una lista di generatori permette di costruire vettori; a volte ci serve invece un controllo rapido di appartenenza. Vogliamo passare da

$$
U=\operatorname{Im}C=\operatorname{span}(v_1,\ldots,v_k)\subseteq K^n
$$

a equazioni omogenee per le coordinate di un vettore generico $x\in K^n$.

Il punto di partenza è

$$
x\in U\iff \exists\lambda\in K^k:\ C\lambda=x.
$$

Quindi riduciamo la matrice completa $[C\mid x]$. Le operazioni sono scelte usando soltanto le colonne di $C$; vengono applicate anche alla colonna simbolica $x$. Non dividiamo per espressioni nelle coordinate di $x$: quelle coordinate devono rimanere libere di soddisfare le condizioni finali.

Supponiamo che $S=PC$ sia a scala e abbia $r$ righe non nulle, con $P$ invertibile. Il sistema equivale a

$$
S\lambda=Px.
$$

Le ultime $n-r$ righe di $S$ sono nulle. La compatibilità impone

$$
(Px)_{r+1}=\cdots=(Px)_n=0.
$$

Queste sono equazioni lineari omogenee in $x$.

**Necessità.** Se $x=C\lambda$, allora $Px=S\lambda$ e le ultime componenti sono nulle.

**Sufficienza.** Se le ultime componenti di $Px$ sono nulle, le righe finali dicono $0=0$. Le prime $r$ righe hanno pivot non nulli e il sistema $S\lambda=Px$ è compatibile per sostituzione all'indietro. Esiste quindi $\lambda$ con $x=C\lambda$.

Abbiamo trovato tutte le condizioni, non soltanto alcune condizioni necessarie.

### Esempio svolto: un piano ottenuto da due vettori

L'esempio seguente riprende quello della [[_transcripts/Geometria 1/2026-10-22 - Sistemi lineari e algoritmo di eliminazione di Gauss|lezione del 22 ottobre]]. Per

$$
v_1=(1,-1,0),\qquad v_2=(0,1,-1)
$$

scriviamo

$$
\left(\begin{array}{cc|c}
1&0&x\\
-1&1&y\\
0&-1&z
\end{array}\right).
$$

Con $R_2\leftarrow R_2+R_1$, poi $R_3\leftarrow R_3+R_2$, otteniamo

$$
\left(\begin{array}{cc|c}
1&0&x\\
0&1&x+y\\
0&0&x+y+z
\end{array}\right).
$$

La compatibilità equivale a $x+y+z=0$. Perciò

$$
\operatorname{span}(v_1,v_2)=\{(x,y,z):x+y+z=0\}.
$$

Possiamo anche ricostruire i coefficienti: la seconda riga dà $\lambda_2=x+y=-z$, la prima $\lambda_1=x$. La condizione è sufficiente perché ogni punto che la soddisfa è effettivamente $xv_1-zv_2$.

### Quante equazioni indipendenti occorrono?

Le ultime $n-r$ righe di $P$ sono indipendenti, perché sono una sottofamiglia delle righe di una matrice invertibile. Quindi le $n-r$ equazioni ottenute hanno coefficienti indipendenti.

Questo numero è anche quello minimo possibile. Se $U=\ker B$ per una matrice con $m$ righe, rango-nullità dà

$$
\operatorname{rank}B=n-\dim U=n-r.
$$

Il rango non supera il numero delle righe, dunque $m\ge n-r$. Una lista più lunga di equazioni può contenere ripetizioni o combinazioni ridondanti; non aggiunge necessariamente vincoli.

Se $U=K^n$, non serve alcuna equazione, oppure si può scrivere soltanto $0=0$. Se $U=\{0\}$, le condizioni possono essere $x_1=\cdots=x_n=0$. I casi estremi seguono la stessa regola.

> [!warning] Attenzione — Il vettore generico non è una nuova colonna da eliminare alla cieca
> Nel passaggio $[C\mid x]$ cerchiamo quali $x$ rendano compatibile il sistema. Se trattassimo una componente simbolica di $x$ come un pivot per cui dividere senza distinguere casi, rischieremmo di scartare proprio alcuni vettori di $U$. Si riduce $C$ e si applicano le stesse mosse a $x$; le righe finali restituiscono le condizioni.

## Somme: raccogliere i generatori

Supponiamo di conoscere

$$
U=\operatorname{span}(u_1,\ldots,u_r),\qquad
W=\operatorname{span}(w_1,\ldots,w_s).
$$

Allora

$$
U+W=\operatorname{span}(u_1,\ldots,u_r,w_1,\ldots,w_s).
$$

Infatti una combinazione della famiglia concatenata si separa in una combinazione degli $u_i$ e una degli $w_j$, quindi appartiene a $U+W$. Viceversa ogni $u+w$, sviluppando i due addendi, è una combinazione della famiglia concatenata.

La procedura è quindi raccogliere i generatori, metterli in colonna ed estrarre una base dalle posizioni pivot. Se i sottospazi sono dati mediante equazioni, troviamo prima una base di ciascuno risolvendo i due omogenei.

Unire due basi non garantisce l'indipendenza della famiglia completa. Ciascuna è indipendente al proprio interno; possono però esistere relazioni che coinvolgono vettori dell'una e dell'altra.

**Esempio svolto.** In $\mathbb R^4$ poniamo

$$
U=\operatorname{span}(e_1,e_2+e_3),\qquad
W=\operatorname{span}(e_1+e_2+e_3,e_4).
$$

Il primo generatore di $W$ è la somma dei due generatori di $U$. Raccogliendo le quattro colonne, tre sono sufficienti:

$$
U+W=\operatorname{span}(e_1,e_2+e_3,e_4).
$$

Sono indipendenti: in

$$
a e_1+b(e_2+e_3)+c e_4=0
$$

la prima coordinata dà $a=0$, la seconda $b=0$ e la quarta $c=0$. Abbiamo una base della somma, di dimensione $3$.

Un vettore $\alpha(e_1+e_2+e_3)+\beta e_4$ di $W$ appartiene a $U$ esattamente quando $\beta=0$. Perciò $U\cap W$ ha base $(e_1+e_2+e_3)$ e dimensione $1$. Grassmann conferma il conteggio:

$$
3=2+2-1.
$$

La somma non è diretta. Il vettore comune possiede due decomposizioni: sé stesso come elemento di $U$ più zero, oppure zero più sé stesso come elemento di $W$.

> [!abstract] Concetto chiave — Nella somma si raccoglie, poi si elimina la ridondanza
> Le famiglie generatrici si possono concatenare sempre. Le dimensioni, invece, si sommano senza correzione soltanto se l'intersezione è nulla. Gauss seleziona una base; Grassmann controlla quanta parte viene contata due volte.

## Intersezioni: imporre tutte le condizioni

Se i sottospazi sono dati da equazioni,

$$
U=\{x:Ax=0\},\qquad W=\{x:Bx=0\},
$$

allora

$$
U\cap W=
\left\{x:
\begin{pmatrix}A\\B\end{pmatrix}x=0
\right\}.
$$

Un vettore sta nell'intersezione se e solo se soddisfa **entrambi** i sistemi. Sovrapponiamo quindi le matrici dei coefficienti e risolviamo un solo omogeneo. Le equazioni in più possono essere ridondanti: conta il rango del sistema complessivo.

**Esempio svolto.** In $\mathbb R^4$ prendiamo

$$
U=\{x:x_1-x_2=0,\ x_3-x_4=0\},\qquad
W=\{x:x_1+x_3=0\}.
$$

Il sistema dell'intersezione è

$$
\begin{cases}
x_1=x_2,\\
x_3=x_4,\\
x_1+x_3=0.
\end{cases}
$$

Con $x_1=t$ tutte le coordinate sono forzate:

$$
x=(t,t,-t,-t)=t(1,1,-1,-1).
$$

Il vettore è non nullo, quindi costituisce una base dell'intersezione. La sua appartenenza si verifica direttamente nei tre vincoli. La generazione segue dal fatto che ogni soluzione ha necessariamente quella forma.

In termini di rango,

$$
\dim(U\cap W)
=n-\operatorname{rank}\begin{pmatrix}A\\B\end{pmatrix}.
$$

Non possiamo in generale sostituire il rango della matrice sovrapposta con $\operatorname{rank}A+\operatorname{rank}B$: un vincolo scritto in entrambi i sistemi non diventa due vincoli indipendenti.

### Somma e intersezione chiedono due operazioni diverse

Unire i generatori costruisce una somma. Unire le equazioni costruisce un'intersezione. È utile ricostruire il motivo ogni volta: nella somma vogliamo poter usare vettori di entrambi gli spazi; nell'intersezione vogliamo soddisfare contemporaneamente tutte le condizioni.

Se per la somma unissimo soltanto le equazioni dei due spazi, imporremmo troppe condizioni. Se per l'intersezione unissimo i generatori, potremmo ottenere vettori che appartengono solo a uno dei due spazi. Le due operazioni agiscono in direzioni opposte.

## Intersezioni da generatori: far coincidere due costruzioni

Supponiamo ora che

$$
U=\operatorname{Im}C,\qquad W=\operatorname{Im}D,
$$

con $C\in M_{n,r}(K)$ e $D\in M_{n,s}(K)$. Le colonne possono essere generatori ridondanti. Un vettore $x$ appartiene all'intersezione esattamente quando esistono coefficienti $a\in K^r$, $b\in K^s$ tali che

$$
x=Ca=Db.
$$

Cerchiamo quindi le soluzioni di

$$
Ca-Db=0.
$$

È l'omogenea con matrice a blocchi

$$
T=[C\mid-D]\in M_{n,r+s}(K).
$$

La barretta qui separa due blocchi di coefficienti: **non** è la colonna dei termini noti. Tutte le $r+s$ colonne corrispondono a incognite, e il termine noto è il vettore nullo.

Risolto il sistema, ogni soluzione $(a,b)$ produce il vettore comune $Ca$, uguale a $Db$. Prendendo una base del nucleo di $T$ otteniamo così una famiglia che genera l'intersezione. Per capire se è già una base dobbiamo studiare il passaggio dai coefficienti ai vettori.

### La mappa verso l'intersezione

Definiamo

$$
\Psi:\ker T\longrightarrow U\cap W,\qquad
\Psi(a,b)=Ca.
$$

È ben definita perché in $\ker T$ si ha $Ca=Db$, quindi $Ca$ appartiene a entrambi gli spazi. È lineare per le proprietà del prodotto matrice-vettore.

È anche **suriettiva**: dato $x\in U\cap W$, l'appartenenza a $U$ dà un $a$ con $x=Ca$ e quella a $W$ un $b$ con $x=Db$. La coppia $(a,b)$ sta in $\ker T$ e ha immagine $x$.

Di conseguenza, le immagini di una base di $\ker T$ generano tutta l'intersezione. Tuttavia una funzione lineare suriettiva può annullare vettori non nulli: la sola suriettività non assicura l'indipendenza delle immagini.

Se le colonne di $C$ e di $D$ sono **basi** dei due sottospazi, la mappa è anche iniettiva. Infatti

$$
\Psi(a,b)=0
\quad\Longrightarrow\quad
Ca=0,\quad Db=0.
$$

L'indipendenza delle colonne dà $a=0$ e $b=0$. Quindi $\Psi$ è un isomorfismo.

Abbiamo dimostrato il risultato operativo:

> [!abstract] Concetto chiave — Con basi in ingresso, una base di coefficienti diventa una base di vettori
> Se $C,D$ hanno colonne indipendenti, risolvi $[C\mid-D](a,b)=0$ e, per ogni vettore di una base del nucleo, conserva la combinazione $Ca$. Le combinazioni ottenute formano una base di $U\cap W$.
> Con generatori ridondanti ottieni invece una famiglia generatrice: devi ancora eliminare gli eventuali zeri e le dipendenze.

### Esempio svolto: due piani in tre coordinate

Siano

$$
U=\operatorname{span}\bigl((1,0,0),(0,1,0)\bigr),\qquad
W=\operatorname{span}\bigl((1,1,0),(0,0,1)\bigr).
$$

I due elenchi sono basi: nei rispettivi sviluppi i coefficienti si leggono immediatamente nelle coordinate. Uguagliando le combinazioni,

$$
a_1(1,0,0)+a_2(0,1,0)
=b_1(1,1,0)+b_2(0,0,1),
$$

otteniamo

$$
a_1-b_1=0,\qquad a_2-b_1=0,\qquad -b_2=0.
$$

Tutte le soluzioni sono

$$
(a_1,a_2,b_1,b_2)=t(1,1,1,0).
$$

Il nucleo dei coefficienti ha base $((1,1,1,0))$. La sua immagine è $(1,1,0)$: una base di $U\cap W$. La dimensione dell'intersezione è $1$, non $4$ per il numero di coefficienti né $2$ per il numero di generatori di ciascun piano.

### Che cosa cambia con generatori ridondanti?

In generale

$$
\ker\Psi
=\{(a,b):Ca=0,\ Db=0\}
=\ker C\times\ker D.
$$

La prima uguaglianza segue da $\Psi(a,b)=Ca=0$ e da $Ca=Db$ nel dominio; la seconda è la definizione del prodotto cartesiano dei due nuclei. Ogni coppia del prodotto appartiene automaticamente a $\ker T$.

Una base del primo nucleo, inserita nelle prime coordinate con zeri nelle ultime, e una base del secondo, inserita nelle ultime coordinate, danno una base del prodotto. Quindi

$$
\dim\ker\Psi=\dim\ker C+\dim\ker D.
$$

Applicando rango-nullità alla mappa suriettiva $\Psi$,

$$
\boxed{
\dim(U\cap W)
=\dim\ker[C\mid-D]-\dim\ker C-\dim\ker D.
}
$$

La differenza sottrae le libertà che modificano soltanto i coefficienti lasciando nullo il vettore prodotto. È un completamento didattico che chiarisce la cautela pratica: il numero dei parametri di una descrizione ridondante può essere maggiore della dimensione dei vettori descritti.

Non è necessario usare sempre questa formula per calcolare una base. Spesso è più semplice estrarre prima basi di $U$ e $W$; allora entrambi i nuclei di $C,D$ sono nulli e il passaggio finale conserva direttamente l'indipendenza.

## Intersecare con un nucleo: usare la restrizione

Il caso misto è frequente: conosciamo generatori di $U$, mentre l'altro sottospazio è descritto da condizioni lineari. Se queste condizioni sono raccolte in una funzione lineare $F:V\to Y$, l'insieme cercato è

$$
U\cap\ker F.
$$

La restrizione

$$
F|_U:U\longrightarrow Y
$$

applica la stessa regola di $F$, ma solo ai vettori di $U$. Per definizione,

$$
\ker(F|_U)=\{u\in U:F(u)=0\}=U\cap\ker F.
$$

È lo stesso insieme, visto come nucleo di una trasformazione il cui dominio è lo spazio in cui stiamo cercando i vettori.

Se $(u_1,\ldots,u_k)$ è una base di $U$, scriviamo

$$
u=a_1u_1+\cdots+a_ku_k.
$$

Per linearità,

$$
F(u)=a_1F(u_1)+\cdots+a_kF(u_k).
$$

Troviamo quindi le relazioni nulle fra $F(u_1),\ldots,F(u_k)$. Quando $Y=K^m$, mettiamo questi vettori in colonna e risolviamo l'omogenea. Se $Y$ è un altro spazio finito dimensionale, passiamo alle coordinate in una sua base.

La ricostruzione dalle coordinate

$$
\chi:K^k\longrightarrow U,\qquad
\chi(a)=\sum_ja_ju_j
$$

è un isomorfismo. La sua restrizione al nucleo dell'equazione sui coefficienti è dunque un isomorfismo verso $U\cap\ker F$. Per questo una base delle soluzioni nei coefficienti produce una base dell'intersezione, quando gli $u_j$ sono una base.

### L'esempio con una sola condizione lineare

La [[_transcripts/Geometria 1/2026-11-04 - Sistemi lineari e somme dirette di sottospazi|lezione del 4 novembre]] propone di studiare un'intersezione a partire dai valori di una forma lineare $f$ sui generatori. Una forma lineare è semplicemente un'applicazione lineare con valori nel campo $K$.

Supponiamo qui che $(u_1,u_2,u_3)$ sia una **base** di $U$ e che

$$
f(u_1)=2,\qquad f(u_2)=1,\qquad f(u_3)=-1.
$$

La condizione è

$$
2a_1+a_2-a_3=0.
$$

Possiamo isolare $a_2$, il cui coefficiente è $1$ in ogni campo:

$$
a_2=-2a_1+a_3.
$$

Ne segue

$$
u=a_1(u_1-2u_2)+a_3(u_2+u_3).
$$

Quindi una base dell'intersezione è

$$
(u_1-2u_2,\ u_2+u_3).
$$

Per l'indipendenza, una relazione

$$
\alpha(u_1-2u_2)+\beta(u_2+u_3)=0
$$

ha coefficienti $\alpha,-2\alpha+\beta,\beta$ rispetto alla base di $U$. Sono tutti nulli, dunque $\alpha=\beta=0$. La generazione è già dimostrata dalla formula del vettore generico.

Questa scelta evita una divisione per $2$ e resta valida anche se $2=0$ nel campo. Su $\mathbb R$ o $\mathbb C$ potremmo anche isolare $a_1$ e ottenere la diversa base

$$
\left(-\frac12u_1+u_2,\ \frac12u_1+u_3\right).
$$

Le due liste descrivono lo stesso sottospazio; la prima richiede meno ipotesi sul campo.

### Un controesempio alla falsa conservazione dell'indipendenza

In $\mathbb R^2$ usa due volte il generatore $e_1$ e imponi che il vettore prodotto abbia prima coordinata zero:

$$
a e_1+b e_1\in\ker(x,y\mapsto x)
\iff a+b=0.
$$

Nel piano dei coefficienti l'insieme delle soluzioni è una retta, con base $(1,-1)$. Ma il vettore originale prodotto è

$$
e_1-e_1=0.
$$

L'intersezione cercata è $\{0\}$, di dimensione zero; la famiglia che contiene soltanto il vettore nullo non ne è una base. La libertà dei coefficienti registrava due modi diversi di scrivere lo stesso vettore, non una direzione dello spazio originale.

> [!warning] Attenzione — «Parametri liberi» non significa sempre «dimensione dei vettori prodotti»
> I parametri di Gauss sono coordinate indipendenti nello spazio delle **incognite del sistema che hai scritto**. Se quelle incognite sono coefficienti rispetto a generatori ridondanti, il successivo passaggio ai vettori può annullare alcune direzioni. Estrai prima una base, oppure estrai una base dalla famiglia dei vettori ricostruiti. La cautela completa il procedimento discusso il 4 novembre.

### Una dimensione utile per controllare il risultato

Se $U$ è finito dimensionale, applicando rango-nullità a $F|_U$ otteniamo

$$
\dim(U\cap\ker F)=\dim U-\dim F(U).
$$

L'immagine della restrizione è $F(U)$, non necessariamente tutta l'immagine di $F$ sull'ambiente $V$. Se il vincolo si annulla su tutto $U$, non restringe nulla; se invece raggiunge uno spazio di dimensione $h$, elimina $h$ libertà indipendenti dentro $U$.

Questa formula controlla una base già costruita e può anche prevederne il numero di vettori. Non autorizza a ignorare la verifica che i vettori appartengano all'intersezione.

## Polinomi e matrici attraverso le coordinate

Una combinazione lineare di polinomi è descritta dai coefficienti; una combinazione di matrici dalle entrate. Il passaggio alle coordinate conserva esattamente generazione e indipendenza. Dobbiamo soltanto mantenere visibile quale oggetto rappresenta ogni colonna.

### Valutazioni di polinomi

In $\mathbb R[t]_{\le3}$ consideriamo

$$
P=\{p:p(0)=0,\ p(1)=0\}.
$$

È il nucleo dell'applicazione

$$
F:\mathbb R[t]_{\le3}\longrightarrow\mathbb R^2,
\qquad F(p)=(p(0),p(1)).
$$

La linearità segue dalla compatibilità della valutazione con somma e prodotto per scalare. Scrivendo

$$
p(t)=a_0+a_1t+a_2t^2+a_3t^3,
$$

le condizioni sono

$$
a_0=0,\qquad a_0+a_1+a_2+a_3=0.
$$

Con $a_2=s,a_3=t_0$ ricaviamo $a_1=-s-t_0$ e

$$
p=s(t^2-t)+t_0(t^3-t).
$$

Quindi $(t^2-t,t^3-t)$ è una base: genera per il calcolo e i coefficienti in una relazione nulla si leggono davanti a $t^2,t^3$. La dimensione è $2$.

Il criterio del fattore dà un'altra descrizione: $p(0)=0$ permette di estrarre $t$; valutando in $1$, poiché $1\ne0$, il quoziente si annulla in $1$ e contiene $t-1$. Dunque

$$
p=t(t-1)q,\qquad q\in\mathbb R[t]_{\le1}.
$$

Otteniamo la base

$$
(t(t-1),\ t^2(t-1)).
$$

La generazione segue dalla forma di $q$, e l'indipendenza dai gradi distinti oppure dalla cancellazione del fattore non nullo $t(t-1)$. Le due basi non sono identiche: il secondo vettore della prima è la somma dei due vettori della seconda. Entrambe descrivono lo stesso spazio.

Questo esempio rielabora i vincoli sui polinomi della [[Notes/Geometria 1/Lectures/2026-10-14 - Basi, sottospazi e sistemi lineari|lezione del 14 ottobre]]. La scelta fra coefficienti e fattori è un caso particolarmente semplice del principio di convenienza: un fattore già noto può evitare una riduzione più lunga.

### Matrici con due vincoli

In $M_{2,2}(\mathbb R)$ intersechiamo il sottospazio delle matrici simmetriche con quello delle matrici a traccia nulla. La **traccia** di una matrice quadrata è la somma delle entrate diagonali; qui è $a+d$.

Una matrice simmetrica ha forma

$$
X=\begin{pmatrix}a&b\\b&d\end{pmatrix}.
$$

La condizione di traccia nulla impone $d=-a$, quindi

$$
X=a\begin{pmatrix}1&0\\0&-1\end{pmatrix}
+b\begin{pmatrix}0&1\\1&0\end{pmatrix}.
$$

Le due matrici costituiscono una base: generano tutte le matrici cercate e una relazione nulla forza il primo coefficiente dall'entrata $(1,1)$ e il secondo dall'entrata $(1,2)$.

Se avessimo lavorato nelle coordinate $(E_{11},E_{12},E_{21},E_{22})$, avremmo imposto le equazioni $x_{12}=x_{21}$ e $x_{11}+x_{22}=0$. Il risultato sarebbe lo stesso. Alla fine ricostruiamo le matrici: le colonne numeriche trovate nei conti sono soltanto le loro coordinate.

## Controllare la risposta prima di fermarsi

Il controllo di una base contiene tre domande diverse:

1. **I vettori stanno nello spazio cercato?** Sostituiscili nelle equazioni o ricostruiscili con i generatori iniziali.
2. **Sono indipendenti?** Usa le posizioni libere, una relazione nulla, i pivot originali oppure un criterio dimensionale con ipotesi già verificate.
3. **Generano tutto lo spazio?** Mostra che ogni vettore cercato ha la forma costruita; in alternativa, prova l'inclusione dello span candidato e confronta dimensioni finite già note.

L'ultimo criterio richiede l'inclusione. Due sottospazi della stessa dimensione possono essere diversi: sapere che la lista ha il numero giusto di vettori non dimostra che appartengano allo spazio corretto.

Per somme e intersezioni, la formula di Grassmann offre un controllo aggiuntivo:

$$
\dim(U+W)+\dim(U\cap W)=\dim U+\dim W.
$$

Se i conteggi non tornano, cerca una ridondanza o un'equazione dimenticata. Se tornano, la verifica non è conclusa automaticamente: due risultati errati possono avere dimensioni compatibili. Devi ancora giustificare i sottospazi che hai effettivamente ottenuto.

### Coefficienti dipendenti da un parametro

Una famiglia può essere indipendente per alcuni valori di un parametro e diventare ridondante per altri. L'estrazione va fatta distinguendo i casi prima di dividere per un'espressione che può annullarsi.

Questo è particolarmente importante nelle intersezioni: il sistema sui coefficienti può mantenere lo stesso numero di parametri mentre la funzione che li trasforma in vettori perde iniettività. Perciò controlla sia il rango dei generatori iniziali sia l'indipendenza dei vettori finali. L'[[#Esercizio 12 — Quando cambia la descrizione (parametro e ridondanza)|esercizio 12]] isola proprio questo fenomeno.

### Spazi nulli, ambienti interi e campi finiti

Una base di $\{0\}$ è la famiglia vuota. Se una procedura produce soltanto zeri, dopo l'estrazione non rimane alcun vettore, e questo è il risultato corretto. Se l'intersezione è nulla, non bisogna cercare a ogni costo un vettore non nullo che la generi.

Se una famiglia genera tutto $K^n$, la descrizione implicita può non contenere equazioni. Se un sistema omogeneo ha rango zero, non restringe l'ambiente e la sua base può essere quella canonica.

Gli stessi algoritmi funzionano sui campi finiti. Se un sottospazio ha dimensione $d$ su un campo con $q$ elementi, una base dà una biezione con $K^d$ e quindi il sottospazio contiene $q^d$ vettori. Non è l'esistenza di un parametro a renderli infiniti: conta anche quanti valori può assumere.

> [!abstract] Concetto chiave — Una base va restituita nello spazio della domanda
> Nell'omogenea le incognite sono le coordinate del vettore cercato. Nel metodo con generatori possono essere coefficienti di un'altra descrizione. Identifica sempre la funzione che trasforma le soluzioni del sistema negli oggetti originali: se è iniettiva, conserva l'indipendenza; se non lo è, occorre un'ulteriore estrazione.

## Fonti

L'estrazione mediante le colonne originali nelle posizioni pivot, il completamento affiancando una base e la preferenza per equazioni nelle intersezioni e generatori nelle somme provengono dalla [[Notes/Geometria 1/Lectures/2026-11-01 - Indipendenza lineare e basi mediante Gauss|nota del 1° novembre]] e dalla relativa [[_transcripts/Geometria 1/2026-11-01 - Indipendenza lineare e basi mediante Gauss|trascrizione]]. Il richiamo a prendere le colonne della matrice iniziale è esplicito nella lezione.

Il passaggio dai generatori alle equazioni attraverso $[C\mid x]$, l'esempio di $(1,-1,0),(0,1,-1)$ e la costruzione di basi dalle variabili libere riprendono la [[Notes/Geometria 1/Lectures/2026-10-22 - Sistemi lineari e algoritmo di eliminazione di Gauss|nota del 22 ottobre su Gauss]] e la corrispondente [[_transcripts/Geometria 1/2026-10-22 - Sistemi lineari e algoritmo di eliminazione di Gauss|trascrizione]]. Le dimostrazioni operative sono rese esplicite usando i risultati dei capitoli precedenti.

Il sottospazio in $\mathbb R^5$, l'errore della base canonica dell'ambiente e l'intersezione con il nucleo di una condizione lineare riprendono la [[Notes/Geometria 1/Lectures/2026-11-04 - Sistemi lineari e somme dirette di sottospazi|nota del 4 novembre sui sistemi]] e la relativa [[_transcripts/Geometria 1/2026-11-04 - Sistemi lineari e somme dirette di sottospazi|trascrizione]]. Nell'esempio con $f(u_1)=2,f(u_2)=1,f(u_3)=-1$ assumiamo esplicitamente che gli $u_j$ formino una base e scegliamo di isolare il coefficiente con fattore $1$, per non introdurre una divisione per $2$ su un campo generico. La cautela sulla ridondanza precisa il ritorno dai coefficienti ai vettori.

I vincoli di valutazione sui polinomi sono rielaborati dalla [[Notes/Geometria 1/Lectures/2026-10-14 - Basi, sottospazi e sistemi lineari|nota del 14 ottobre]] e dalla relativa [[_transcripts/Geometria 1/2026-10-14 - Basi, sottospazi e sistemi lineari|trascrizione]]. La traccia e l'esempio sulle matrici sono aggiunte didattiche.

La prova mediante la mappa $\Psi$, la formula che sottrae i nuclei delle due descrizioni ridondanti, la dimostrazione del numero minimo di equazioni e i controlli dei casi limite sono completamenti redazionali. Gli altri esempi numerici, gli esercizi e tutti i riscontri sono scritti per questo libro e non ricostruiscono dati incerti delle registrazioni. Le fonti originarie rimangono inalterate. Per il quadro complessivo: [[Books/Geometria-I/90 - Fonti e criteri editoriali|fonti e criteri editoriali]].

## Riscontri degli esercizi

Apri il riscontro dopo aver scritto un tentativo. Una base diversa può essere corretta: controlla che il suo span coincida con quello cercato e che i vettori siano indipendenti. Per i metodi con coefficienti, verifica anche come ciascuna soluzione del sistema viene trasformata in un vettore dello spazio originale.

### Riscontro 1

> [!tip]- Riscontro 1
> Con $x_3=s,x_4=t,x_5=u$, la seconda equazione dà $x_2=-s+t-2u$; la prima dà $x_1=-3s+t-3u$. Quindi
> $$
> x=s(-3,-1,1,0,0)+t(1,1,0,1,0)+u(-3,-2,0,0,1).
> $$
> I tre vettori soddisfano entrambe le equazioni. Generano perché ogni soluzione ha necessariamente questa forma; sono indipendenti leggendo le posizioni $3,4,5$. La dimensione è $3$. I vettori canonici $e_3,e_4,e_5$ sono le scelte unitarie nello spazio dei parametri soltanto dopo aver ricostruito le coordinate dipendenti: per esempio $e_3$ nell'ambiente non soddisfa la prima equazione, il cui primo membro vale $2$.

Torna a [[#Esercizio 1 — Ricostruire le coordinate dipendenti (base di un nucleo)|esercizio 1]].

### Riscontro 2

> [!tip]- Riscontro 2
> Le colonne pivot hanno indici $1,3,5$; una base è $(v_1,v_3,v_5)$. Infatti $v_2=2v_1$ e $v_4=v_1+v_3$. In una relazione fra i tre vettori scelti, la prima coordinata forza il coefficiente di $v_1$, la seconda quello di $v_3$ e la quarta quello di $v_5$: sono indipendenti. La generazione segue dalle due relazioni. In generale, se $S=PC$ con $P$ invertibile, $S\lambda=0$ equivale a $C\lambda=0$; la stessa relazione vale per le due famiglie di colonne. L'indipendenza delle colonne pivot e le espressioni delle altre colonne tramite quelle pivot si trasferiscono perciò ai vettori originali.

Torna a [[#Esercizio 2 — Estrarre dai vettori assegnati (colonne pivot originali)|esercizio 2]].

### Riscontro 3

> [!tip]- Riscontro 3
> Le colonne della matrice ridotta generano il piano $z=0$, ma quello originario è
> $$
> \operatorname{span}(u,v)=\{(x,y,z):x-y+z=0\}.
> $$
> La combinazione $a u+b v=(a,a+b,b)$ soddisfa l'equazione; viceversa, se $y=x+z$, scegli $a=x,b=z$. Né $e_1$ né $e_2$ appartiene a questo piano, perché il primo membro vale rispettivamente $1$ e $-1$. La riduzione permette di leggere due colonne pivot, dunque l'indipendenza dei vettori originali e il rango $2$. Le colonne da conservare sono $u,v$; le nuove colonne descrivono un'immagine trasformata dello spazio.

Torna a [[#Esercizio 3 — Una base dello spazio sbagliato (diagnosi di un errore)|esercizio 3]].

### Riscontro 4

> [!tip]- Riscontro 4
> Per $\mathbb R^4$ funziona $(u,v,e_1,e_2)$. In una relazione nulla la terza coordinata dà il coefficiente di $u$, la quarta quello di $v$, poi prima e seconda quelli di $e_1,e_2$. Sono quattro vettori indipendenti nell'ambiente di dimensione quattro.
>
> Per $H$ possiamo aggiungere $w=(1,-1,0,0)$. Appartiene a $H$; in una relazione $au+bv+cw=0$, la terza e la quarta coordinata danno $a=b=0$, poi $c=0$. Il sottospazio $H$ ha dimensione $3$, perché un'unica equazione non nulla permette di ricavare $x_1=-x_2+x_3+x_4$. Dunque $(u,v,w)$ è una sua base. Invece $e_1,e_2$ non soddisfano il vincolo di $H$. Nel metodo generale, il prefisso di colonne iniziali è indipendente e conserva rango $k$ sotto operazioni di riga: ogni sua colonna deve essere pivot. L'estrazione dalla famiglia ampliata le mantiene tutte.

Torna a [[#Esercizio 4 — Completare nello spazio giusto (estensione di una famiglia)|esercizio 4]].

### Riscontro 5

> [!tip]- Riscontro 5
> Le tre colonne sono indipendenti: prima, seconda e quarta coordinata permettono di annullare successivamente tutti i coefficienti di una relazione. La descrizione è
> $$
> U=\{x:x_1-x_2+x_3-x_4=0\}.
> $$
> Una combinazione con coefficienti $a,b,c$ ha coordinate $(a,a+b,b+c,c)$ e soddisfa l'equazione. Viceversa, per un $x$ che la soddisfa scegli $a=x_1$, $b=x_2-x_1$, $c=x_4$; la terza coordinata diventa $x_2-x_1+x_4=x_3$. Il vettore $(1,0,0,1)$ appartiene a $U$, con coefficienti $(1,-1,1)$; $(1,0,0,0)$ non vi appartiene, perché il vincolo vale $1\ne0$. Serve una sola equazione indipendente, dato che $n-r=4-3=1$. Il calcolo usa soltanto $1,-1$ e funziona anche in caratteristica due. In generale riduci $C$, applicando le stesse mosse alla colonna $x$: le componenti trasformate nelle righe nulle di $C$ devono annullarsi. Non usi $x$ per scegliere divisori.

Torna a [[#Esercizio 5 — Riconoscere uno spazio senza cercare i coefficienti (generatori ed equazioni)|esercizio 5]].

### Riscontro 6

> [!tip]- Riscontro 6
> Chiama $u_1=(1,0,1,0)$, $u_2=(0,1,1,0)$ e $w_2=(0,0,1,1)$. Il primo generatore di $W$ è $w_1=u_1+u_2$, quindi la somma ha base $(u_1,u_2,w_2)$. L'indipendenza si legge nelle coordinate $1,2,4$. Un vettore di $W$ è $\alpha w_1+\beta w_2$; per appartenere a $U$ deve avere quarta coordinata zero, dunque $\beta=0$. Pertanto $U\cap W=\operatorname{span}(w_1)$, di dimensione $1$, e Grassmann dà $3+1=2+2$. La somma non è diretta, perché $w_1\ne0$ è comune. L'unione non è un sottospazio: $u_1\notin W$ e $w_2\notin U$, perciò nessuno dei due contiene l'altro. Per un controllo concreto, $u_1+w_2=(1,0,2,1)$ non sta in $U$ per la quarta coordinata; non sta in $W$ perché nei vettori di $W$ le prime due coordinate sono uguali.

Torna a [[#Esercizio 6 — Raccogliere senza sovracontare (somma)|esercizio 6]].

### Riscontro 7

> [!tip]- Riscontro 7
> Imponendo i tre vincoli ottieni $x_1=x_2=t$, $x_3=-t$, $x_4=t$. Quindi l'intersezione ha base $((1,1,-1,1))$ e dimensione $1$. Separatamente, $U$ ha dimensione $2$, con parametri $x_1,x_3$; $W$ ha dimensione $3$, perché $x_3=-x_1$ e le altre due coordinate sono libere. Grassmann dà $\dim(U+W)=2+3-1=4$. Poiché $U+W\subseteq\mathbb R^4$ e le dimensioni finite sono uguali, la somma coincide con tutto l'ambiente. L'inclusione è essenziale per questa conclusione.

Torna a [[#Esercizio 7 — Soddisfare insieme due richieste (intersezione di equazioni)|esercizio 7]].

### Riscontro 8

> [!tip]- Riscontro 8
> I tre $u_j$ sono indipendenti: dalle prime due coordinate leggi i primi due coefficienti, poi dalla terza il terzo. Per i $w_j$, la quarta coordinata legge il coefficiente di $w_1$, poi la terza quello di $w_2$ e la prima quello di $w_3$. Uguagliare
> $$
> a_1u_1+a_2u_2+a_3u_3=b_1w_1+b_2w_2+b_3w_3
> $$
> dà $a_1=b_1+b_3$, $a_2=b_1$, $a_1+a_3=b_1+b_2$, $a_2+a_3=b_1$. Ne segue $a_3=0$, $b_2=b_3$, e tutte le soluzioni sono
> $$
> (a_1,a_2,a_3,b_1,b_2,b_3)
> =s(1,1,0,1,0,0)+t(1,0,0,0,1,1).
> $$
> Le due colonne di coefficienti sono indipendenti e generano il nucleo. Le immagini mediante $\Psi$ sono $w_1=(1,1,1,1)$ e $u_1=(1,0,1,0)$, quindi una base dell'intersezione è $(w_1,u_1)$. Sono indipendenti anche direttamente, leggendo prima la seconda coordinata e poi la prima. Il trasferimento è garantito in generale dall'iniettività di $\Psi$ quando $C,D$ hanno colonne indipendenti. La dimensione dell'intersezione è $2$ e quella della somma è $3+3-2=4$.

Torna a [[#Esercizio 8 — Far incontrare due costruzioni (intersezione da generatori)|esercizio 8]].

### Riscontro 9

> [!tip]- Riscontro 9
> Il vettore di coefficienti $(-2,1)$ produce $-2v_1+v_2=0$. L'intersezione è soltanto $\{0\}$: lo span iniziale è l'asse orizzontale e $Z$ quello verticale. La sua base è la famiglia vuota. Una base del sistema sui coefficienti non diventa una base dell'intersezione perché il passaggio ai vettori non è iniettivo.
>
> Nel caso generale $\Psi$ è suriettiva: ogni vettore comune ha due rappresentazioni $Ca=Db$. Nel dominio $\ker[C\mid-D]$, la condizione $\Psi(a,b)=0$ equivale a $Ca=Db=0$, quindi $\ker\Psi=\ker C\times\ker D$. La dimensione del prodotto è la somma delle due dimensioni, usando le basi inserite nei due blocchi separati. Rango-nullità dà
> $$
> \dim(\operatorname{Im}C\cap\operatorname{Im}D)
> =\dim\ker[C\mid-D]-\dim\ker C-\dim\ker D.
> $$
> Se le colonne di entrambi sono basi, i due termini sottratti sono zero e $\Psi$ è un isomorfismo.

Torna a [[#Esercizio 9 — Una direzione che scompare (generatori ridondanti)|esercizio 9]].

### Riscontro 10

> [!tip]- Riscontro 10
> Scrivi $p=a_0+a_1t+a_2t^2+a_3t^3+a_4t^4$. Le prime e terze condizioni danno $a_0=a_1=0$; la valutazione in $1$ dà $a_2+a_3+a_4=0$. Quindi
> $$
> p=a_3(t^3-t^2)+a_4(t^4-t^2),
> $$
> e una base è $(t^3-t^2,t^4-t^2)$. I coefficienti si leggono davanti a $t^3,t^4$, quindi i due polinomi sono indipendenti.
>
> Le condizioni in $0$ implicano divisibilità per $t^2$. Scrivendo $p=t^2q$, la condizione in $1$ dà $q(1)=0$, quindi $q=(t-1)r$ con grado di $r$ al più $1$, includendo il caso nullo. Una seconda base è $(t^2(t-1),t^3(t-1))$. Il primo vettore coincide con $t^3-t^2$, il secondo è $(t^4-t^2)-(t^3-t^2)$. Le trasformazioni sono invertibili, dunque gli span coincidono; entrambe sono basi di dimensione $2$.

Torna a [[#Esercizio 10 — Tre condizioni su un polinomio (valutazioni e derivata)|esercizio 10]].

### Riscontro 11

> [!tip]- Riscontro 11
> Una matrice triangolare superiore ha entrata $(2,1)$ nulla. Se è anche simmetrica, deve essere nulla anche l'entrata $(1,2)$. Quindi $U\cap W$ è lo spazio delle matrici diagonali, con base $(E_{11},E_{22})$. Le due famiglie generatrici insieme forniscono anche $E_{12}$ e $E_{12}+E_{21}$, da cui si ricava $E_{21}$ per sottrazione. La somma è tutto $M_{2,2}(K)$, con base canonica e dimensione $4$. Aggiungendo la traccia nulla alla matrice diagonale si ottiene $\operatorname{diag}(a,-a)$, con base $(E_{11}-E_{22})$, di dimensione $1$. Nessun passaggio divide per $2$. In $\mathbb F_2$ l'ultimo generatore è $I$, ancora non nullo, e i tre spazi hanno rispettivamente $2^2=4$, $2^4=16$ e $2^1=2$ elementi.

Torna a [[#Esercizio 11 — La stessa procedura su matrici (basi e campo finito)|esercizio 11]].

### Riscontro 12

> [!tip]- Riscontro 12
> Se $a\ne0$, i primi due generatori sono indipendenti e insieme a $e_3$ formano una base di $\mathbb R^3$: la seconda coordinata di una relazione dà prima il secondo coefficiente, poi la prima e la terza annullano gli altri. Quindi $U_a=\mathbb R^3$ e $U_a\cap Z=Z$, con base $((-1,1,0),(0,0,1))$.
>
> Se $a=0$, i primi due generatori coincidono: $U_0=\operatorname{span}(e_1,e_3)$. Il vincolo di $Z$ forza la prima coordinata a zero, quindi l'intersezione ha base $(e_3)$ e dimensione $1$.
>
> Nei coefficienti, $\lambda=-(1+a)\mu$ e $\nu$ è libero. Una base delle soluzioni è $(-(1+a),1,0)$ e $(0,0,1)$; le immagini nei vettori originali sono $(-a,a,0)$ ed $e_3$. Per $a\ne0$ sono indipendenti e il primo si può riscalare in $(-1,1,0)$. Per $a=0$ il primo diventa nullo: il sistema dei coefficienti conserva due libertà, ma una descrive una relazione fra generatori anziché una direzione dell'intersezione. Il caso va separato prima di dividere per $a$.

Torna a [[#Esercizio 12 — Quando cambia la descrizione (parametro e ridondanza)|esercizio 12]].

Il capitolo è acquisito quando sai scegliere una descrizione conveniente, convertire generatori ed equazioni senza perdere un'inclusione e giustificare ogni base restituita. Nei problemi di intersezione, prova a dire ad alta voce quali sono le incognite del sistema e quale funzione le trasforma nei vettori cercati: questo controllo individua subito molte false conclusioni sulla dimensione.

---

[[Books/Geometria-I/12 - Rango invertibilità e matrici elementari|← 12 · Rango invertibilità e matrici elementari]] · [[Books/Geometria-I/00 - Indice e piano di studio|Indice e piano di studio]] · [[Books/Geometria-I/14 - Matrici associate e composizione|14 · Matrici associate e composizione →]]
