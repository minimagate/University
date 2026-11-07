# Polinomi radici e fattorizzazioni

Prerequisiti: [[Books/Geometria-I/01 - Il linguaggio della geometria e i campi|campi e linguaggio delle dimostrazioni]] e [[Books/Geometria-I/02 - Numeri complessi e geometria del piano|calcolo nei complessi e radici ennesime]]. Torna all'[[Books/Geometria-I/00 - Indice e piano di studio|indice e piano di studio]].

> [!info] In questo capitolo
> - Trasformerai la ricerca di una **radice** nell'estrazione di un **fattore lineare**.
> - Distinguerai un polinomio dalla funzione che definisce e il numero delle radici distinte dal conteggio con **molteplicità**.
> - Dimostrerai la fattorizzazione completa sui complessi, assumendo il teorema fondamentale dell'algebra come nel corso.
> - Userai coniugio e derivata per riconoscere vincoli sulle radici e verificare le fattorizzazioni.

## Domande per iniziare dagli esercizi

Gli enunciati degli esercizi precedono la teoria; i riscontri richiudibili sono raccolti in fondo. Puoi cominciare da un tentativo e seguire soltanto il rimando necessario: prima individua il problema, poi cerca lo strumento. Per le dimostrazioni, controlla anche il campo e l'ipotesi che il polinomio non sia nullo.

| Domanda guida | Esercizi da tentare | Teoria da recuperare |
|---|---|---|
| Perché conviene scrivere un polinomio come prodotto? | [[#Esercizio 3 — Quando le radici si incontrano (fattori e parametro)\|3]] | [[#Una radice rende visibile un fattore\|Una radice rende visibile un fattore]] |
| Quando due polinomi sono davvero uguali? | [[#Esercizio 1 — Stessi valori, oggetti diversi (polinomi formali e grado)\|1]] | [[#Un polinomio è prima di tutto una lista finita di coefficienti\|Polinomi formali e grado]] |
| Come trovo il resto senza eseguire tutta la divisione? | [[#Esercizio 2 — Un resto senza tentativi (divisione per un fattore lineare)\|2]] | [[#Dividere per un fattore lineare\|Dividere per un fattore lineare]] |
| Che cosa dimostriamo, e che cosa assumiamo, nella fattorizzazione complessa? | [[#Esercizio 5 — Fattorizzare cambiando campo (teorema fondamentale e fattori reali)\|5]], [[#Esercizio 12 — Una radice reale obbligatoria (induzione e grado dispari)\|12]] | [[#Dall'esistenza di una radice alla fattorizzazione completa\|Induzione e teorema fondamentale]] |
| Che cosa vuol dire contare una radice più volte? | [[#Esercizio 3 — Quando le radici si incontrano (fattori e parametro)\|3]], [[#Esercizio 6 — Contare con precisione (molteplicità)\|6]] | [[#La molteplicità misura quante volte puoi estrarre lo stesso fattore\|Molteplicità]] |
| Perché un limite sulle radici vale anche senza il teorema fondamentale? | [[#Esercizio 4 — Quattro controlli bastano (limite sul numero di radici)\|4]] | [[#Il grado limita il numero delle radici\|Il limite dato dal grado]] |
| Quali radici devono accompagnare una radice non reale? | [[#Esercizio 7 — Completare una lista di radici (coniugio e molteplicità)\|7]], [[#Esercizio 12 — Una radice reale obbligatoria (induzione e grado dispari)\|12]] | [[#Coefficienti reali e coppie coniugate\|Coniugio e fattorizzazione reale]] |
| Che cosa significa il segno ± nella formula quadratica complessa? | [[#Esercizio 8 — Una quadratica senza radici coniugate (formula risolutiva complessa)\|8]] | [[#La formula quadratica sui complessi\|La formula quadratica]] |
| Come riconosco una radice multipla attraverso la derivata? | [[#Esercizio 9 — Derivare senza perdere le molteplicità (derivata e radici comuni)\|9]], [[#Esercizio 10 — Progettare una radice doppia (condizioni sui coefficienti)\|10]], [[#Esercizio 13 — Quando il numero due diventa zero (ipotesi sulla derivata)\|13]] | [[#La derivata distingue radici semplici e multiple\|Derivata e molteplicità]] |
| Posso applicare questi risultati a un'equazione con un modulo? | [[#Esercizio 11 — Un'equazione con infinite soluzioni (modulo e polinomi)\|11]] | [[#Prima di applicare un teorema, riconosci l'oggetto\|Riconoscere un polinomio]] |

## Esercizi per verificare la comprensione

Gli esercizi 1–4 verificano le fondamenta; 5–10 collegano fattorizzazione, campo e molteplicità; 11–13 mettono alla prova le ipotesi e la ricostruzione delle prove. Non limitarti alle radici trovate: giustifica sempre perché non ne manchino altre.

### Esercizio 1 — Stessi valori, oggetti diversi (polinomi formali e grado)

In $\mathbb R[t]$ siano $P=t^3+2t$ e $Q=-t^3+t^2$. Calcola il grado di $P+Q$ e di $PQ$, senza sviluppare interamente il prodotto. Che cosa accade a $P-P$?

In $\mathbb F_2[t]$, confronta $A=t^2+t$ e $B=0$: sono uguali come polinomi? E come funzioni $\mathbb F_2\to\mathbb F_2$? Spiega perché non c'è contraddizione con il limite sul numero delle radici.

Se ti blocchi: [[#Un polinomio è prima di tutto una lista finita di coefficienti|polinomi formali e grado]] · [[#Il grado limita il numero delle radici|limite sulle radici]].

Controllo dopo il tentativo: [[#Riscontro 1|riscontro 1]].

### Esercizio 2 — Un resto senza tentativi (divisione per un fattore lineare)

Dividi $P(t)=t^3-2t^2+3t-4$ per $t-2$. Trova quoziente e resto e verifica l'identità moltiplicando. Il numero $2$ è una radice di $P$? Trova la costante $c$ per cui $2$ diventa radice di $P-c$.

Ricostruisci poi la prova che il resto della divisione per $t-a$ è sempre $P(a)$ e che il quoziente è unico, includendo il caso di un polinomio costante.

Se ti blocchi: [[#Dividere per un fattore lineare|divisione e teorema del fattore]].

Controllo dopo il tentativo: [[#Riscontro 2|riscontro 2]].

### Esercizio 3 — Quando le radici si incontrano (fattori e parametro)

Per $\lambda\in\mathbb R$, considera

$$
P_\lambda(t)=t^3+(\lambda-1)t^2-\lambda t.
$$

Verifica che $0$ e $1$ sono sempre radici. Fattorizza completamente e determina, per ogni valore di $\lambda$, radici distinte e molteplicità. In quali casi il numero delle radici distinte scende? Spiega perché il grado non cambia.

Se ti blocchi: [[#Una radice rende visibile un fattore|dalle radici ai fattori]] · [[#La molteplicità misura quante volte puoi estrarre lo stesso fattore|molteplicità]].

Controllo dopo il tentativo: [[#Riscontro 3|riscontro 3]].

### Esercizio 4 — Quattro controlli bastano (limite sul numero di radici)

Un polinomio reale $P$ di grado al più $3$, includendo il polinomio nullo, soddisfa $P(0)=P(1)=P(2)=P(3)=0$. Dimostra che $P$ è nullo. Sarebbe sufficiente sapere che si annulla soltanto in $0,1,2$? Costruisci un controesempio.

Dimostra poi il limite di $n$ radici distinte per un polinomio non nullo di grado $n$ per induzione, usando il teorema del fattore e senza usare il teorema fondamentale dell'algebra. Indica perché, dopo aver estratto $t-a$, ogni altra radice resta nel quoziente.

Se ti blocchi: [[#Il grado limita il numero delle radici|limite sulle radici]] · [[#Dividere per un fattore lineare|teorema del fattore]].

Controllo dopo il tentativo: [[#Riscontro 4|riscontro 4]].

### Esercizio 5 — Fattorizzare cambiando campo (teorema fondamentale e fattori reali)

Fattorizza $t^4+1$ in fattori reali irriducibili e in fattori lineari complessi. Verifica i fattori reali moltiplicandoli. Spiega quale parte del teorema fondamentale dell'algebra viene assunta nel capitolo e quale affermazione viene invece dimostrata per induzione. Il fatto di aver risolto questo singolo esempio dimostra quel teorema?

Se ti blocchi: [[#Coefficienti reali e coppie coniugate|fattori reali]] · [[#Dall'esistenza di una radice alla fattorizzazione completa|teorema fondamentale e corollario]].

Controllo dopo il tentativo: [[#Riscontro 5|riscontro 5]].

### Esercizio 6 — Contare con precisione (molteplicità)

Sia $P(t)=(t+2)^3(t-1)^2(t^2+1)$. Elenca le radici reali e le radici complesse, indicando molteplicità, numero di valori distinti e somma delle molteplicità nei due campi. Qual è il grado? Perché conoscere soltanto l'insieme delle radici distinte non determina il polinomio?

Se ti blocchi: [[#La molteplicità misura quante volte puoi estrarre lo stesso fattore|molteplicità]] · [[#Il grado limita il numero delle radici|conteggio delle radici]].

Controllo dopo il tentativo: [[#Riscontro 6|riscontro 6]].

### Esercizio 7 — Completare una lista di radici (coniugio e molteplicità)

Trova il polinomio reale monico di grado minimo che abbia $1+2i$ come radice di molteplicità due e $-3$ come radice semplice. Dimostra la minimalità del grado e l'unicità del polinomio richiesto. Che cosa cambia togliendo la condizione «monico» ma mantenendo il grado minimo?

Ricostruisci inoltre la prova che radici coniugate di un polinomio reale hanno la stessa molteplicità, non soltanto che sono entrambe radici.

Se ti blocchi: [[#Coefficienti reali e coppie coniugate|coniugio e fattori reali]].

Controllo dopo il tentativo: [[#Riscontro 7|riscontro 7]].

### Esercizio 8 — Una quadratica senza radici coniugate (formula risolutiva complessa)

Risolvi $z^2-(2+i)z+(1+i)=0$ mediante la formula quadratica. Verifica poi le soluzioni con una fattorizzazione. Le radici devono essere coniugate? Che effetto produce scegliere l'altra radice quadrata del discriminante? Ricava la formula risolutiva completando il quadrato, senza citarla come regola non spiegata.

Se ti blocchi: [[#La formula quadratica sui complessi|formula quadratica]] · [[#Coefficienti reali e coppie coniugate|ipotesi sui coefficienti]].

Controllo dopo il tentativo: [[#Riscontro 8|riscontro 8]].

### Esercizio 9 — Derivare senza perdere le molteplicità (derivata e radici comuni)

Per $P(t)=(t-2)^4(t+1)^2$ trova una fattorizzazione di $P'$ senza sviluppare $P$. Determina tutte le radici di $P'$ e le loro molteplicità. Quali sono anche radici di $P$? Usa l'esempio per spiegare perché $P'(a)=0$ da solo non certifica una radice di $P$.

Se ti blocchi: [[#La derivata distingue radici semplici e multiple|derivata e molteplicità]].

Controllo dopo il tentativo: [[#Riscontro 9|riscontro 9]].

### Esercizio 10 — Progettare una radice doppia (condizioni sui coefficienti)

Trova $a,b,c\in\mathbb R$ affinché il polinomio $Q(t)=t^3+at^2+bt+c$ abbia $1$ come radice almeno doppia e $-1$ come radice. Imposta le condizioni mediante valori di $Q$ e $Q'$, risolvile e verifica se la molteplicità di $1$ sia esattamente due. Puoi anche trovare il risultato partendo dai fattori: confronta i due metodi.

Se ti blocchi: [[#La derivata distingue radici semplici e multiple|criterio della radice multipla]] · [[#Dividere per un fattore lineare|fattori e radici]].

Controllo dopo il tentativo: [[#Riscontro 10|riscontro 10]].

### Esercizio 11 — Un'equazione con infinite soluzioni (modulo e polinomi)

Uno studente sostiene: «$|z|^2-1=0$ è di grado due, quindi ha al massimo due soluzioni complesse». Individua l'errore e descrivi tutte le soluzioni.

Dimostra anche che non esiste $Q\in\mathbb C[t]$ tale che $Q(z)=|z|^2$ per ogni $z\in\mathbb C$. Suggerimento: prima restringi ai valori reali, poi prova $z=i$.

Se ti blocchi: [[#Prima di applicare un teorema, riconosci l'oggetto|riconoscere l'oggetto]] · [[#Il grado limita il numero delle radici|identità di polinomi]].

Controllo dopo il tentativo: [[#Riscontro 11|riscontro 11]].

### Esercizio 12 — Una radice reale obbligatoria (induzione e grado dispari)

Usando la fattorizzazione complessa e il coniugio, dimostra che ogni polinomio reale di grado dispari possiede almeno una radice reale. Non usare la continuità. Spiega perché il conteggio deve tenere conto delle molteplicità e perché una radice reale non è obbligatoria in grado pari.

Ricostruisci poi la dimostrazione per induzione della fattorizzazione complessa, indicando il punto esatto in cui interviene il teorema fondamentale dell'algebra.

Se ti blocchi: [[#Coefficienti reali e coppie coniugate|coppie coniugate]] · [[#Dall'esistenza di una radice alla fattorizzazione completa|induzione sul grado]].

Controllo dopo il tentativo: [[#Riscontro 12|riscontro 12]].

### Esercizio 13 — Quando il numero due diventa zero (ipotesi sulla derivata)

In $\mathbb F_2[t]$ considera $P(t)=(t-1)^2$. Sviluppa il polinomio, calcola $P'$ e spiega perché non è valido affermare che nella derivata la molteplicità scenda esattamente da due a uno. Quale passaggio della dimostrazione su $\mathbb R$ o $\mathbb C$ fallisce? Il criterio $P(a)=P'(a)=0$ per riconoscere una radice multipla continua a funzionare in questo esempio?

Se ti blocchi: [[#La derivata distingue radici semplici e multiple|ipotesi sulla derivata]] · [[#Un polinomio è prima di tutto una lista finita di coefficienti|campo con due elementi]].

Controllo dopo il tentativo: [[#Riscontro 13|riscontro 13]].

## Teoria da recuperare

Usa i collegamenti della tabella iniziale per leggere lo strumento che ti serve. Dopo la lettura, torna all’esercizio e prova a risolverlo senza suggerimenti.

## Una radice rende visibile un fattore

Immagina di dover risolvere

$$
z^3-z^2-4z+4=0.
$$

Provando $z=1$ trovi zero. È un'informazione utile, ma per ora conosci una sola soluzione. Il passo decisivo è trasformare quella verifica in un'identità:

$$
z^3-z^2-4z+4=(z-1)(z^2-4)=(z-1)(z-2)(z+2).
$$

Adesso l'intera equazione si legge: un prodotto in un campo è zero se e solo se almeno un fattore è zero. Le soluzioni sono quindi $1,2,-2$, e non ce ne sono altre.

La fattorizzazione non si limita a presentare in modo diverso la stessa espressione. Mette in evidenza le condizioni che la fanno annullare. Il capitolo costruisce questo ponte: **una radice permette di estrarre un fattore; i fattori permettono di trovare tutte le radici**.

Non sempre indovinare una radice è semplice. Il teorema fondamentale dell'algebra garantirà che sui complessi una radice esiste, ma non ci consegnerà automaticamente un procedimento comodo per calcolarla. Separare esistenza e calcolo ci aiuta a capire che cosa promette ogni risultato.

## Un polinomio è prima di tutto una lista finita di coefficienti

Fissiamo un campo $K$. Un **polinomio a coefficienti in $K$** è un'espressione formale

$$
P(t)=a_0+a_1t+\cdots+a_nt^n,
\qquad a_j\in K,
$$

con un numero finito di coefficienti non nulli. Il simbolo $t$ è un'**indeterminata**: serve a distinguere le posizioni dei coefficienti, non è un numero che dobbiamo fissare. L'insieme dei polinomi si indica con $K[t]$.

Due polinomi sono uguali se hanno gli stessi coefficienti per ogni potenza, inserendo coefficienti nulli dove mancano termini. Per esempio $t^2+1$ e $1+0t+t^2$ sono lo stesso polinomio. Invece $t^2+1$ e $t^2+t$ sono distinti, qualunque sia il campo con $0\ne1$.

La somma si ottiene sommando i coefficienti della stessa potenza. Il prodotto si ottiene distribuendo tutti i termini e raccogliendo quelli con la stessa potenza. Se $P\ne0$, il suo **grado**, scritto $\deg P$, è il massimo esponente con coefficiente non nullo. Quel coefficiente si chiama **coefficiente direttivo**. Un polinomio è **monico** se il coefficiente direttivo è $1$.

Il **polinomio nullo** ha tutti i coefficienti nulli. In questo libro non gli assegniamo un grado naturale; lo includiamo esplicitamente quando parliamo di polinomi di grado limitato:

$$
K[t]_{\le d}=\{0\}\cup\{P\in K[t]:P\ne0,\ \deg P\le d\}.
$$

Le costanti non nulle hanno grado zero. Il polinomio nullo e una costante non nulla hanno quindi comportamenti differenti già prima di parlare di radici.

### Il grado controlla le operazioni

Se $P,Q$ sono non nulli, con gradi $r,s$ e coefficienti direttivi $a_r,b_s$, il coefficiente di $t^{r+s}$ in $PQ$ è $a_rb_s$. In un campo il prodotto di due elementi non nulli è non nullo, perciò

$$
\deg(PQ)=\deg P+\deg Q.
$$

In particolare, il prodotto di due polinomi non nulli non è mai il polinomio nullo. Possiamo quindi cancellare un fattore polinomiale non nullo da un'uguaglianza: da $AB=AC$, con $A\ne0$, segue $A(B-C)=0$ e dunque $B=C$.

Per la somma la situazione cambia: i coefficienti direttivi possono cancellarsi. Se $P+Q\ne0$,

$$
\deg(P+Q)\le\max\{\deg P,\deg Q\}.
$$

Per esempio, $(t^3+2t)+(-t^3+t^2)=t^2+2t$ su $\mathbb R$. Il grado scende da $3$ a $2$; non possiamo sommare i gradi quando sommiamo i polinomi.

### Dall'oggetto formale alla funzione

A ogni polinomio associamo una funzione di valutazione

$$
\widetilde P:K\longrightarrow K,\qquad x\longmapsto P(x),
$$

sostituendo il numero $x$ all'indeterminata. Polinomi formalmente uguali danno la stessa funzione. Il contrario richiede attenzione.

Nel campo $\mathbb F_2=\{0,1\}$ il polinomio $t^2+t$ non è nullo: ha due coefficienti uguali a $1$. Eppure vale zero sia in $0$ sia in $1$, perché $1+1=0$. Definisce quindi la stessa funzione del polinomio nullo.

> [!warning] Attenzione — Il simbolo zero può indicare oggetti diversi
> Dire $P(x)=0$ per un certo $x$ riguarda un valore della funzione. Dire $P=0$ in $K[t]$ significa che **tutti i coefficienti** sono nulli. Perfino l'uguaglianza dei valori per ogni elemento di un campo finito non basta a identificare i polinomi. Sui campi infiniti il contrario varrà, grazie al limite sul numero delle radici che dimostreremo fra poco.

## Dividere per un fattore lineare

La divisione degli interi separa un multiplo del divisore e un resto più piccolo. Per i polinomi il grado svolge il ruolo della grandezza: dividendo per $t-a$, che ha grado $1$, il resto deve essere una costante.

**Teorema del resto.** Per ogni $P\in K[t]$ e $a\in K$ esistono unici $Q\in K[t]$ e $r\in K$ tali che

$$
P(t)=(t-a)Q(t)+r.
$$

Inoltre $r=P(a)$. Se $\deg P=n\ge1$, il quoziente ha grado $n-1$ e lo stesso coefficiente direttivo di $P$.

*Passo 1 — Costruire la divisione.* Per ogni intero $k\ge1$ vale l'identità

$$
t^k-a^k=(t-a)(t^{k-1}+at^{k-2}+\cdots+a^{k-1}).
$$

Moltiplicando il secondo membro, i termini intermedi si cancellano a coppie e rimangono $t^k-a^k$. Se $P(t)=\sum_{k=0}^n a_kt^k$, allora

$$
P(t)-P(a)=\sum_{k=1}^n a_k(t^k-a^k)
$$

è divisibile per $t-a$. Raccogliendo $t-a$ otteniamo il quoziente cercato e il resto $r=P(a)$. Per un polinomio costante basta scegliere $Q=0$.

*Passo 2 — Provare l'unicità.* Se

$$
P=(t-a)Q+r=(t-a)Q'+r',
$$

valutando in $a$ troviamo $r=r'=P(a)$. Sottraendo le due identità segue $(t-a)(Q-Q')=0$. Poiché $t-a$ non è nullo, anche $Q-Q'$ deve essere nullo: $Q=Q'$.

*Passo 3 — Controllare il grado.* Per $n\ge1$, il polinomio $P-P(a)$ ha ancora grado $n$, perché sottrarre una costante non cambia il coefficiente di $t^n$. Dall'identità $P-P(a)=(t-a)Q$ e dalla formula del grado del prodotto segue $\deg Q=n-1$.

La prova ha usato soltanto operazioni nel campo e un'identità finita. Vale su $\mathbb R$, su $\mathbb C$ e anche sui campi finiti.

### Il teorema del fattore

Un elemento $a\in K$ è una **radice** di $P$ se $P(a)=0$. Scriviamo $A\mid B$ se esiste un polinomio $C$ tale che $B=AC$.

> [!abstract] Concetto chiave — Radice e divisibilità
> Per ogni $P\in K[t]$ e $a\in K$,
> $$
> P(a)=0\quad\Longleftrightarrow\quad (t-a)\mid P(t).
> $$
> Il valore zero corrisponde a un resto zero. È questo passaggio che trasforma un'equazione in una fattorizzazione.

Se $P(a)=0$, il teorema del resto dà $P=(t-a)Q$. Viceversa, se $P=(t-a)Q$, valutando in $a$ otteniamo $P(a)=0\cdot Q(a)=0$.

**Esempio svolto.** Per $P(t)=t^3-2t^2-t+2$, calcoliamo $P(1)=0$. La divisione dà

$$
P(t)=(t-1)(t^2-t-2)=(t-1)(t-2)(t+1).
$$

Per controllare il quoziente, possiamo moltiplicare $(t-1)(t^2-t-2)$ e riottenere tutti i coefficienti di $P$. Se invece dividiamo per $t$, il resto è $P(0)=2$:

$$
P(t)=t(t^2-2t-1)+2.
$$

Quest'ultima è una divisione corretta, ma non una fattorizzazione di $P$.

> [!warning] Attenzione — Un resto non nullo interrompe il ragionamento sui fattori
> Nella lezione del [[_transcripts/Geometria 1/2026-09-30 - Fattorizzazione dei polinomi e radici complesse|30 settembre]] il docente distingue espressamente divisione con resto e fattorizzazione. Da $P=(t-a)Q+r$, con $r\ne0$, non puoi dedurre che $a$ sia una radice, né applicare l'annullamento del prodotto all'intera espressione: c'è ancora una somma.

## Dall'esistenza di una radice alla fattorizzazione completa

Su $\mathbb R$, un polinomio non costante può non avere radici: $t^2+1$ è sempre positivo. Nei complessi la situazione cambia.

**Teorema fondamentale dell'algebra — assunto.** Ogni polinomio non costante a coefficienti complessi possiede almeno una radice in $\mathbb C$.

Il teorema è enunciato nelle lezioni disponibili, mentre la sua dimostrazione è rinviata. Lo assumiamo anche qui. Non lo stiamo dimostrando quando estraiamo ripetutamente fattori: proprio per cominciare quell'estrazione dobbiamo già sapere che una radice esiste.

**Corollario della fattorizzazione.** Se $P\in\mathbb C[t]$ ha grado $n\ge1$ e coefficiente direttivo $c\ne0$, esistono $z_1,\ldots,z_n\in\mathbb C$, non necessariamente distinti, tali che

$$
P(t)=c(t-z_1)\cdots(t-z_n).
$$

La strategia è togliere una difficoltà alla volta: una radice elimina un grado. Per trasformare questa idea in una prova usiamo l'**induzione** sul grado.

Indichiamo con $\mathcal P_n$ l'affermazione «ogni polinomio complesso di grado $n$ ammette la fattorizzazione indicata». Non è un singolo polinomio: è una proposizione che riguarda **tutti** quelli di quel grado. Il principio di induzione permette di provare $\mathcal P_n$ per ogni $n\ge1$ mostrando il primo caso e il passaggio da un caso arbitrario al successivo.

*Passo 1 — Grado uno.* Se $P(t)=ct+d$, con $c\ne0$, allora

$$
P(t)=c\left(t-\left(-\frac dc\right)\right).
$$

Esiste un solo fattore lineare da trovare, e l'abbiamo costruito.

*Passo 2 — Ipotesi induttiva.* Fissiamo $n\ge1$ e supponiamo provata $\mathcal P_n$. Questo ci autorizza a fattorizzare qualsiasi polinomio complesso di grado $n$; non ancora quelli di grado $n+1$.

*Passo 3 — Ridurre il grado.* Sia $P$ di grado $n+1$. Il teorema fondamentale garantisce una radice $z_1$. Il teorema del fattore dà

$$
P(t)=(t-z_1)Q(t),\qquad \deg Q=n.
$$

Ora l'ipotesi induttiva si applica davvero, perché il grado è sceso:

$$
Q(t)=c(t-z_2)\cdots(t-z_{n+1}).
$$

*Passo 4 — Ricostruire.* Moltiplicando nuovamente per $t-z_1$ otteniamo

$$
P(t)=c(t-z_1)\cdots(t-z_{n+1}),
$$

cioè $\mathcal P_{n+1}$. L'induzione conclude la prova.

Lo stesso ragionamento può essere scritto da $n-1$ a $n$, purché l'indice inizi da $n=2$ e il caso $n=1$ sia trattato a parte. Cambia l'etichetta, non il contenuto. La forma forte dell'induzione ammette come ipotesi tutti i gradi precedenti; qui è sufficiente quello immediatamente precedente. L'equivalenza si vede applicando l'induzione ordinaria alla proposizione cumulativa «valgono tutti i casi fino a $n$».

## La molteplicità misura quante volte puoi estrarre lo stesso fattore

Il polinomio $(t-2)^4$ ha grado $4$, ma l'unico valore che lo annulla è $2$. Nella fattorizzazione in quattro fattori lineari quella stessa radice compare quattro volte. Dobbiamo distinguere il numero di valori diversi dal numero di fattori.

Sia $P\ne0$ e sia $a$ una sua radice. La sua **molteplicità** è l'intero $m\ge1$ tale che

$$
P(t)=(t-a)^mQ(t),\qquad Q(a)\ne0.
$$

Equivalentemente, è il massimo esponente per cui $(t-a)^m$ divide $P$. Questo massimo esiste: ogni divisione esatta abbassa il grado di uno, dunque non possiamo ripeterla più di $\deg P$ volte. Se il quoziente finale si annullasse ancora in $a$, potremmo estrarre un altro fattore, contraddicendo la scelta di $m$.

La radice è **semplice** quando $m=1$ e **multipla** quando $m\ge2$. Per comodità possiamo attribuire molteplicità zero a un elemento che non è radice di un polinomio non nullo. Non attribuiamo una molteplicità finita alle radici del polinomio nullo: ogni potenza di $t-a$ lo divide.

**Esempio svolto.** Nel polinomio

$$
P(t)=3(t-1)^2(t+2)^3(t^2+1)
$$

le radici complesse distinte sono $1,-2,i,-i$, con molteplicità rispettive $2,3,1,1$. Il grado è $2+3+2=7$, e anche la somma delle molteplicità è $7$. In $\mathbb R$ le sole radici sono $1,-2$, e la somma delle loro molteplicità è $5$: i due gradi mancanti sono nel fattore senza radici reali $t^2+1$.

> [!example] Esempi e controesempi — Grado e radici distinte
> $(t-1)^5$ ha una radice distinta di molteplicità cinque. $t^5-1$ ha cinque radici complesse distinte, descritte nel [[Books/Geometria-I/02 - Numeri complessi e geometria del piano|capitolo 02]]. Entrambi hanno grado cinque. «Il grado è cinque» non decide quante radici **distinte** ci siano.

Nella [[_transcripts/Geometria 1/2026-09-30 - Fattorizzazione dei polinomi e radici complesse|lezione del 30 settembre]] proprio l'esempio di una quinta potenza viene usato per correggere la frase incompleta «grado $n$, quindi $n$ radici»: occorre specificare il campo e il conteggio con molteplicità.

## Il grado limita il numero delle radici

L'esistenza di radici dipende dal campo. Il limite superiore, invece, non richiede che il campo sia $\mathbb C$.

**Teorema.** Un polinomio non nullo $P\in K[t]$ di grado $n$ ha al massimo $n$ radici in $K$, contate con le rispettive molteplicità. In particolare, ha al massimo $n$ radici distinte.

*Passo 1 — Estrarre una radice completamente.* Se non ci sono radici, la conclusione è immediata. Altrimenti prendiamo una radice $a$ di molteplicità $m$ e scriviamo

$$
P=(t-a)^mQ,\qquad Q(a)\ne0,\qquad \deg Q=n-m.
$$

*Passo 2 — Le altre molteplicità non cambiano.* Sia $b\ne a$. Se $b$ ha molteplicità $s$ in $Q$, scriviamo $Q=(t-b)^sR$, con $R(b)\ne0$. Allora

$$
P=(t-b)^s\bigl((t-a)^mR\bigr),
$$

e il fattore tra parentesi vale $(b-a)^mR(b)\ne0$ in $b$. Dunque $b$ ha molteplicità esattamente $s$ anche in $P$. La radice che abbiamo tolto non sottrae copie delle altre.

*Passo 3 — Il grado è un bilancio finito.* Ripetiamo il procedimento sul quoziente. Ogni radice estratta consuma tanti gradi quant'è la sua molteplicità. Il grado residuo non può diventare negativo per un polinomio non nullo. Pertanto, per radici distinte $a_1,\ldots,a_k$ di molteplicità $m_1,\ldots,m_k$,

$$
m_1+\cdots+m_k\le n.
$$

Non possono esistere più di $n$ radici distinte: se ce ne fossero di più, potremmo sceglierne $n+1$ e ottenere una somma di molteplicità almeno $n+1$, impossibile. Questo giustifica anche che l'estrazione di tutte le radici termina.

**Corollario sui complessi.** Un polinomio complesso di grado $n\ge1$ ha esattamente $n$ radici contate con molteplicità. La fattorizzazione completa dà almeno $n$ copie; il limite appena provato impedisce di averne altre.

**Corollario sull'identità dei polinomi.** Se $P,Q$ hanno grado al più $d$, includendo il polinomio nullo, e coincidono in $d+1$ punti distinti del campo, allora $P=Q$ formalmente. Infatti $P-Q$, se non nullo, avrebbe grado al più $d$ e almeno $d+1$ radici.

In particolare, su un campo infinito due polinomi che definiscono la stessa funzione sono uguali. Basta applicare il corollario scegliendo un numero sufficiente di punti distinti. È questo il motivo preciso per cui su $\mathbb R$ possiamo controllare un'identità polinomiale attraverso i valori, mentre l'esempio su $\mathbb F_2$ richiedeva prudenza.

> [!warning] Attenzione — Il polinomio nullo è l'eccezione necessaria
> Il polinomio nullo si annulla in ogni elemento del campo. Non ha un grado naturale a cui applicare il teorema. Una costante non nulla, invece, ha grado zero e nessuna radice: rispetta perfettamente il limite.

## Coefficienti reali e coppie coniugate

Se un polinomio ha coefficienti reali, perché dovrebbe esserci una relazione fra le radici non reali? Il coniugio lascia fermi i coefficienti reali e rispetta somme e prodotti. Quindi si può farlo passare attraverso tutta la formula.

**Proposizione.** Se $P\in\mathbb R[t]$, allora per ogni $z\in\mathbb C$,

$$
P(\overline z)=\overline{P(z)}.
$$

Infatti, scrivendo $P(t)=\sum_{j=0}^n a_jt^j$ con $a_j\in\mathbb R$,

$$
\overline{P(z)}
=\sum_{j=0}^n\overline{a_j}\,\overline z^{\,j}
=\sum_{j=0}^n a_j\overline z^{\,j}
=P(\overline z).
$$

Se $P(z)=0$, segue $P(\overline z)=0$. Una radice reale coincide con la propria coniugata; una radice non reale ne impone una seconda, distinta, riflessa rispetto all'asse reale.

### Anche le molteplicità sono uguali

Per rendere rigoroso il conteggio, definiamo il **polinomio coniugato** di un polinomio complesso:

$$
P^*(t)=\sum_j\overline{a_j}t^j.
$$

Il coniugio dei coefficienti rispetta i prodotti e, per $P$ reale, $P^*=P$. Se $z$ ha molteplicità $m$, scriviamo

$$
P(t)=(t-z)^mQ(t),\qquad Q(z)\ne0.
$$

Coniugando i coefficienti dell'identità otteniamo

$$
P(t)=(t-\overline z)^mQ^*(t).
$$

Ora $Q^*(\overline z)=\overline{Q(z)}\ne0$. Questa è esattamente la definizione di molteplicità $m$ per $\overline z$. Non abbiamo provato soltanto che una seconda radice esiste: abbiamo provato che compare lo stesso numero di volte.

### Da una coppia complessa a un fattore reale

Sia $z=a+ib$, con $b\ne0$. Moltiplichiamo i due fattori coniugati:

$$
\begin{aligned}
(t-z)(t-\overline z)
&=t^2-(z+\overline z)t+z\overline z\\
&=t^2-2at+(a^2+b^2)\\
&=(t-a)^2+b^2.
\end{aligned}
$$

I coefficienti sono reali. Il discriminante è $-4b^2<0$, quindi il fattore non ha radici reali. È **irriducibile su $\mathbb R$**, cioè non è prodotto di due polinomi reali di grado positivo: per un quadratico, una simile fattorizzazione dovrebbe avere due fattori lineari reali e quindi produrre una radice reale.

Raggruppando tutte le coppie coniugate della fattorizzazione complessa, ogni polinomio reale non costante si scrive come prodotto del suo coefficiente direttivo reale, di fattori lineari reali e di fattori quadratici reali irriducibili. Non compaiono fattori irriducibili reali di grado maggiore di due: ciascuna radice complessa è reale oppure ha una compagna coniugata.

**Esempio svolto.** Fattorizziamo $t^4+4$ sui reali senza calcolare subito le radici complesse:

$$
t^4+4=(t^2+2)^2-(2t)^2=(t^2-2t+2)(t^2+2t+2).
$$

I due discriminanti sono entrambi $-4$. Sui complessi possiamo proseguire:

$$
t^4+4=(t-(1+i))(t-(1-i))(t-(-1+i))(t-(-1-i)).
$$

I quattro valori sono distinti; ciascuno ha molteplicità uno. «Ho fattorizzato completamente» deve dunque essere accompagnato dal campo: i quadratici sono finali sui reali, ma si spezzano ancora sui complessi.

Un altro collegamento con il capitolo precedente è

$$
t^6-1=(t-1)(t+1)(t^2+t+1)(t^2-t+1).
$$

Le radici dell'unità già note geometricamente si organizzano qui in due radici reali e due coppie coniugate. La fattorizzazione segue da $(t^3-1)(t^3+1)$ e dalle identità della somma e differenza di cubi.

> [!warning] Attenzione — L'ipotesi riguarda i coefficienti
> Un polinomio reale può avere radici non reali, come $t^2+1$. Viceversa, per un polinomio a coefficienti complessi non necessariamente reali, le radici non sono obbligate a comparire in coppie coniugate: $t-i$ ha soltanto la radice $i$. Sono due errori distinti, discussi nella lezione del [[_transcripts/Geometria 1/2026-09-30 - Fattorizzazione dei polinomi e radici complesse|30 settembre]].

## La formula quadratica sui complessi

Per un polinomio quadratico non conviene ogni volta indovinare i fattori. Possiamo trasformare il problema nel calcolo di una radice quadrata, già studiato nel capitolo precedente.

Siano $a,b,c\in\mathbb C$, con $a\ne0$. L'identità

$$
4a(az^2+bz+c)=(2az+b)^2-(b^2-4ac)
$$

si controlla sviluppando il quadrato. Poiché $4a\ne0$, l'equazione $az^2+bz+c=0$ equivale a

$$
(2az+b)^2=\Delta,\qquad \Delta=b^2-4ac.
$$

Scegliamo un numero $w$ tale che $w^2=\Delta$. Se $\Delta\ne0$, le due radici quadrate sono $w$ e $-w$; dunque

$$
z_1=\frac{-b+w}{2a},\qquad z_2=\frac{-b-w}{2a}.
$$

Sono distinte perché la loro differenza è $w/a\ne0$. Se $\Delta=0$, otteniamo una sola radice distinta $-b/(2a)$ e

$$
az^2+bz+c=a\left(z+\frac b{2a}\right)^2:
$$

la molteplicità è due.

Il segno $\pm$ non fa riferimento a una radice «positiva» e a una «negativa»: nei complessi non c'è quell'ordinamento. Possiamo scegliere una qualunque delle due radici quadrate; cambiando scelta si scambiano soltanto $z_1$ e $z_2$.

**Esempio svolto e verificato.** Consideriamo

$$
z^2+(1-i)z-i=0.
$$

Il discriminante è

$$
\Delta=(1-i)^2-4(-i)=-2i+4i=2i.
$$

Poiché $(1+i)^2=2i$, scegliamo $w=1+i$. Allora

$$
z_1=\frac{-1+i+1+i}{2}=i,
\qquad
z_2=\frac{-1+i-1-i}{2}=-1.
$$

Controlliamo il risultato moltiplicando:

$$
(z-i)(z+1)=z^2+(1-i)z-i.
$$

Questo esempio è ricostruito in modo coerente con il discriminante e le radici quadrate leggibili nella trascrizione del 30 settembre. La nota generata propone invece un polinomio con termine costante nullo: i due esempi non coincidono. La scelta qui è dichiarata e verificata; non è una citazione certa della formula alla lavagna.

## La derivata distingue radici semplici e multiple

Fattorizzare completamente può essere costoso. Per decidere se una radice già trovata sia semplice, basta spesso un controllo più breve: valutare la derivata.

Per $P(t)=a_0+a_1t+\cdots+a_nt^n$ definiamo la **derivata formale**

$$
P'(t)=a_1+2a_2t+\cdots+na_nt^{n-1}.
$$

Non serve introdurre limiti per usarla come operazione sui polinomi. Derivazione di somme e prodotti segue dalle regole sui coefficienti. In particolare,

$$
(PQ)'=P'Q+PQ'.
$$

Per vedere il perché basta controllare i monomi: la derivata di $a_jb_kt^{j+k}$ è $(j+k)a_jb_kt^{j+k-1}$, che si divide nella somma $ja_jb_kt^{j+k-1}+ka_jb_kt^{j+k-1}$ proveniente dai due termini a destra. Sommando sui finitissimi indici otteniamo la formula.

**Proposizione.** Sia $P\in\mathbb R[t]$ oppure $P\in\mathbb C[t]$, non nullo. Se $a$ è una radice di molteplicità $m\ge1$, nella derivata quel fattore compare esattamente $m-1$ volte. Per $m=1$, ciò significa che $a$ non è radice di $P'$.

*Passo 1 — Isolare la molteplicità.* Scriviamo

$$
P(t)=(t-a)^mQ(t),\qquad Q(a)\ne0.
$$

*Passo 2 — Derivare e raccogliere.* La regola del prodotto dà

$$
\begin{aligned}
P'(t)
&=m(t-a)^{m-1}Q(t)+(t-a)^mQ'(t)\\
&=(t-a)^{m-1}\bigl(mQ(t)+(t-a)Q'(t)\bigr).
\end{aligned}
$$

*Passo 3 — Escludere un ulteriore fattore.* In $a$, il polinomio fra parentesi vale $mQ(a)\ne0$: il numero naturale positivo $m$, interpretato come scalare reale o complesso, non si annulla. La molteplicità è quindi esattamente $m-1$.

Ne segue il criterio pratico

$$
a\text{ radice multipla di }P
\quad\Longleftrightarrow\quad
P(a)=0\ \text{e}\ P'(a)=0.
$$

Per esempio, $P(t)=t^3-3t+2=(t-1)^2(t+2)$ ha $P'(t)=3(t-1)(t+1)$. Il valore $1$ è radice di entrambi ed è doppio in $P$. Il valore $-1$ annulla $P'$, ma $P(-1)=4$: non è una radice di $P$.

> [!warning] Attenzione — La derivata non sostituisce l'equazione originaria
> La lezione del [[_transcripts/Geometria 1/2026-11-04 - Sistemi lineari e somme dirette di sottospazi|4 novembre]] sottolinea che una radice della derivata non è automaticamente una radice del polinomio. Per riconoscere una radice multipla servono **entrambe** le uguaglianze. Qui esplicitiamo inoltre l'ipotesi su $\mathbb R$ o $\mathbb C$: in un campo come $\mathbb F_2$, il coefficiente $2$ è zero e il passaggio $mQ(a)\ne0$ può fallire.

Per $P$ non nullo, il criterio della radice multipla tramite $P(a)=P'(a)=0$ rimane valido anche su un campo qualsiasi: nella formula precedente, per $m\ge2$ c'è almeno un fattore $t-a$, mentre per $m=1$ il valore della derivata è $Q(a)\ne0$. Ciò che può fallire è l'affermazione più precisa «la molteplicità scende **esattamente** di uno». Separare queste due conclusioni impedisce di togliere inutilmente validità a un criterio che funziona ancora.

## Prima di applicare un teorema, riconosci l'oggetto

L'equazione $z^4-1=0$ è polinomiale nell'incognita complessa $z$. Il suo primo membro è una somma finita di potenze intere non negative di $z$, con coefficienti costanti. Il limite di quattro radici distinte si applica.

L'equazione

$$
|z|^2-1=0
$$

ha invece tutte le soluzioni della circonferenza unitaria: $z=\cos\theta+i\sin\theta$ per ogni angolo $\theta$. Il modulo introduce il coniugato, perché $|z|^2=z\overline z$. Questa espressione non è un polinomio nella sola variabile complessa $z$. In coordinate $z=x+iy$, diventa l'equazione reale in **due** variabili $x^2+y^2-1=0$; non possiamo applicarle un teorema per polinomi in una sola variabile.

> [!warning] Attenzione — Un esponente non basta a dare un grado polinomiale
> Nella [[_transcripts/Geometria 1/2026-10-13 - Somma diretta e dimensione dei sottospazi|lezione del 13 ottobre]] viene corretto proprio l'uso del limite sulle radici in un esercizio contenente un modulo. Prima di contare le soluzioni, controlla che l'espressione sia davvero un polinomio nell'incognita scelta. Lo stesso controllo serve con coniugati, denominatori e potenze non intere; eventuali semplificazioni vanno giustificate insieme al loro dominio.

Questo controllo prepara il seguito del libro: molte condizioni sui polinomi, come $P(0)=0$ oppure $P(0)=P(1)$, saranno trattate come condizioni lineari sui coefficienti. Per comprenderle bene dovremo mantenere distinti il polinomio come oggetto, i suoi coefficienti e i suoi valori.

## Fonti

Il nucleo del capitolo proviene dalla [[Notes/Geometria 1/Lectures/2026-09-30 - Fattorizzazione dei polinomi e radici complesse|nota del 30 settembre sui polinomi]] e dalla [[_transcripts/Geometria 1/2026-09-30 - Fattorizzazione dei polinomi e radici complesse|relativa trascrizione]]: induzione, fattorizzazione come corollario del teorema fondamentale, molteplicità, limite dato dal grado, coniugio delle radici e formula quadratica. L'enunciato del teorema fondamentale è già introdotto nella [[Notes/Geometria 1/Lectures/2026-09-25 - Numeri complessi- operazioni, forma polare e radici|nota del 25 settembre]] e nella [[_transcripts/Geometria 1/2026-09-25 - Numeri complessi- operazioni, forma polare e radici|trascrizione corrispondente]]. La distinzione fra polinomi formali, operazioni sui coefficienti e grado compare anche nella [[Notes/Geometria 1/Lectures/2026-09-30 - Spazi vettoriali, esempi e sottospazi|nota sugli spazi vettoriali del 30 settembre]].

Il rapporto fra molteplicità e derivata riprende l'apertura della [[Notes/Geometria 1/Lectures/2026-11-04 - Sistemi lineari e somme dirette di sottospazi|nota del 4 novembre sui sistemi]] e della [[_transcripts/Geometria 1/2026-11-04 - Sistemi lineari e somme dirette di sottospazi|relativa trascrizione]]. L'avvertenza sulle espressioni contenenti moduli è rintracciabile nella [[_transcripts/Geometria 1/2026-10-13 - Somma diretta e dimensione dei sottospazi|trascrizione del 13 ottobre]].

La prova del teorema del resto attraverso $t^k-a^k$, l'esempio su $\mathbb F_2$, la dimostrazione delle molteplicità mediante coniugio dei coefficienti, il corollario sull'identità dei polinomi e le precisazioni sulla caratteristica sono completamenti didattici. Il teorema fondamentale dell'algebra resta **assunto**, non dimostrato. L'esempio quadratico con termine $-i$ è una ricostruzione controllata coerente con i calcoli della trascrizione, distinta dalla diversa ricostruzione nella nota. Gli altri esempi numerici, gli esercizi e i riscontri sono redazionali; la fattorizzazione di $t^6-1$ riprende un esempio discusso a lezione. Le fonti originarie rimangono inalterate.

## Riscontri degli esercizi

Apri il riscontro dopo aver scritto un tentativo. Una risposta numerica va accompagnata dalle ipotesi che permettono di usarla e da un controllo indipendente, come la moltiplicazione dei fattori o la valutazione nell'equazione iniziale.

### Riscontro 1

> [!tip]- Riscontro 1
> $P+Q=t^2+2t$ ha grado $2$. Il prodotto ha grado $3+3=6$ e coefficiente direttivo $-1$; non occorre svilupparlo. $P-P$ è il polinomio nullo, al quale non assegniamo un grado naturale.
>
> In $\mathbb F_2[t]$, $A\ne B$ perché i coefficienti di $t^2$ e $t$ in $A$ sono $1$. Le funzioni sono uguali: $A(0)=0$ e $A(1)=1+1=0$. Il polinomio non nullo $A$ ha due radici, esattamente il suo grado; il limite è rispettato. Il campo ha solo due elementi, quindi uguaglianza in tutti i suoi punti non significa uguaglianza in più punti del grado.

Torna a [[#Esercizio 1 — Stessi valori, oggetti diversi (polinomi formali e grado)|esercizio 1]].

### Riscontro 2

> [!tip]- Riscontro 2
> La divisione è $P(t)=(t-2)(t^2+3)+2$. Infatti il prodotto dà $t^3-2t^2+3t-6$, cui si aggiunge $2$. Quindi $P(2)=2$, il valore $2$ non è radice di $P$, e occorre sottrarre $c=2$ per annullare il resto.
>
> Nell'identità generale $P=(t-a)Q+r$, sostituire $a$ dà $r=P(a)$. L'esistenza si costruisce fattorizzando ogni $t^k-a^k$ in $P(t)-P(a)$. Se ci sono due divisioni, i resti coincidono valutando in $a$; sottraendo rimane $(t-a)(Q-Q')=0$, che forza $Q=Q'$. Per una costante $d$ la divisione è $d=(t-a)\cdot0+d$, incluso $d=0$.

Torna a [[#Esercizio 2 — Un resto senza tentativi (divisione per un fattore lineare)|esercizio 2]].

### Riscontro 3

> [!tip]- Riscontro 3
> $P_\lambda(0)=0$ e $P_\lambda(1)=1+(\lambda-1)-\lambda=0$. Raccogliendo e fattorizzando,
> $$
> P_\lambda(t)=t\bigl(t^2+(\lambda-1)t-\lambda\bigr)=t(t-1)(t+\lambda).
> $$
> Per $\lambda\notin\{0,-1\}$ le radici $0,1,-\lambda$ sono distinte e semplici. Per $\lambda=0$ si ha $t^2(t-1)$: $0$ doppia e $1$ semplice. Per $\lambda=-1$ si ha $t(t-1)^2$: $0$ semplice e $1$ doppia. Non ci sono altri incontri fra i tre valori. Il coefficiente di $t^3$ è sempre $1$, quindi il grado resta tre anche nei casi speciali.

Torna a [[#Esercizio 3 — Quando le radici si incontrano (fattori e parametro)|esercizio 3]].

### Riscontro 4

> [!tip]- Riscontro 4
> Se $P$ fosse non nullo, avrebbe grado al più tre e quattro radici distinte, in contrasto con il limite. Dunque $P=0$. Tre punti non bastano: $t(t-1)(t-2)$ è un polinomio non nullo di grado tre che si annulla nei tre punti indicati.
>
> Per la prova induttiva, una costante non nulla ha zero radici. Supponi il limite noto fino al grado $n-1$ e prendi $P$ di grado $n$. Se non ha radici hai finito; altrimenti $P=(t-a)Q$, con $\deg Q=n-1$. Ogni radice $b\ne a$ soddisfa $0=(b-a)Q(b)$ e quindi $Q(b)=0$, perché $b-a\ne0$. Il quoziente ha al massimo $n-1$ radici distinte, e aggiungere $a$ dà al massimo $n$. Non serve alcun risultato che assicuri l'esistenza di una radice: il caso senza radici era già trattato.

Torna a [[#Esercizio 4 — Quattro controlli bastano (limite sul numero di radici)|esercizio 4]].

### Riscontro 5

> [!tip]- Riscontro 5
> Sui reali,
> $$
> t^4+1=(t^2+\sqrt2\,t+1)(t^2-\sqrt2\,t+1).
> $$
> Il prodotto è $(t^2+1)^2-2t^2=t^4+1$; ciascun discriminante è $2-4=-2$, dunque i quadratici sono irriducibili reali. Sui complessi le quattro radici sono $e^{i\pi/4},e^{3i\pi/4},e^{5i\pi/4},e^{7i\pi/4}$, usando $e^{i\theta}=\cos\theta+i\sin\theta$; il prodotto dei quattro fattori $t-z_j$ è la fattorizzazione lineare. Sono tutte distinte.
>
> Assumiamo che ogni polinomio complesso non costante abbia **almeno una** radice. Dimostriamo per induzione che un polinomio di grado $n$ è il coefficiente direttivo per un prodotto di $n$ fattori lineari. L'esempio dimostra soltanto una fattorizzazione particolare: non dimostra un enunciato universale su tutti i gradi e tutti i coefficienti.

Torna a [[#Esercizio 5 — Fattorizzare cambiando campo (teorema fondamentale e fattori reali)|esercizio 5]].

### Riscontro 6

> [!tip]- Riscontro 6
> Il grado è $3+2+2=7$. Sui reali le radici distinte sono $-2,1$, con molteplicità tre e due: due valori distinti, cinque copie complessive. Sui complessi si aggiungono $i,-i$, semplici: quattro valori distinti e sette copie complessive. Il fattore $t^2+1$ non produce radici reali.
>
> L'insieme dei valori non registra né le molteplicità né il coefficiente direttivo. Per esempio $t-1$, $(t-1)^2$ e $7(t-1)^2$ hanno tutti lo stesso insieme di radici distinte. Per ricostruire il polinomio complesso servono molteplicità e coefficiente direttivo, oltre ai valori.

Torna a [[#Esercizio 6 — Contare con precisione (molteplicità)|esercizio 6]].

### Riscontro 7

> [!tip]- Riscontro 7
> I coefficienti reali impongono anche la radice $1-2i$ di molteplicità due. Con $-3$ semplice occorrono almeno $2+2+1=5$ gradi. Il polinomio
> $$
> P(t)=(t+3)\bigl((t-(1+2i))(t-(1-2i))\bigr)^2
> =(t+3)(t^2-2t+5)^2
> $$
> è reale, monico e di grado cinque, quindi realizza il minimo. Tutti i gradi sono già occupati dai fattori obbligatori; un altro polinomio dello stesso grado con quelle radici è un multiplo costante di questo. Essere monico forza la costante a essere $1$. Senza tale condizione i polinomi cercati sono $cP$, con $c\in\mathbb R\setminus\{0\}$.
>
> Per la molteplicità, da $P=(t-z)^mQ$ con $Q(z)\ne0$ coniuga i coefficienti: $P=(t-\overline z)^mQ^*$. Poiché $Q^*(\overline z)=\overline{Q(z)}\ne0$, la molteplicità della coniugata è esattamente $m$.

Torna a [[#Esercizio 7 — Completare una lista di radici (coniugio e molteplicità)|esercizio 7]].

### Riscontro 8

> [!tip]- Riscontro 8
> $a=1$, $b=-(2+i)$, $c=1+i$ e $\Delta=(2+i)^2-4(1+i)=-1$. Scegliendo la radice quadrata $i$,
> $$
> z_{1,2}=\frac{2+i\pm i}{2},
> $$
> quindi le radici sono $1+i$ e $1$. Il controllo è $(z-1)(z-1-i)=z^2-(2+i)z+1+i$. Non sono coniugate, né devono esserlo: i coefficienti non sono tutti reali. Scegliendo $-i$ si scambiano i due risultati.
>
> In generale moltiplica l'equazione per $4a$ e riscrivi come $(2az+b)^2=b^2-4ac$. Le due possibili radici quadrate a destra danno $2az+b=\pm w$ e quindi la formula. La divisione è legittima perché lavoriamo su $\mathbb C$ e $a\ne0$.

Torna a [[#Esercizio 8 — Una quadratica senza radici coniugate (formula risolutiva complessa)|esercizio 8]].

### Riscontro 9

> [!tip]- Riscontro 9
> La regola del prodotto dà
> $$
> \begin{aligned}
> P'&=4(t-2)^3(t+1)^2+2(t-2)^4(t+1)\\
> &=(t-2)^3(t+1)\bigl(4(t+1)+2(t-2)\bigr)\\
> &=6t(t-2)^3(t+1).
> \end{aligned}
> $$
> Le radici sono $2$ di molteplicità tre, $-1$ semplice e $0$ semplice. La somma è cinque, il grado della derivata. Soltanto $2,-1$ sono radici anche di $P$, rispettivamente di molteplicità quattro e due. $P'(0)=0$ ma $P(0)=16\ne0$: la derivata da sola non basta.

Torna a [[#Esercizio 9 — Derivare senza perdere le molteplicità (derivata e radici comuni)|esercizio 9]].

### Riscontro 10

> [!tip]- Riscontro 10
> Le condizioni sono
> $$
> 1+a+b+c=0,\qquad 3+2a+b=0,\qquad -1+a-b+c=0.
> $$
> Sottraendo la terza dalla prima ottieni $2+2b=0$, quindi $b=-1$. La seconda dà $a=-1$ e la prima $c=1$. Allora $Q=t^3-t^2-t+1=(t-1)^2(t+1)$. Il fattore residuo in $1$ vale $2\ne0$, quindi la molteplicità è esattamente due.
>
> Partendo dai fattori, la radice almeno doppia in $1$ e quella distinta in $-1$ consumano già tre gradi: il polinomio monico cubico deve essere proprio $(t-1)^2(t+1)$. Svilupparlo dà gli stessi coefficienti. Il secondo metodo spiega direttamente perché la soluzione è unica.

Torna a [[#Esercizio 10 — Progettare una radice doppia (condizioni sui coefficienti)|esercizio 10]].

### Riscontro 11

> [!tip]- Riscontro 11
> L'espressione contiene $\overline z$, perché $|z|^2=z\overline z$; non è un polinomio nella sola variabile $z$. Le soluzioni sono tutti i numeri di modulo uno, cioè la circonferenza unitaria: ce ne sono infinite. Il teorema per un polinomio univariato di grado due non si applica.
>
> Se esistesse $Q$ con $Q(z)=|z|^2$ ovunque, per ogni $x\in\mathbb R$ avremmo $Q(x)=x^2$. Il polinomio $Q(t)-t^2$ avrebbe infinite radici distinte e dovrebbe quindi essere nullo. Ma allora $Q(i)=i^2=-1$, mentre $|i|^2=1$, contraddizione. Questo prova che non è soltanto una questione di notazione: nessun polinomio complesso nella sola variabile può rappresentare quella funzione su tutto $\mathbb C$.

Torna a [[#Esercizio 11 — Un'equazione con infinite soluzioni (modulo e polinomi)|esercizio 11]].

### Riscontro 12

> [!tip]- Riscontro 12
> Per il teorema fondamentale e il suo corollario, un polinomio reale di grado dispari $n$ ha $n$ radici complesse contando le molteplicità. Le non reali si raggruppano in coppie coniugate con uguale molteplicità: ogni coppia contribuisce $2m$, un numero pari. Se non ci fossero radici reali, il totale sarebbe pari, impossibile. Perciò almeno una radice è reale. Contare soltanto i valori distinti non terrebbe traccia dei gradi consumati; in grado pari non c'è contraddizione, come mostra $t^2+1$.
>
> Nell'induzione, il caso di grado uno è esplicito. Per un polinomio di grado $n+1$, il teorema fondamentale viene usato esattamente per scegliere una prima radice. Il teorema del fattore produce poi un quoziente di grado $n$, a cui si applica l'ipotesi induttiva. Riaggiungendo il fattore estratto si ottengono $n+1$ fattori. La scelta della prima radice non è giustificata dall'induzione da sola.

Torna a [[#Esercizio 12 — Una radice reale obbligatoria (induzione e grado dispari)|esercizio 12]].

### Riscontro 13

> [!tip]- Riscontro 13
> In $\mathbb F_2$, $-1=1$ e $2=0$. Pertanto $(t-1)^2=t^2-2t+1=t^2+1$, mentre $P'=2t=0$ è il polinomio nullo. Il numero $1$ è una radice doppia di $P$, ma nella derivata non ha una molteplicità finita uguale a uno: ogni potenza di $t-1$ divide il polinomio nullo.
>
> Nel passaggio decisivo della prova, $mQ(a)$ vale $2\cdot1=0$ anziché essere non nullo. La conclusione «esattamente $m-1$» fallisce. Il criterio per radice multipla funziona ancora: $P(1)=P'(1)=0$ e infatti la radice è doppia. In generale una radice semplice dà $P'(a)=Q(a)\ne0$ anche in questo campo; una radice multipla dà sempre $P'(a)=0$, perché ogni termine conserva almeno un fattore $t-a$.

Torna a [[#Esercizio 13 — Quando il numero due diventa zero (ipotesi sulla derivata)|esercizio 13]].

Il capitolo è acquisito quando sai passare da una radice a un fattore, giustificare il numero delle soluzioni e distinguere ciò che dipende dal campo da ciò che vale in ogni campo. Prova a ricostruire le prove principali partendo dalla domanda che risolvono: togliere un grado, impedire troppe radici, accoppiare le non reali, riconoscere una radice ripetuta.

---

[[Books/Geometria-I/02 - Numeri complessi e geometria del piano|← 02 · Numeri complessi e geometria del piano]] · [[Books/Geometria-I/00 - Indice e piano di studio|Indice e piano di studio]] · [[Books/Geometria-I/04 - Spazi vettoriali e operazioni lineari|04 · Spazi vettoriali e operazioni lineari →]]
