# Dimensione scambio e completamento

Prerequisiti: [[Books/Geometria-I/06 - Indipendenza basi e coordinate|indipendenza, basi e coordinate]] e [[Books/Geometria-I/05 - Sottospazi e combinazioni lineari|span e generatori]]. Per alcuni esempi useremo i [[Books/Geometria-I/03 - Polinomi radici e fattorizzazioni|polinomi formali]]. Torna all'[[Books/Geometria-I/00 - Indice e piano di studio|indice e piano di studio]].

> [!info] In questo capitolo
> - Capirai perché il numero di vettori di una base finita dipende dallo spazio, anche se i vettori della base possono cambiare completamente.
> - Userai il **lemma di scambio** per confrontare famiglie indipendenti e generatori, senza determinanti o rango.
> - Imparerai a **estrarre** una base da generatori e a **completare** una famiglia indipendente conservandone i vettori.
> - Definirai la **dimensione** e dimostrerai i criteri che permettono di verificare una sola delle due proprietà di una base.
> - Controllerai il ruolo dell'inclusione fra sottospazi, della finitezza e del campo degli scalari.

## Domande per iniziare dagli esercizi

Prova prima il problema collegato. Se ti blocchi, recupera lo strumento indicato e poi riprendi il tentativo senza leggere il riscontro. Nelle prove di questo capitolo chiediti soprattutto quale proprietà viene conservata quando togli, aggiungi o sostituisci un vettore.

| Domanda guida | Esercizi da tentare | Teoria da recuperare |
|---|---|---|
| Perché contare i vettori è diverso dal contare gli elementi dello spazio? | [[#Esercizio 4 — Più vettori non danno più libertà (confronto fra famiglie)\|4]], [[#Esercizio 11 — Costruire una base senza presupporla (sottospazi e campi finiti)\|11]] | [[#Quante informazioni servono per descrivere un vettore\|Il problema di partenza]] |
| Che cosa significa che una base non si può allargare né restringere? | [[#Esercizio 1 — Aggiungere togliere e fermarsi (massimale e minimale)\|1]] | [[#Una base è al confine fra troppo e troppo poco\|Massimalità e minimalità]] |
| Perché l'eliminazione dei vettori ridondanti deve terminare? | [[#Esercizio 6 — Una lista lunga per un piano (estrazione di una base)\|6]], [[#Esercizio 12 — Dove finisce il caso finito (zero e basi infinite)\|12]] | [[#Da generatori finiti a una base\|Esistenza nel caso finito]] |
| Quale vettore posso sostituire con una combinazione degli altri? | [[#Esercizio 2 — Uno scambio consentito e uno impossibile (scambio elementare)\|2]] | [[#Uno scambio che conserva lo spazio\|Il lemma elementare]] |
| Come inserisco più vettori senza perdere quelli già inseriti? | [[#Esercizio 3 — Conservare ciò che hai già inserito (scambio successivo)\|3]], [[#Esercizio 4 — Più vettori non danno più libertà (confronto fra famiglie)\|4]] | [[#Inserire una famiglia indipendente senza tornare indietro\|Lo scambio e il confronto]] |
| Perché il numero di vettori di una base è ben definito? | [[#Esercizio 5 — Contare in spazi diversi (dimensione e scalari)\|5]], [[#Esercizio 4 — Più vettori non danno più libertà (confronto fra famiglie)\|4]] | [[#La dimensione è un numero dello spazio\|Definizione ed esempi]] |
| Quando basta verificare soltanto l'indipendenza o la generazione? | [[#Esercizio 10 — Un parametro cambia la dimensione (criteri per una base)\|10]] | [[#Quando il numero dei vettori completa la verifica\|I criteri dimensionali]] |
| Come estraggo una base e come completo una famiglia indipendente? | [[#Esercizio 6 — Una lista lunga per un piano (estrazione di una base)\|6]], [[#Esercizio 7 — Aggiungere soltanto ciò che manca (completamento)\|7]] | [[#Estrarre e completare sono operazioni diverse\|Le due costruzioni]] |
| Perché uguale dimensione non significa sempre uguale sottospazio? | [[#Esercizio 8 — Uguale dimensione ma posizioni diverse (inclusione)\|8]], [[#Esercizio 11 — Costruire una base senza presupporla (sottospazi e campi finiti)\|11]] | [[#La dimensione dei sottospazi e il ruolo dell'inclusione\|Dimensione e inclusione]] |
| Come applico i criteri a polinomi e matrici senza perdere gli oggetti? | [[#Esercizio 9 — Due valori che devono coincidere (basi e completamento)\|9]], [[#Esercizio 5 — Contare in spazi diversi (dimensione e scalari)\|5]] | [[#Contare dopo aver capito i vincoli\|Esempi svolti]] |
| Quali conclusioni richiedono davvero la dimensione finita? | [[#Esercizio 12 — Dove finisce il caso finito (zero e basi infinite)\|12]] | [[#Una cautela sul caso infinito\|Il limite delle conclusioni finite]] |

## Esercizi per verificare la comprensione

Gli esercizi 1–4 ricostruiscono il meccanismo dello scambio; 5–8 ne usano le conseguenze; 9–12 collegano prove, esempi e casi limite. Gli enunciati e i riscontri sono redazionali. Quando usi un criterio dimensionale, indica prima lo spazio ambiente, il campo e la sua dimensione.

### Esercizio 1 — Aggiungere togliere e fermarsi (massimale e minimale)

In $\mathbb R^2$ considera le famiglie

$$
A=(e_1),\qquad B=(e_1,e_2),\qquad
C=(e_1,e_2,e_1+e_2),\qquad D=(e_1,e_1+e_2).
$$

Quali sono indipendenti massimali nello spazio ambiente? Quali sono generatori minimali? Per ogni proprietà che manca, mostra concretamente un'aggiunta o una cancellazione che lo prova.

Dimostra poi le due caratterizzazioni di una base: indipendente massimale per inclusione e insieme minimale di generatori. Spiega perché, nel secondo caso, «non posso togliere nulla» non sostituisce la richiesta iniziale di generare.

Se ti blocchi: [[#Una base è al confine fra troppo e troppo poco|massimalità e minimalità]].

Controllo dopo il tentativo: [[#Riscontro 1|riscontro 1]].

### Esercizio 2 — Uno scambio consentito e uno impossibile (scambio elementare)

Nella base canonica di $\mathbb R^3$, poni $w=2e_1-e_2$. Con quali vettori della base puoi scambiare $w$, lasciando invariati gli altri, e ottenere ancora una base? Per ogni scambio consentito scrivi il vettore eliminato come combinazione della nuova famiglia.

Dimostra la regola generale: se $w=\sum_j a_jv_j$ rispetto a una base e $a_h\ne0$, sostituire $v_h$ con $w$ conserva sia lo span sia l'indipendenza. Che cosa succede se $a_h=0$?

Se ti blocchi: [[#Uno scambio che conserva lo spazio|scambio elementare]].

Controllo dopo il tentativo: [[#Riscontro 2|riscontro 2]].

### Esercizio 3 — Conservare ciò che hai già inserito (scambio successivo)

In $\mathbb R^3$ siano

$$
w_1=e_1+e_2,\qquad w_2=e_1+2e_2.
$$

Verifica che sono indipendenti. Parti dalla base canonica, inserisci prima $w_1$ al posto di $e_1$ e scrivi $w_2$ nella base ottenuta. Quale scambio successivo conserva entrambi i vettori assegnati?

Uno studente, al secondo passaggio, elimina proprio $w_1$. La nuova famiglia può ancora essere una base? Perché questa scelta non realizza comunque lo scopo del procedimento? Ricostruisci il passaggio della dimostrazione generale che garantisce un coefficiente non nullo su un vettore originario non ancora sostituito.

Se ti blocchi: [[#Inserire una famiglia indipendente senza tornare indietro|scambi successivi]].

Controllo dopo il tentativo: [[#Riscontro 3|riscontro 3]].

### Esercizio 4 — Più vettori non danno più libertà (confronto fra famiglie)

Supponi che $V$ sia generato da cinque vettori. Può contenere sei vettori indipendenti? Può avere una base di quattro vettori? Se contiene cinque vettori indipendenti, che cosa puoi concludere sullo spazio e sulla famiglia?

Dimostra il confronto «indipendenti $\le$ generatori» senza presupporre che tutte le basi abbiano la stessa lunghezza. Usa poi quel confronto per dimostrare l'uguaglianza delle lunghezze di due basi finite.

Se ti blocchi: [[#Inserire una famiglia indipendente senza tornare indietro|confronto fra famiglie]] · [[#La dimensione è un numero dello spazio|unicità della dimensione]].

Controllo dopo il tentativo: [[#Riscontro 4|riscontro 4]].

### Esercizio 5 — Contare in spazi diversi (dimensione e scalari)

Determina le dimensioni di $K^4$, $M_{2,3}(K)$ e $K[t]_{\le4}$, indicando una base che giustifichi ogni conteggio. Determina poi la dimensione di $\mathbb C^3$ su $\mathbb C$ e su $\mathbb R$, scrivendo in entrambi i casi una base.

Uno studente sostiene che $K[t]_{\le4}$ abbia dimensione $4$ «perché il grado arriva a quattro». Correggilo. Se $K=\mathbb F_2$, il fatto che polinomi diversi possano definire la stessa funzione cambia la dimensione dello spazio dei polinomi formali?

Se ti blocchi: [[#La dimensione è un numero dello spazio|dimensione degli esempi fondamentali]].

Controllo dopo il tentativo: [[#Riscontro 5|riscontro 5]].

### Esercizio 6 — Una lista lunga per un piano (estrazione di una base)

In $\mathbb R^3$ siano

$$
v_1=(1,0,1),\quad v_2=(0,1,1),\quad
v_3=(1,1,2),\quad v_4=(1,-1,0),\quad v_5=0.
$$

Estrai dalla famiglia una base del suo span, esplicitando ogni relazione che permette di cancellare un vettore. Descrivi quel sottospazio mediante una condizione sulle coordinate e calcolane la dimensione. La famiglia iniziale è un sistema di generatori di $\mathbb R^3$?

Spiega perché il procedimento generale di eliminazione termina se la famiglia iniziale è finita.

Se ti blocchi: [[#Da generatori finiti a una base|eliminazione delle ridondanze]] · [[#Estrarre e completare sono operazioni diverse|estrazione]].

Controllo dopo il tentativo: [[#Riscontro 6|riscontro 6]].

### Esercizio 7 — Aggiungere soltanto ciò che manca (completamento)

Completa $u=(1,1,0,0)$ a una base di $\mathbb R^4$ esaminando, in quest'ordine, $e_1,e_2,e_3,e_4$: aggiungi un vettore soltanto quando non è nello span di quelli già conservati. Giustifica le decisioni e l'indipendenza finale.

Dimostra in generale che una famiglia indipendente in uno spazio finitamente generato si può completare a una base usando vettori di una base assegnata. Perché la famiglia di partenza deve essere indipendente? Quale richiesta distingue il completamento dall'estrazione?

Se ti blocchi: [[#Inserire una famiglia indipendente senza tornare indietro|esistenza del completamento]] · [[#Estrarre e completare sono operazioni diverse|procedimento concreto]].

Controllo dopo il tentativo: [[#Riscontro 7|riscontro 7]].

### Esercizio 8 — Uguale dimensione ma posizioni diverse (inclusione)

In $\mathbb R^3$ confronta $U=\operatorname{span}(e_1,e_2)$ e $W=\operatorname{span}(e_1,e_3)$. Hanno la stessa dimensione? Sono uguali? Quale ipotesi manca per applicare il criterio «stessa dimensione, dunque stesso spazio»?

Sia poi $T$ un sottospazio proprio di $\mathbb R^4$ che contiene tre vettori indipendenti. Determina $\dim T$. Dimostra il risultato generale per cui un sottospazio di dimensione uguale all'ambiente finito coincide con esso. Costruisci infine, in uno spazio di dimensione $n$, un sottospazio di ogni dimensione $k$ con $0\le k\le n$.

Se ti blocchi: [[#La dimensione dei sottospazi e il ruolo dell'inclusione|dimensione e inclusione]].

Controllo dopo il tentativo: [[#Riscontro 8|riscontro 8]].

### Esercizio 9 — Due valori che devono coincidere (basi e completamento)

In $V=\mathbb R[t]_{\le4}$ considera

$$
W=\{P\in V:P(0)=P(1)\}.
$$

Trova una base di $W$ usando il criterio del fattore e determina $\dim W$. Completa questa base a una base di $V$ aggiungendo $t$. Dimostra che ogni $P\in V$ si scrive in modo unico come

$$
P(t)=a+bt+t(t-1)Q(t),\qquad \deg Q\le2\ \text{oppure }Q=0,
$$

e ricava $a,b$ dalle valutazioni di $P$. Quale condizione su $a,b$ caratterizza l'appartenenza a $W$?

Se ti blocchi: [[#Contare dopo aver capito i vincoli|polinomi con condizioni di annullamento]] · [[#Quando il numero dei vettori completa la verifica|criteri per una base]].

Controllo dopo il tentativo: [[#Riscontro 9|riscontro 9]].

### Esercizio 10 — Un parametro cambia la dimensione (criteri per una base)

In $\mathbb R^3$, per $a\in\mathbb R$, considera

$$
v_1=(1,0,0),\qquad v_2=(1,1,0),\qquad v_3=(0,a,a-1).
$$

Per quali $a$ la famiglia è una base? Verifica soltanto l'indipendenza nei casi in cui puoi applicare il criterio dimensionale, dichiarando perché quella verifica basta. Nel caso eccezionale, trova una base dello span e descrivilo esattamente.

Spiega perché «tre vettori in $\mathbb R^3$» da solo non basta e perché «due vettori indipendenti in $\mathbb R^3$» non basta per generare l'ambiente.

Se ti blocchi: [[#Quando il numero dei vettori completa la verifica|criteri dimensionali]].

Controllo dopo il tentativo: [[#Riscontro 10|riscontro 10]].

### Esercizio 11 — Costruire una base senza presupporla (sottospazi e campi finiti)

Sia $W\le V$ e supponi che $V$ sia generato da $n$ vettori. Costruisci una base finita di $W$ scegliendo successivamente vettori fuori dallo span di quelli già scelti. Perché non puoi effettuare più di $n$ scelte? Tratta separatamente $W=\{0\}$.

Se poi $K$ ha $q$ elementi e $\dim_KV=d$, quanti elementi ha $V$? Giustifica il conteggio attraverso le coordinate. Uno spazio su $\mathbb F_2$ con $32$ elementi quale dimensione ha? Perché uno spazio reale non nullo di dimensione finita ha invece infiniti elementi?

Se ti blocchi: [[#La dimensione dei sottospazi e il ruolo dell'inclusione|costruzione di una base del sottospazio]] · [[#Quante informazioni servono per descrivere un vettore|dimensione e numero di elementi]].

Controllo dopo il tentativo: [[#Riscontro 11|riscontro 11]].

### Esercizio 12 — Dove finisce il caso finito (zero e basi infinite)

Quali fra $()$ e $(0)$ sono basi dello spazio nullo? Quali generano quello spazio? Quali sono indipendenti? Verifica i criteri dimensionali per $n=0$.

Considera poi $V=K[t]$ e $W=\{tQ(t):Q\in K[t]\}$. Dimostra che $W$ è un sottospazio proprio, che $(t,t^2,t^3,\ldots)$ ne è una base e che questa base è in corrispondenza biunivoca con $(1,t,t^2,\ldots)$, base di $V$. Che cosa mostra questo esempio sull'ipotesi di finitezza nel criterio di uguaglianza dei sottospazi?

Se ti blocchi: [[#Da generatori finiti a una base|spazio nullo]] · [[#Una cautela sul caso infinito|inclusione propria e basi infinite]].

Controllo dopo il tentativo: [[#Riscontro 12|riscontro 12]].

## Teoria da recuperare

Usa i collegamenti iniziali per trovare lo strumento che manca al tentativo. Il percorso delle prove conta: prima esistenza e scambio, poi confronto fra famiglie, poi dimensione e criteri numerici. Usare quei criteri per dimostrare lo scambio invertirebbe la dipendenza logica.

## Quante informazioni servono per descrivere un vettore

Per descrivere un vettore di $\mathbb R^3$ usiamo tre coordinate. Possiamo cambiare riferimento, scegliere direzioni oblique, accorciare o allungare i vettori della base: continueranno a servire tre numeri. Perché non possiamo trovare una base con due vettori particolarmente ben scelti? Perché quattro vettori non possono costituire un riferimento senza ridondanze?

Dire «si vede dal disegno» aiuta l'intuizione in dimensione tre, ma non spiega lo spazio dei polinomi o delle matrici. Ci serve un ragionamento che valga per tutti gli spazi vettoriali sul campo $K$.

L'idea è confrontare due descrizioni mediante **sostituzioni controllate**. Se conosco una base e voglio inserirvi un vettore nuovo, posso togliere un vecchio vettore che il nuovo permette di recuperare. Se continuo senza eliminare i vettori appena inseriti, il numero dei posti disponibili pone un limite alla lunghezza di una famiglia indipendente. Da quel limite nascerà la dimensione.

La dimensione non conta gli elementi dello spazio. La retta reale contiene infiniti vettori, eppure un singolo vettore non nullo ne è una base. Invece un piano vettoriale sul campo $\mathbb F_2$ contiene solo quattro vettori ma ha una base di due elementi. La dimensione conta **quante informazioni scalari indipendenti** servono per ricostruire un vettore dopo avere scelto una base.

## Una base è al confine fra troppo e troppo poco

Nel capitolo precedente una base era una famiglia che genera ed è indipendente. Possiamo riconoscerla anche chiedendo se si può aggiungere o togliere qualcosa. Per formulare con chiarezza queste due descrizioni usiamo dapprima insiemi di vettori; quando li ordiniamo, otteniamo le famiglie con cui scriveremo le coordinate.

Un sottoinsieme $B\subseteq V$ è **indipendente massimale per inclusione** se è indipendente e non è contenuto propriamente in alcun altro insieme indipendente di $V$. Equivalentemente, aggiungere qualsiasi $v\notin B$ produce dipendenza.

Un sottoinsieme $B\subseteq V$ è un **insieme minimale di generatori** se genera $V$ e nessun suo sottoinsieme proprio genera $V$. Equivalentemente, togliendo qualsiasi suo elemento si perde la generazione.

«Massimale» non significa che abbiamo già confrontato il numero di elementi con quello di ogni altro insieme: significa che non possiamo allargare *questo* insieme. «Minimale» ha il significato corrispondente rispetto alla cancellazione. Il confronto delle lunghezze sarà una conclusione successiva.

**Teorema.** Per un insieme $B\subseteq V$ sono equivalenti:

1. $B$ è una base di $V$;
2. $B$ è indipendente massimale per inclusione;
3. $B$ è un insieme minimale di generatori di $V$.

### Dalla base alla massimalità, e ritorno

Se $B$ è una base e $v\notin B$, la generazione dà una combinazione finita

$$
v=a_1b_1+\cdots+a_rb_r,\qquad b_j\in B.
$$

La relazione $v-\sum_ja_jb_j=0$ è non banale, perché il coefficiente di $v$ è $1$. Dunque $B\cup\{v\}$ è dipendente: non si può allargare la base conservando l'indipendenza.

Viceversa, supponi che $B$ sia indipendente massimale. Se non generasse $V$, potremmo scegliere $v\notin\operatorname{span}(B)$. Mostriamo che $B\cup\{v\}$ sarebbe ancora indipendente. In una relazione finita

$$
a_1b_1+\cdots+a_rb_r+cv=0,
$$

se $c\ne0$ potremmo isolare $v$, ottenendo $v\in\operatorname{span}(B)$, impossibile. Deve quindi essere $c=0$; l'indipendenza di $B$ forza allora tutti gli $a_j$ nulli. L'aggiunta sarebbe consentita, contro la massimalità. Perciò $B$ genera e, essendo indipendente, è una base.

### Dalla base alla minimalità, e ritorno

Se $B$ è una base, nessun $b\in B$ appartiene allo span degli altri: altrimenti avremmo una relazione non banale. Togliere $b$ impedisce quindi almeno di generare $b$ stesso. Un sottoinsieme proprio di $B$ omette qualche $b$ ed è ancora meno capace di generarlo. La base è minimale fra i generatori.

Viceversa, supponi che $B$ sia minimale fra i generatori e fosse dipendente. Esisterebbe una relazione finita non banale

$$
a_1b_1+\cdots+a_rb_r=0.
$$

Scegliendo un coefficiente non nullo, per esempio $a_1$, ricaveremmo

$$
b_1=-a_1^{-1}(a_2b_2+\cdots+a_rb_r).
$$

Ogni combinazione che usa $b_1$ si potrebbe riscrivere usando gli altri elementi. Quindi $B\setminus\{b_1\}$ genererebbe ancora $V$, contro la minimalità. Dunque $B$ è indipendente e genera: è una base.

> [!example] Esempi e controesempi — Serve anche la proprietà di partenza
> In $\mathbb R^2$, $\{e_1\}$ è indipendente ma non massimale: si può aggiungere $e_2$. La famiglia $(e_1,e_2,e_1+e_2)$ genera ma non è minimale: il terzo vettore è eliminabile. La base $\{e_1,e_1+e_2\}$ è sia indipendente massimale sia generatrice minimale. L'insieme vuoto non ha elementi eliminabili, ma non genera $\mathbb R^2$: «non posso togliere un elemento» da solo non basta.

Le prove hanno usato soltanto relazioni finite. Queste caratterizzazioni descrivono anche una base infinita già data; non dimostrano però che una base esista in ogni spazio arbitrario. Affrontiamo ora l'esistenza nel caso che possiamo costruire con un procedimento finito.

## Da generatori finiti a una base

Uno spazio è **finitamente generato** se esiste una famiglia finita $(v_1,\ldots,v_m)$ che lo genera. Non stiamo ancora supponendo che quella famiglia sia una base.

**Proposizione.** Ogni famiglia finita generatrice di $V$ contiene una sottofamiglia che è una base di $V$.

*Passo 1 — Se c'è dipendenza, c'è una cancellazione lecita.* In una relazione non banale scegliamo un coefficiente non nullo e isoliamo il vettore corrispondente. Quel vettore è combinazione degli altri; cancellarlo non modifica lo span.

*Passo 2 — Ripetere conservando ciò che serve.* Se la famiglia rimasta è ancora dipendente, cancelliamo un altro vettore ridondante. A ogni passaggio lo span continua a essere $V$.

*Passo 3 — Giustificare la fine.* Il numero dei vettori diminuisce di uno a ogni cancellazione e inizialmente è $m$. Non possiamo cancellare più di $m$ vettori. Quando la famiglia è indipendente, fermiamo il procedimento: genera ancora $V$, dunque è una base.

Il caso dello spazio nullo è compreso. Se tutti i generatori sono nulli, possiamo cancellarli tutti: rimane la famiglia vuota, indipendente e con span $\{0\}$. **Una base dello spazio nullo è vuota**, non la famiglia formata dal solo vettore nullo.

**Esempio svolto.** In $\mathbb R^2$ consideriamo

$$
(e_1,\ e_2,\ e_1+e_2,\ 2e_1,\ 0).
$$

Possiamo cancellare $0$, poi $2e_1$, poi $e_1+e_2$, perché sono già combinazioni dei vettori conservati. Rimane $(e_1,e_2)$, una base. Avremmo potuto conservare $(e_1+e_2,e_2)$: infatti $e_1=(e_1+e_2)-e_2$. La base estratta non è unica.

> [!abstract] Concetto chiave — Esistenza prima del conteggio
> La generazione finita permette di eliminare ridondanze fino a ottenere una base. Non abbiamo ancora dimostrato che due scelte diverse abbiano la stessa lunghezza: è proprio ciò che deve spiegare il lemma di scambio.

## Uno scambio che conserva lo spazio

Immagina di avere una lista di strumenti e di sostituirne uno con uno strumento nuovo. Per non perdere capacità, devi poter ricostruire quello tolto usando ciò che rimane. In algebra lineare questa ricostruzione è un'uguaglianza.

**Lemma di scambio elementare.** Siano $v_1,\ldots,v_m\in V$ e

$$
w=a_1v_1+\cdots+a_mv_m.
$$

Se $a_h\ne0$, sostituire $v_h$ con $w$ conserva lo span. Se la famiglia iniziale è indipendente, la nuova famiglia è indipendente.

*Passo 1 — Ricostruire il vettore eliminato.* Dall'uguaglianza si ricava

$$
v_h=a_h^{-1}w-\sum_{j\ne h}a_h^{-1}a_jv_j.
$$

Dunque ogni vecchio vettore appartiene allo span della nuova famiglia: quelli diversi da $v_h$ sono ancora presenti, mentre $v_h$ ha la rappresentazione appena trovata. Viceversa, $w$ è nello span della famiglia iniziale e gli altri nuovi vettori sono vecchi vettori. Le due inclusioni dimostrano l'uguaglianza degli span.

*Passo 2 — Conservare l'indipendenza quando c'era.* Supponiamo indipendente la famiglia iniziale e prendiamo una relazione

$$
cw+\sum_{j\ne h}c_jv_j=0.
$$

Sostituendo lo sviluppo di $w$ otteniamo

$$
ca_hv_h+\sum_{j\ne h}(ca_j+c_j)v_j=0.
$$

L'indipendenza iniziale forza $ca_h=0$. Poiché $a_h\ne0$, segue $c=0$. Le altre uguaglianze diventano $c_j=0$. La nuova famiglia è indipendente.

Il primo passaggio non richiede che la famiglia iniziale sia indipendente: vale anche per generatori ridondanti. Il secondo usa invece espressamente quell'ipotesi. Questa distinzione ci consentirà di confrontare una famiglia indipendente con un sistema qualsiasi di generatori.

**Esempio svolto.** In $\mathbb R^3$ sia $w=e_1+2e_2-3e_3$. Possiamo sostituire $e_2$ con $w$, perché il suo coefficiente è $2\ne0$. Infatti

$$
e_2=\frac12w-\frac12e_1+\frac32e_3.
$$

La famiglia $(e_1,w,e_3)$ genera ancora tutto $\mathbb R^3$ ed è indipendente per il lemma; quindi è una base. Il risultato ha usato la struttura di spazio reale: in un campo in cui $2=0$, questa particolare sostituzione non sarebbe giustificata da quella formula.

Se la famiglia iniziale è una base e il coefficiente di $v_h$ è zero, la sostituzione fallisce: $w$ è già combinazione dei vettori rimasti, perciò la nuova famiglia è dipendente e non recupera il vettore eliminato. Per esempio, $w=e_1+e_2$ non può sostituire $e_3$ nella base canonica di $\mathbb R^3$.

> [!warning] Attenzione — È il coefficiente scelto che deve essere non nullo
> Non basta che $w$ sia non nullo. Per eliminare una determinata posizione bisogna poter isolare il vettore in quella posizione. Se il coefficiente contiene un parametro, prima si distingue il caso in cui è zero. Questa è una cautela redazionale che esplicita l'ipotesi del lemma.

## Inserire una famiglia indipendente senza tornare indietro

Per confrontare le lunghezze dobbiamo ripetere lo scambio conservando i vettori già inseriti.

**Teorema di scambio.** Sia $(v_1,\ldots,v_m)$ una famiglia generatrice di $V$ e sia $(w_1,\ldots,w_k)$ una famiglia indipendente di vettori di $V$. Allora:

$$
k\le m.
$$

Inoltre possiamo sostituire $k$ posizioni della famiglia generatrice con $w_1,\ldots,w_k$, conservando la generazione. Se la famiglia iniziale è una base, dopo gli scambi otteniamo una base che contiene tutti i $w_i$.

### Il primo inserimento

Se $k=0$ non dobbiamo fare nulla. Se $k>0$, l'indipendenza implica $w_1\ne0$. Poiché i $v_j$ generano, possiamo scrivere $w_1=\sum_ja_jv_j$. Almeno un coefficiente è non nullo: altrimenti $w_1=0$. Il lemma permette quindi di sostituire il vettore corrispondente con $w_1$.

La nuova famiglia genera ancora $V$. Se partivamo da una base, rimane anche indipendente.

### Il passaggio che protegge i vettori inseriti

Supponiamo di avere già inserito $w_1,\ldots,w_r$, lasciando $m-r$ vettori originari, che indichiamo con $v_{j_1},\ldots,v_{j_{m-r}}$. La famiglia

$$
(w_1,\ldots,w_r,\ v_{j_1},\ldots,v_{j_{m-r}})
$$

genera $V$. Se esiste un successivo $w_{r+1}$, possiamo svilupparlo:

$$
w_{r+1}=\sum_{i=1}^r a_iw_i+\sum_{\ell=1}^{m-r}b_\ell v_{j_\ell}.
$$

**Almeno un $b_\ell$ deve essere non nullo.** Se fossero tutti nulli, $w_{r+1}$ sarebbe combinazione di $w_1,\ldots,w_r$ e la famiglia assegnata $(w_1,\ldots,w_k)$ sarebbe dipendente. Questo contraddice l'ipotesi.

Scegliamo dunque una posizione originaria con $b_\ell\ne0$ e scambiamo quel vettore con $w_{r+1}$. La generazione si conserva e **nessuno dei $w_i$ già inseriti viene eliminato**. Se avevamo una base, il lemma conserva anche l'indipendenza.

### Perché non possono esserci più indipendenti che generatori

Se $k>m$, dopo $m$ inserimenti non rimarrebbe alcun vettore originario. La famiglia $(w_1,\ldots,w_m)$ genererebbe $V$. Ma allora anche $w_{m+1}$ sarebbe nel suo span, contro l'indipendenza dei $w_i$. Pertanto $k\le m$.

Questo argomento copre anche $m=0$: se la famiglia vuota genera, $V=\{0\}$ e non esiste nemmeno un vettore indipendente da inserire.

> [!abstract] Concetto chiave — Indipendenti al più quanti i generatori
> Una famiglia indipendente in uno spazio generato da $m$ vettori ha al massimo $m$ elementi. Se i generatori costituiscono una base, la famiglia indipendente può esservi inserita conservando tutti i propri vettori e ottenendo ancora una base.

Per una famiglia indipendente eventualmente infinita il limite resta valido: se avesse più di $m$ elementi, potremmo sceglierne $m+1$, che dovrebbero essere indipendenti perché sottofamiglia di una famiglia indipendente. Il confronto finito appena dimostrato lo esclude. **In uno spazio finitamente generato ogni famiglia indipendente è finita.**

**Esempio svolto: due inserimenti.** In $\mathbb R^3$ scegliamo

$$
w_1=e_1+e_2,\qquad w_2=e_1+2e_2.
$$

Sono indipendenti: da $aw_1+bw_2=0$ leggiamo $a+b=0$, $a+2b=0$, dunque $b=0$ e $a=0$. Inseriamo prima $w_1$ al posto di $e_1$, ottenendo $(w_1,e_2,e_3)$. Ora

$$
w_2=w_1+e_2.
$$

Possiamo sostituire $e_2$, ottenendo $(w_1,w_2,e_3)$. Si potrebbe anche sostituire $w_1$: il coefficiente è non nullo e $(w_2,e_2,e_3)$ sarebbe ancora una base. Tuttavia perderemmo il primo vettore assegnato. Lo scopo del teorema non è soltanto ottenere una base a ogni passo: è **ottenere una base che contenga tutta la famiglia indipendente scelta**.

> [!warning] Attenzione — Uno scambio corretto può essere la scelta sbagliata nel procedimento
> Nella [[_transcripts/Geometria 1/2026-10-07 - Coordinate, basi e dimensione degli spazi vettoriali|lezione del 7 ottobre]] il punto delicato è conservare i vettori già inseriti: la relazione del vettore successivo deve coinvolgere un vecchio vettore non ancora sostituito. Senza questo passaggio, dire soltanto «ripeto lo scambio» non dimostra il confronto.

## La dimensione è un numero dello spazio

Ora possiamo giustificare un conteggio indipendente dalle scelte.

**Teorema.** Se $V$ è finitamente generato, tutte le sue basi sono finite e hanno lo stesso numero di elementi.

*Passo 1 — Una base finita esiste.* L'estrazione da una famiglia finita generatrice l'ha già costruita. Sia $B=(b_1,\ldots,b_n)$.

*Passo 2 — Ogni altra base è finita.* Qualsiasi base $C$ è indipendente. Poiché $B$ genera con $n$ vettori, il confronto precedente mostra che $C$ ha al massimo $n$ elementi.

*Passo 3 — Confrontare nei due versi.* Scriviamo dunque $C=(c_1,\ldots,c_r)$. Essendo $C$ indipendente e $B$ generatrice, $r\le n$. Essendo $B$ indipendente e $C$ generatrice, $n\le r$. Perciò $r=n$.

La **dimensione di $V$ sul campo $K$** è questo numero:

$$
\dim_KV=n.
$$

Diremo anche che $V$ è di dimensione finita. Questa espressione è ora equivalente a «finitamente generato»: una base finita è una famiglia finita generatrice, e da generatori finiti abbiamo ottenuto una base finita. Quando il campo è chiaro scriviamo semplicemente $\dim V$.

La dimensione non è stata definita contando una particolare lista di generatori. Una famiglia ridondante può avere molti più vettori. È il numero degli elementi di una base, e il teorema appena provato garantisce che questo numero sia una proprietà dello spazio.

### Esempi da basi già conosciute

La base canonica $(e_1,\ldots,e_n)$ di $K^n$ dà $\dim_KK^n=n$. Per $n=0$, $K^0$ ha un solo elemento, la tupla vuota, che è il suo vettore nullo; la base è vuota e la dimensione è zero.

Le matrici $E_{ij}$, una per ogni posizione di una matrice $m\times n$, formano una base di $M_{m,n}(K)$. Ci sono $mn$ posizioni, dunque

$$
\dim_KM_{m,n}(K)=mn.
$$

I monomi $(1,t,\ldots,t^d)$ formano una base di $K[t]_{\le d}$ per ogni intero $d\ge0$. Il termine costante è un vettore della base a tutti gli effetti:

$$
\dim_KK[t]_{\le d}=d+1.
$$

Questa conclusione riguarda polinomi formali, quindi vale anche se $K$ è finito. L'eventuale coincidenza di funzioni polinomiali non identifica oggetti diversi in $K[t]$.

### Il campo rimane parte del conteggio

Come spazio su $\mathbb C$, $\mathbb C$ ha base $(1)$ e dimensione $1$. Come spazio su $\mathbb R$, ha base $(1,i)$ e dimensione $2$: ogni complesso è $a+bi$ con $a,b$ reali, in modo unico.

Più in generale,

$$
\dim_{\mathbb C}\mathbb C^r=r,\qquad
\dim_{\mathbb R}\mathbb C^r=2r.
$$

Nel secondo caso una base è

$$
(e_1,ie_1,\ldots,e_r,ie_r).
$$

Genera perché ogni coordinata complessa si separa in parte reale e immaginaria. È indipendente su $\mathbb R$ perché una relazione $\sum_j(a_j+ib_j)e_j=0$ forza, coordinata per coordinata, $a_j=b_j=0$.

> [!warning] Attenzione — Il numero non appartiene al solo insieme
> Scrivere «la dimensione di $\mathbb C$» senza specificare gli scalari lascia aperte due domande diverse. La [[Notes/Geometria 1/Lectures/2026-10-14 - Basi, sottospazi e sistemi lineari|lezione del 14 ottobre]] mette in evidenza il cambio di campo attraverso famiglie di vettori complessi. Un conteggio corretto deve riferirsi alla struttura vettoriale dichiarata.

## Quando il numero dei vettori completa la verifica

Sia ora $\dim_KV=n$. Dal confronto fondamentale ricaviamo immediatamente:

- ogni famiglia indipendente in $V$ ha al massimo $n$ vettori;
- ogni famiglia finita che genera $V$ ha almeno $n$ vettori.

Per la prima frase confrontiamo con una base generatrice di $n$ elementi. Per la seconda confrontiamo una base indipendente di $n$ elementi con la famiglia generatrice.

In particolare, **ogni famiglia di più di $n$ vettori è dipendente**, mentre **meno di $n$ vettori non possono generare $V$**. Sono due controlli veloci, ma non dicono che una famiglia abbastanza piccola sia indipendente o che una abbastanza grande generi.

**Criteri per una base.** Una famiglia di **esattamente $n$ vettori di $V$** è una base se e solo se è indipendente; equivalentemente, è una base se e solo se genera $V$.

*Dal caso indipendente alla base.* Inseriamo gli $n$ vettori indipendenti in una base di $n$ elementi mediante il teorema di scambio. Devono sostituire tutte le posizioni: la famiglia ottenuta coincide con quella assegnata ed è una base.

*Dal caso generatore alla base.* Estraiamo una base dalla famiglia di $n$ generatori. Qualsiasi base di $V$ ha $n$ elementi, quindi l'estrazione non può aver eliminato alcuna posizione: la famiglia iniziale era già una base.

Il verso inverso in entrambi i criteri è contenuto nella definizione di base.

> [!abstract] Concetto chiave — Una verifica sola, ma con il numero giusto
> Se sai già che $\dim V=n$ e hai $n$ vettori **appartenenti a $V$**, puoi provare soltanto indipendenza oppure soltanto generazione. La dimensione fornisce l'altra proprietà. Senza queste ipotesi rimangono necessarie le due verifiche della definizione.

**Esempio svolto.** In $\mathbb R[t]_{\le2}$, di dimensione $3$, prendiamo

$$
P_1=1+t,\qquad P_2=t+t^2,\qquad P_3=t^2.
$$

Da $aP_1+bP_2+cP_3=0$ il termine costante dà $a=0$, il coefficiente di $t$ dà $a+b=0$, dunque $b=0$, e quello di $t^2$ dà $b+c=0$, dunque $c=0$. I tre polinomi sono indipendenti; essendo tre vettori dello spazio di dimensione tre, formano una base. Non occorre ora risolvere una seconda volta il problema con un polinomio generico.

> [!example] Esempi e controesempi — Che cosa non dice il conteggio
> In $\mathbb R^3$, $(e_1,e_2)$ è indipendente ma non genera. La famiglia $(e_1,e_2,e_1+e_2)$ ha esattamente tre vettori ma non è una base: è dipendente e rimane nel piano $x_3=0$. La famiglia $(e_1,e_2,e_3,e_1+e_2)$ genera, ma contiene quattro vettori e non può essere indipendente. Il numero è uno strumento per completare una proprietà verificata, non un sostituto di ogni verifica.

Questi criteri sono i risultati che nelle lezioni del [[Notes/Geometria 1/Lectures/2026-10-13 - Somma diretta e dimensione dei sottospazi|13 ottobre]] e del [[Notes/Geometria 1/Lectures/2026-10-14 - Basi, sottospazi e sistemi lineari|14 ottobre]] permettono di rendere più rapide le verifiche sulle basi. Non bisogna usarli prima di conoscere la dimensione dell'ambiente.

## Estrarre e completare sono operazioni diverse

**Estrarre** una base significa partire da generatori e cancellare ridondanze. **Completare** significa partire da una famiglia indipendente e aggiungere ciò che manca. Nel primo caso si conserva lo span; nel secondo si conserva ogni vettore assegnato e si aumenta lo span fino all'ambiente.

### Estrarre da generatori

Se $G=(v_1,\ldots,v_m)$ genera $V$, la cancellazione di vettori dipendenti dagli altri produce una base contenuta nella famiglia di partenza. Se $G$ non genera l'intero ambiente ma solo $U=\operatorname{span}(G)$, il procedimento produce una base di $U$, non automaticamente dell'ambiente.

### Completare conservando la famiglia iniziale

**Teorema di completamento.** Ogni famiglia indipendente $(w_1,\ldots,w_k)$ in uno spazio $V$ di dimensione finita $n$ si estende a una base di $V$. Si aggiungono esattamente $n-k$ vettori; è possibile sceglierli fra i vettori di una base già assegnata.

La prova è contenuta nel teorema di scambio. Partiamo da una base $(v_1,\ldots,v_n)$ e vi inseriamo i $w_i$, preservando i precedenti. Al termine otteniamo una base composta dai $w_i$ e da $n-k$ dei vettori originari.

Possiamo anche esaminare una base nota e aggiungere solo i vettori fuori dallo span della famiglia conservata. L'aggiunta mantiene l'indipendenza: in una relazione con coefficiente non nullo sul vettore aggiunto potremmo ricostruirlo dai precedenti, contro la scelta; se quel coefficiente è zero, usiamo l'indipendenza precedente. Quando tutti i vettori della base nota sono nello span, la famiglia conservata genera $V$. Essendo anche indipendente, è una base.

**Esempio svolto.** Completiamo $w=(1,1,0)$ a una base di $\mathbb R^3$. Possiamo aggiungere $e_1$, che non è multiplo di $w$. Non aggiungiamo $e_2$, perché $e_2=w-e_1$. Aggiungiamo invece $e_3$: i vettori già conservati hanno terza coordinata zero. Otteniamo $(w,e_1,e_3)$, indipendente e generatrice.

Anche $(w,e_2,e_3)$ è una base: è fisso il numero delle aggiunte, non la loro identità.

> [!warning] Attenzione — Una famiglia dipendente non si completa mantenendola tutta
> Se una relazione non banale è già presente, aggiungere vettori non la elimina: basta assegnare coefficiente zero ai nuovi vettori. Prima di completare occorre che la famiglia iniziale sia indipendente. Per generatori ridondanti si estrae una base dello span, poi eventualmente la si completa nell'ambiente. Questa distinzione redazionale evita di confondere due procedimenti con scopi diversi.

## La dimensione dei sottospazi e il ruolo dell'inclusione

Sia $V$ di dimensione finita $n$ e sia $W\le V$. Vogliamo dimostrare che anche $W$ ha una base finita. Dire soltanto che «$W$ è uno spazio vettoriale» non dà ancora, con gli strumenti finora sviluppati, una costruzione della sua base.

Se $W=\{0\}$, la base è vuota. Altrimenti scegliamo $w_1\ne0$ in $W$. Se non genera $W$, scegliamo $w_2$ fuori dal suo span; se i due non generano, scegliamo $w_3$ fuori dallo span dei primi due, e così via. Ogni aggiunta mantiene l'indipendenza, per l'argomento appena usato nel completamento.

Non possiamo fare $n+1$ scelte: otterremmo $n+1$ vettori indipendenti in $V$, contro il confronto. Il procedimento si ferma dunque dopo al massimo $n$ passi, quando non esistono altri vettori di $W$ fuori dallo span. La famiglia scelta genera $W$ ed è indipendente, quindi ne è una base finita. Abbiamo provato

$$
0\le\dim W\le\dim V=n.
$$

Una base di $W$ è anche una famiglia indipendente in $V$, quindi può essere completata a una base di $V$. Le operazioni sono le stesse per restrizione, perciò una relazione fra vettori di $W$ è la medesima sia in $W$ sia in $V$.

### Quando la stessa dimensione forza l'uguaglianza

**Proposizione.** Se $W\le V$, $\dim V=n<\infty$ e $\dim W=n$, allora $W=V$.

Una base di $W$ ha $n$ vettori indipendenti in $V$. Per il criterio dimensionale, è una base anche di $V$. Pertanto

$$
W=\operatorname{span}(w_1,\ldots,w_n)=V.
$$

Equivalentemente, un sottospazio proprio di uno spazio finito dimensionale ha dimensione strettamente minore. Più in generale, se $U\subseteq W$ sono sottospazi finito dimensionali e $\dim U=\dim W$, applicando la proposizione con ambiente $W$ otteniamo $U=W$.

L'inclusione non è decorativa. I piani $\operatorname{span}(e_1,e_2)$ e $\operatorname{span}(e_1,e_3)$ hanno entrambi dimensione $2$ in $\mathbb R^3$, ma sono diversi: $e_2$ appartiene soltanto al primo. Sapere soltanto che due sottospazi hanno la stessa dimensione non ne determina la posizione.

> [!abstract] Concetto chiave — Confrontare una parte con il tutto
> In dimensione finita, inclusione e uguaglianza delle dimensioni implicano uguaglianza dei sottospazi. Per usare il criterio devi avere entrambe le informazioni, sullo stesso campo.

### Ogni dimensione possibile si realizza

Scelta una base $(v_1,\ldots,v_n)$ di $V$, per $0\le k\le n$ poniamo

$$
W_k=\operatorname{span}(v_1,\ldots,v_k).
$$

La famiglia dei primi $k$ vettori è indipendente perché sottofamiglia di una base e genera $W_k$ per definizione. Quindi ne è una base e $\dim W_k=k$. Per $k=0$ usiamo lo span della famiglia vuota e otteniamo $\{0\}$; per $k=n$ otteniamo $V$.

Questa osservazione restituisce la classificazione geometrica già incontrata: i sottospazi di $\mathbb R^2$ hanno dimensione $0,1$ o $2$, dunque sono lo zero, rette per l'origine o tutto il piano. In $\mathbb R^3$ le possibilità sono zero, rette, piani per l'origine e tutto lo spazio. Non è una classificazione dei sottoinsiemi arbitrari del piano o dello spazio: la chiusura per combinazioni lineari è essenziale.

## Contare dopo aver capito i vincoli

Una condizione scritta sull'oggetto può suggerire una base più adatta di quella canonica. Prima comprendiamo che cosa la condizione obbliga a fare; poi contiamo.

### Polinomi con due valori nulli

In $V=\mathbb R[t]_{\le3}$ consideriamo $W=\{P:P(0)=P(1)=0\}$. Il criterio del fattore dà $P=tQ$; valutando in $1$ otteniamo $Q(1)=0$, quindi $Q=(t-1)R$. Ne segue

$$
P=t(t-1)R,\qquad R\in\mathbb R[t]_{\le1}.
$$

Questo comprende il caso $P=0$, con $R=0$. Il limite sul grado di $R$ segue dal grado del prodotto quando $P\ne0$.

Scrivendo $R=a+bt$ otteniamo

$$
P=a\,t(t-1)+b\,t^2(t-1).
$$

I due polinomi generano $W$. Sono indipendenti perché hanno gradi distinti e sono non nulli, oppure cancellando il fattore non nullo $t(t-1)$ da una relazione. Dunque

$$
\dim W=2.
$$

La conclusione non nasce dal solo slogan «due condizioni tolgono due dimensioni». Le condizioni potrebbero essere ripetute o dipendere l'una dall'altra: qui è la costruzione della base a giustificare il numero.

Possiamo completare questa base a una base di $V$ aggiungendo $1,t$. Per una relazione

$$
a+bt+c\,t(t-1)+d\,t^2(t-1)=0,
$$

la valutazione in $0$ dà $a=0$, quella in $1$ dà $a+b=0$, dunque $b=0$. Rimane la relazione fra i due vettori della base di $W$, quindi $c=d=0$. Abbiamo quattro vettori indipendenti in $V$, di dimensione $4$: sono una base. Il problema generico è così risolto senza dover inseguire separatamente ogni coefficiente di un polinomio.

L'esempio riprende il tipo di condizioni sui polinomi della [[Notes/Geometria 1/Lectures/2026-10-14 - Basi, sottospazi e sistemi lineari|lezione del 14 ottobre]], esplicitando l'estrazione dei fattori e il limite di grado.

Le basi traducono così un vincolo sugli oggetti in un numero di coefficienti liberi. Nei capitoli sul [[Books/Geometria-I/10 - Il metodo di Gauss|metodo di Gauss]] e sul [[Books/Geometria-I/13 - Calcolare basi somme e intersezioni|calcolo dei sottospazi]] renderemo sistematico il passaggio fra equazioni e generatori.

## Una cautela sul caso infinito

Gli esempi del capitolo precedente mostrano che $(1,t,t^2,\ldots)$ è una base infinita di $K[t]$. Abbiamo provato direttamente la generazione mediante somme finite e l'indipendenza confrontando i coefficienti. Non abbiamo bisogno, per questo esempio, di un teorema generale sull'esistenza di basi arbitrarie.

Tuttavia non possiamo trasferire ogni conclusione numerica del caso finito al caso infinito. Consideriamo

$$
W=tK[t]=\{tQ(t):Q\in K[t]\}\subseteq K[t]=V.
$$

È un sottospazio proprio: ogni suo elemento ha termine costante nullo, mentre $1\notin W$. La famiglia $(t,t^2,t^3,\ldots)$ ne è una base, per gli stessi argomenti usati per i monomi di $V$. Le due basi si corrispondono mediante

$$
t^j\longmapsto t^{j+1},\qquad j=0,1,2,\ldots.
$$

Hanno dunque la stessa cardinalità, eppure $W\ne V$. Il criterio «inclusione più uguale dimensione implica uguaglianza» richiede la dimensione finita. Nel caso infinito, togliere il primo elemento di una lista infinita non ne riduce necessariamente la cardinalità.

Useremo dunque le formule e i criteri dimensionali nel caso finito dichiarato.

## Fonti

Le caratterizzazioni di una base come indipendente massimale e generatrice minimale, l'esistenza nel caso finitamente generato, il lemma di scambio e l'uguaglianza delle lunghezze delle basi provengono dalla [[Notes/Geometria 1/Lectures/2026-10-07 - Coordinate, basi e dimensione degli spazi vettoriali|nota del 7 ottobre]] e dalla corrispondente [[_transcripts/Geometria 1/2026-10-07 - Coordinate, basi e dimensione degli spazi vettoriali|trascrizione]]. Il passaggio che conserva i vettori già inseriti nello scambio è stato esplicitato nella prova, in accordo con la discussione della lezione. Il confronto è formulato anche per una famiglia generatrice ridondante, distinguendo la conservazione dello span dalla conservazione dell'indipendenza.

Dimensione dei sottospazi, completamento e realizzazione delle dimensioni possibili sono ripresi dalla [[Notes/Geometria 1/Lectures/2026-10-13 - Somma diretta e dimensione dei sottospazi|nota del 13 ottobre]] e dalla relativa [[_transcripts/Geometria 1/2026-10-13 - Somma diretta e dimensione dei sottospazi|trascrizione]]. I criteri numerici per le basi, l'estrazione e il completamento, il ruolo del campo e gli esempi di condizioni sui polinomi sono sviluppati anche nella [[Notes/Geometria 1/Lectures/2026-10-14 - Basi, sottospazi e sistemi lineari|nota del 14 ottobre]] e nella [[_transcripts/Geometria 1/2026-10-14 - Basi, sottospazi e sistemi lineari|trascrizione]].

Gli esempi numerici, gli esercizi e tutti i riscontri sono redazionali. La costruzione finita di una base del sottospazio è resa esplicita per non presupporre un teorema generale di esistenza di basi; il confronto mediante $tK[t]\subsetneq K[t]$ e il conteggio sui campi finiti sono raccordi didattici aggiunti. Per la gestione delle ricostruzioni delle fonti e il perimetro complessivo: [[Books/Geometria-I/90 - Fonti e criteri editoriali|fonti e criteri editoriali]].

## Riscontri degli esercizi

Apri il riscontro dopo avere scritto un tentativo. Per una prova confronta anche l'ordine delle dipendenze: il numero dei vettori di una base non può essere usato per dimostrare il risultato che lo rende indipendente dalla base scelta.

### Riscontro 1

> [!tip]- Riscontro 1
> $B$ e $D$ sono basi, quindi indipendenti massimali e generatori minimali. Per $D$, la relazione $ae_1+b(e_1+e_2)=0$ dà $b=0$ dalla seconda coordinata e poi $a=0$; inoltre $e_2=(e_1+e_2)-e_1$. $A$ è indipendente ma non massimale: puoi aggiungere $e_2$; non genera $\mathbb R^2$. $C$ genera ma non è minimale: puoi cancellare $e_1+e_2$; non è indipendente perché $(e_1+e_2)-e_1-e_2=0$. Per la prova generale, una base non si allarga perché ogni nuovo vettore è già nello span, e non si restringe perché nessun suo vettore è nello span degli altri. Viceversa, un indipendente massimale deve generare, altrimenti potresti aggiungere un vettore fuori dallo span; un generatore minimale deve essere indipendente, altrimenti potresti isolare e cancellare un vettore ridondante. Senza la generazione iniziale persino l'insieme vuoto soddisfa «non posso togliere nulla», ma non genera un ambiente non nullo.

Torna a [[#Esercizio 1 — Aggiungere togliere e fermarsi (massimale e minimale)|esercizio 1]].

### Riscontro 2

> [!tip]- Riscontro 2
> Puoi scambiare $w$ con $e_1$ oppure con $e_2$: $e_1=(w+e_2)/2$ ed $e_2=2e_1-w$. Non puoi scambiarlo con $e_3$: la famiglia $(e_1,e_2,w)$ rimane nel piano di terza coordinata zero ed è dipendente. In generale, $a_h\ne0$ permette di isolare $v_h=a_h^{-1}w-\sum_{j\ne h}a_h^{-1}a_jv_j$, provando l'uguaglianza degli span con due inclusioni. In una relazione fra i nuovi vettori, il coefficiente di $v_h$ dopo la sostituzione è $ca_h$; l'indipendenza iniziale dà $c=0$ e poi tutti gli altri coefficienti nulli. Se $a_h=0$ rispetto a una base, $w$ è combinazione dei vettori rimasti, quindi la nuova famiglia è dipendente e non genera il vettore eliminato.

Torna a [[#Esercizio 2 — Uno scambio consentito e uno impossibile (scambio elementare)|esercizio 2]].

### Riscontro 3

> [!tip]- Riscontro 3
> La relazione $aw_1+bw_2=0$ dà $a+b=0$ e $a+2b=0$, perciò $a=b=0$. Dopo il primo inserimento la base è $(w_1,e_2,e_3)$ e $w_2=w_1+e_2$. Sostituendo $e_2$ ottieni $(w_1,w_2,e_3)$, una base contenente entrambi. Sostituendo invece $w_1$ ottieni $(w_2,e_2,e_3)$, anch'essa una base per il lemma, ma hai perso il primo vettore assegnato. Nel passaggio generale, se tutti i coefficienti sui vecchi vettori rimasti fossero nulli, il vettore nuovo sarebbe nello span dei $w_i$ già inseriti, contro l'indipendenza della famiglia assegnata. Devi dunque scegliere uno di quei coefficienti non nulli: così nessun $w_i$ precedente viene eliminato.

Torna a [[#Esercizio 3 — Conservare ciò che hai già inserito (scambio successivo)|esercizio 3]].

### Riscontro 4

> [!tip]- Riscontro 4
> Sei indipendenti non sono possibili; una base di quattro vettori è possibile, per esempio in $\mathbb R^4$ con generatori $(e_1,e_2,e_3,e_4,0)$. Se ci sono cinque indipendenti, lo scambio li inserisce nei cinque posti della famiglia generatrice e alla fine essi stessi generano: sono una base, quindi la dimensione è $5$. Per provare il confronto senza usare la dimensione, conserva a ogni passo i vettori indipendenti inseriti e sostituisci un vettore originario con coefficiente non nullo. Se gli indipendenti fossero più dei generatori, dopo aver esaurito i posti il successivo sarebbe combinazione dei precedenti: contraddizione. Per due basi finite di lunghezze $r,s$, applica il confronto nei due versi: $r\le s$ e $s\le r$, dunque $r=s$.

Torna a [[#Esercizio 4 — Più vettori non danno più libertà (confronto fra famiglie)|esercizio 4]].

### Riscontro 5

> [!tip]- Riscontro 5
> Le dimensioni sono $4$, $6$ e $5$: usa rispettivamente la base canonica di $K^4$, le sei matrici $E_{ij}$ con $1\le i\le2$, $1\le j\le3$, e i cinque monomi $(1,t,t^2,t^3,t^4)$. Lo spazio $\mathbb C^3$ ha dimensione complessa $3$, con base $(e_1,e_2,e_3)$; ha dimensione reale $6$, con base $(e_1,ie_1,e_2,ie_2,e_3,ie_3)$. L'errore sul grado è dimenticare il termine costante: da $0$ a $4$ ci sono cinque esponenti. Su $\mathbb F_2$ restano cinque coefficienti formali indipendenti; identificare due polinomi perché danno la stessa funzione cambierebbe l'oggetto studiato, non correggerebbe questo conteggio.

Torna a [[#Esercizio 5 — Contare in spazi diversi (dimensione e scalari)|esercizio 5]].

### Riscontro 6

> [!tip]- Riscontro 6
> $v_3=v_1+v_2$, $v_4=v_1-v_2$ e $v_5=0$: puoi cancellare questi tre vettori conservando $v_1,v_2$. Sono indipendenti perché le prime due coordinate di $av_1+bv_2=0$ danno $a=b=0$. Il loro span è $\{(a,b,a+b):a,b\in\mathbb R\}$, cioè il piano $z=x+y$, di dimensione $2$. Non genera $\mathbb R^3$: per esempio $(0,0,1)$ non soddisfa la condizione. Ogni cancellazione lecita elimina un vettore senza cambiare lo span; da una lista finita il numero dei vettori diminuisce e il procedimento deve fermarsi in una famiglia indipendente.

Torna a [[#Esercizio 6 — Una lista lunga per un piano (estrazione di una base)|esercizio 6]].

### Riscontro 7

> [!tip]- Riscontro 7
> Conserva $u$ e aggiungi $e_1$, che non è suo multiplo. Scarta $e_2=u-e_1$. Aggiungi $e_3$, perché i precedenti hanno terza coordinata zero, e poi $e_4$, perché i precedenti hanno quarta coordinata zero. La famiglia $(u,e_1,e_3,e_4)$ è indipendente: in una relazione la seconda coordinata dà il coefficiente di $u$ nullo, poi la prima quello di $e_1$, la terza quello di $e_3$ e la quarta quello di $e_4$. Genera anche tutti i canonici, quindi è una base. In generale, lo scambio inserisce la famiglia indipendente in una base nota e conserva alcuni vettori di quest'ultima. Una famiglia dipendente non può essere contenuta in una base: la sua relazione non banale rimarrebbe valida dopo ogni aggiunta. Nell'estrazione cancelli vettori conservando lo span; nel completamento conservi tutti i vettori assegnati e aggiungi direzioni.

Torna a [[#Esercizio 7 — Aggiungere soltanto ciò che manca (completamento)|esercizio 7]].

### Riscontro 8

> [!tip]- Riscontro 8
> $U$ e $W$ hanno entrambi dimensione $2$, ma $e_2\in U\setminus W$ ed $e_3\in W\setminus U$: manca l'inclusione in un verso. Per $T$ i tre indipendenti danno $\dim T\ge3$, mentre $T\subsetneq\mathbb R^4$ dà $\dim T<4$; quindi $\dim T=3$. Se $W\le V$ e le dimensioni finite sono entrambe $n$, una base di $W$ è una famiglia di $n$ indipendenti in $V$, dunque una base di $V$, e i due span coincidono. Per costruire dimensione $k$, scegli i primi $k$ vettori di una base di $V$ e prendine lo span; sono una base di quello span. Per $k=0$ ottieni lo spazio nullo.

Torna a [[#Esercizio 8 — Uguale dimensione ma posizioni diverse (inclusione)|esercizio 8]].

### Riscontro 9

> [!tip]- Riscontro 9
> Se $P(0)=P(1)$, il polinomio $P-P(0)$ si annulla in $0$ e $1$, dunque è $t(t-1)Q$ con $Q\in\mathbb R[t]_{\le2}$. Una base di $W$ è $(1,t(t-1),t^2(t-1),t^3(t-1))$: genera per questa rappresentazione; in una relazione nulla, la valutazione in $0$ annulla il coefficiente di $1$, poi la cancellazione del fattore comune e il confronto dei coefficienti annullano gli altri. Quindi $\dim W=4$. Aggiungi $t$, che non appartiene a $W$ perché $t(0)\ne t(1)$: la famiglia rimane indipendente e, avendo cinque vettori nell'ambiente di dimensione $5$, è una base. Per ogni $P\in V$, scegli $a=P(0)$ e $b=P(1)-P(0)$: $P-a-bt$ si annulla in $0$ e $1$, dunque è $t(t-1)Q$. Il quoziente ha grado al più $2$ se non nullo. Le valutazioni forzano $a,b$ e la cancellazione forza $Q$, quindi la rappresentazione è unica. L'appartenenza a $W$ equivale a $b=0$.

Torna a [[#Esercizio 9 — Due valori che devono coincidere (basi e completamento)|esercizio 9]].

### Riscontro 10

> [!tip]- Riscontro 10
> Una relazione $\alpha v_1+\beta v_2+\gamma v_3=0$ dà $\alpha+\beta=0$, $\beta+a\gamma=0$, $(a-1)\gamma=0$. Se $a\ne1$, l'ultima forza $\gamma=0$, poi $\beta=0$ e $\alpha=0$. Hai tre indipendenti in $\mathbb R^3$, di dimensione $3$, quindi una base. Se $a=1$, $v_3=(0,1,0)=v_2-v_1$: lo span ha base $(v_1,v_2)$ ed è il piano $x_3=0$, di dimensione $2$. Contare soltanto tre vettori non prova l'indipendenza; due indipendenti hanno invece lunghezza minore della dimensione dell'ambiente e non possono generarlo.

Torna a [[#Esercizio 10 — Un parametro cambia la dimensione (criteri per una base)|esercizio 10]].

### Riscontro 11

> [!tip]- Riscontro 11
> Se $W=\{0\}$, scegli la famiglia vuota. Altrimenti scegli un vettore non nullo e poi, finché possibile, un vettore fuori dallo span dei precedenti. Ogni nuova famiglia è indipendente: una relazione che coinvolgesse davvero l'ultimo vettore lo riscriverebbe nello span precedente. Non puoi ottenere $n+1$ indipendenti, perché $V$ è generato da $n$ vettori. Quando non puoi scegliere altro, lo span è tutto $W$ e la famiglia è una base. Se $K$ ha $q$ elementi, le coordinate rispetto a una base di $d$ elementi sono una biezione con $K^d$, che ha $q^d$ elementi: quindi $|V|=q^d$. Su $\mathbb F_2$, $2^d=32$ dà $d=5$. Su $\mathbb R$, fissando $v\ne0$, i vettori $\lambda v$ sono distinti per scalari distinti, perché $(\lambda-\mu)v=0$ forza $\lambda=\mu$; sono dunque infiniti.

Torna a [[#Esercizio 11 — Costruire una base senza presupporla (sottospazi e campi finiti)|esercizio 11]].

### Riscontro 12

> [!tip]- Riscontro 12
> La famiglia vuota è indipendente e genera $\{0\}$: è una base e la dimensione è $0$. La famiglia $(0)$ genera lo stesso spazio ma è dipendente, perché $1\cdot0=0$ è una relazione non banale. Per $n=0$, la sola famiglia di esattamente $n$ vettori è quella vuota e i criteri valgono. Per $W=tK[t]$, somme e prodotti scalari mantengono il fattore $t$, quindi è un sottospazio; è proprio perché non contiene $1$. Ogni suo elemento è combinazione finita di $t,t^2,\ldots$, e questi monomi sono indipendenti per confronto dei coefficienti. La funzione $t^j\mapsto t^{j+1}$ è una biezione dalla base di $V$ a quella di $W$, con inversa $t^{j+1}\mapsto t^j$. Dunque un sottospazio proprio può avere una base della stessa cardinalità di quella dell'ambiente infinito: il criterio di uguaglianza richiede la finitezza.

Torna a [[#Esercizio 12 — Dove finisce il caso finito (zero e basi infinite)|esercizio 12]].

Il capitolo è acquisito quando sai spiegare perché lo scambio deve proteggere i vettori già inseriti, dimostrare che la dimensione non dipende dalla base e scegliere consapevolmente fra estrazione e completamento. Prova anche a riconoscere quale ipotesi manca in ogni falsa scorciatoia: il campo, l'appartenenza, il numero dei vettori, l'inclusione o la finitezza.

---

[[Books/Geometria-I/06 - Indipendenza basi e coordinate|← 06 · Indipendenza basi e coordinate]] · [[Books/Geometria-I/00 - Indice e piano di studio|Indice e piano di studio]] · [[Books/Geometria-I/08 - Somme dirette e decomposizioni|08 · Somme dirette e decomposizioni →]]
