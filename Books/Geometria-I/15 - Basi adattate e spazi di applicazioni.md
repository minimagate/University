# Basi adattate e spazi di applicazioni

Prerequisiti: [[Books/Geometria-I/07 - Dimensione scambio e completamento|dimensione e completamento delle basi]], [[Books/Geometria-I/08 - Somme dirette e decomposizioni|supplementari e decomposizioni]], [[Books/Geometria-I/11 - Applicazioni lineari nucleo e immagine|nucleo, immagine e rango-nullità]] e [[Books/Geometria-I/14 - Matrici associate e composizione|valori su una base e matrici associate]]. Torna all'[[Books/Geometria-I/00 - Indice e piano di studio|indice e piano di studio]].

> [!info] In questo capitolo
> - Considererai le **applicazioni lineari come vettori**: potrai sommarle, costruirne basi e contare quante informazioni servono per descriverle.
> - Sceglierai **basi adattate** ai sottospazi del problema, trasformando un vincolo come $F(U)\subseteq Z$ in un blocco di coefficienti nulli.
> - Calcolerai dimensioni e basi degli spazi di applicazioni che annullano un sottospazio o hanno immagine contenuta in un altro.
> - Distinguerai i vincoli stabili per combinazioni lineari dalle richieste di nucleo, immagine o rango **esatti**.
> - Tornerai dalle matrici alle applicazioni effettive, anche su polinomi e matrici.

## Domande per iniziare dagli esercizi

Prova prima il problema indicato. Se ti fermi, chiediti se il vincolo riguarda gli ingressi, i risultati o entrambi: questa scelta suggerisce quali basi adattare. I riscontri sono raccolti in fondo; prima di aprirli scrivi le dimensioni degli ambienti e il significato delle righe e delle colonne.

| Domanda guida | Esercizi da tentare | Teoria da recuperare |
|---|---|---|
| Come si traduce un vincolo geometrico in un'equazione fra coefficienti? | [[#Esercizio 3 — Nascondere il vincolo nelle basi (una retta mandata in una retta)\|3]] | [[#Progettare una trasformazione\|Il problema di partenza]] |
| Perché le applicazioni lineari formano uno spazio vettoriale? | [[#Esercizio 1 — Sommare macchine lineari (operazioni puntuali)\|1]] | [[#Le trasformazioni formano uno spazio\|Somma, scalari e applicazione nulla]] |
| Qual è una base dello spazio di tutte le applicazioni? | [[#Esercizio 2 — Una sola immagine non nulla (base elementare e dimensione)\|2]] | [[#Le matrici registrano tutte le libertà\|Isomorfismo e applicazioni elementari]] |
| Dove devono stare gli zeri per imporre $F(U)\subseteq Z$? | [[#Esercizio 3 — Nascondere il vincolo nelle basi (una retta mandata in una retta)\|3]], [[#Esercizio 8 — Conservare le matrici simmetriche (endomorfismi con un sottospazio stabile)\|8]] | [[#Scegliere basi adattate ai vincoli\|La forma a blocchi]] |
| Perché contare coefficienti liberi dà davvero una dimensione? | [[#Esercizio 4 — Contare e costruire (dimensione dello spazio vincolato)\|4]] | [[#Contare i coefficienti e costruire una base\|Parametri indipendenti e base]] |
| Come cambiano i blocchi se si impone l'annullamento o si limita l'immagine? | [[#Esercizio 5 — Annullare due direzioni (inclusione nel nucleo)\|5]], [[#Esercizio 6 — Far arrivare tutti i risultati in uno spazio piccolo (vincolo sull'immagine)\|6]], [[#Esercizio 7 — Imporre i due vincoli insieme (nucleo e immagine)\|7]] | [[#Annullare un sottospazio e limitare l'immagine\|Tre famiglie di applicazioni]] |
| Come si usano basi adattate quando i vettori sono polinomi? | [[#Esercizio 10 — Vincoli sui polinomi senza confondere i coefficienti (basi non canoniche)\|10]] | [[#Un esempio completo sui polinomi\|Dai fattori alle matrici]] |
| Perché invertire un'inclusione o chiedere un'uguaglianza cambia il problema? | [[#Esercizio 9 — Le frecce non sono intercambiabili (inclusioni e uguaglianze)\|9]] | [[#Perché l'inclusione non si può invertire\|Il controllo dell'applicazione nulla]] |
| Quali componenti della trasformazione sono davvero libere? | [[#Esercizio 11 — Separare le componenti e riconoscere una proiezione (decomposizioni e condizioni non omogenee)\|11]] | [[#Collegare i vincoli a una decomposizione\|Le tre parti indipendenti]] |
| Come scegli il metodo senza partire da una matrice generica enorme? | [[#Esercizio 8 — Conservare le matrici simmetriche (endomorfismi con un sottospazio stabile)\|8]], [[#Esercizio 10 — Vincoli sui polinomi senza confondere i coefficienti (basi non canoniche)\|10]] | [[#Un metodo per impostare il problema\|La sequenza delle scelte]] |
| Che cosa resta se uno spazio è nullo o il campo è finito? | [[#Esercizio 12 — Gli estremi della formula (casi nulli e campi finiti)\|12]] | [[#Contare i coefficienti e costruire una base\|Casi limite e numero di applicazioni]] |

## Esercizi per verificare la comprensione

Gli esercizi 1–4 costruiscono il linguaggio; 5–8 combinano vincoli diversi; 9–12 richiedono di scegliere e giustificare il metodo. Una base dello spazio delle applicazioni deve essere descritta mediante **applicazioni**, oppure mediante matrici con le basi di riferimento esplicitamente fissate. Tutti gli enunciati e i riscontri sono redazionali.

### Esercizio 1 — Sommare macchine lineari (operazioni puntuali)

Siano $F,G:\mathbb R^2\to\mathbb R^2$ definite da
$$
F(x,y)=(x+y,2x),\qquad G(x,y)=(2y,x-y).
$$
Calcola $H=2F-G$, la sua matrice canonica e $H(1,-1)$. Dimostra poi in generale che una combinazione lineare di applicazioni lineari fra gli stessi due spazi è ancora lineare. Individua l'applicazione nulla e l'opposto di $F$.

La somma $F+G$ e la composizione $F\circ G$ sono la stessa operazione? Confrontale sul vettore $(1,0)$.

Se ti blocchi: [[#Le trasformazioni formano uno spazio|le operazioni puntuali]].

Controllo dopo il tentativo: [[#Riscontro 1|riscontro 1]].

### Esercizio 2 — Una sola immagine non nulla (base elementare e dimensione)

Siano $B=(v_1,v_2)$ una base di $V$ e $C=(w_1,w_2,w_3)$ una base di $W$ sul campo $K$. Definisci $f_{ij}$ mandando $v_j$ in $w_i$ e l'altro vettore di $B$ in zero.

Scrivi tutte le applicazioni elementari necessarie per una base di $\mathcal L(V,W)$ e dimostrane generazione e indipendenza. Esprimi in questa base l'applicazione definita da
$$
F(v_1)=2w_1-w_3,\qquad F(v_2)=w_2+w_3.
$$
Quale matrice le corrisponde? Il simbolo $2$ crea problemi se il campo ha caratteristica due?

Se ti blocchi: [[#Le matrici registrano tutte le libertà|la base delle applicazioni elementari]].

Controllo dopo il tentativo: [[#Riscontro 2|riscontro 2]].

### Esercizio 3 — Nascondere il vincolo nelle basi (una retta mandata in una retta)

In $V=\mathbb R^3$ e $W=\mathbb R^2$ poni
$$
U=\operatorname{span}((1,1,0)),\qquad Z=\operatorname{span}((1,-1)).
$$
Scegli le basi adattate
$$
B=((1,1,0),(0,1,0),(0,0,1)),\qquad C=((1,-1),(0,1)).
$$
Descrivi tutte le matrici $M_{C\leftarrow B}(F)$ per cui $F(U)\subseteq Z$. Determina dimensione e una base dello spazio delle applicazioni, dando formule in $(x,y,z)$.

Se la matrice canonica è $\begin{pmatrix}a&b&c\\d&e&f\end{pmatrix}$, quale equazione impone il vincolo? Controlla infine l'applicazione
$$
F(x,y,z)=(2x-y+z,-3x+2y+4z)
$$
e trovane la matrice nelle basi adattate.

Se ti blocchi: [[#Progettare una trasformazione|l'equazione del vincolo]] · [[#Scegliere basi adattate ai vincoli|adattare le basi]].

Controllo dopo il tentativo: [[#Riscontro 3|riscontro 3]].

### Esercizio 4 — Contare e costruire (dimensione dello spazio vincolato)

Supponi
$$
\dim V=5,\quad \dim W=4,\quad \dim U=3,\quad \dim Z=1,
$$
con $U\le V$ e $Z\le W$. Scegli basi adattate e scrivi la forma delle matrici di
$$
\mathcal S(U,Z)=\{F\in\mathcal L(V,W):F(U)\subseteq Z\}.
$$
Calcola la dimensione e descrivi una base mediante gli indici delle applicazioni $f_{ij}$. Perché i coefficienti che hai contato possono essere scelti indipendentemente? Gli zeri si troverebbero necessariamente nelle stesse posizioni usando basi arbitrarie?

Se ti blocchi: [[#Contare i coefficienti e costruire una base|dimensione e base dello spazio vincolato]].

Controllo dopo il tentativo: [[#Riscontro 4|riscontro 4]].

### Esercizio 5 — Annullare due direzioni (inclusione nel nucleo)

Sia $U\le\mathbb R^4$ generato da
$$
u_1=(1,1,0,0),\qquad u_2=(0,1,1,0).
$$
Descrivi tutte le applicazioni lineari $F:\mathbb R^4\to\mathbb R^3$ tali che $U\subseteq\ker F$. Trova dimensione e una base di questo spazio di applicazioni.

Puoi usare $B=(u_1,u_2,e_3,e_4)$: verifica prima che sia una base e ricava le coordinate del vettore $(x_1,x_2,x_3,x_4)$. Esiste fra queste applicazioni una funzione iniettiva? Quando il nucleo è esattamente $U$?

Se ti blocchi: [[#Annullare un sottospazio e limitare l'immagine|annullare i vettori di una base di U]].

Controllo dopo il tentativo: [[#Riscontro 5|riscontro 5]].

### Esercizio 6 — Far arrivare tutti i risultati in uno spazio piccolo (vincolo sull'immagine)

Considera
$$
V=\mathbb R[t]_{\le2},\qquad W=\mathbb R[t]_{\le3},\qquad
Z=\{q\in W:q(0)=q'(0)=0\}.
$$
Trova una base di $Z$, poi dimensione e una base dello spazio delle applicazioni $F:V\to W$ con $\operatorname{Im}F\subseteq Z$. Descrivi le immagini di $1,t,t^2$ usando coefficienti liberi.

L'applicazione
$$
F(p)=p(0)t^2+p(1)t^3
$$
appartiene allo spazio? La sua immagine è soltanto contenuta in $Z$ oppure è uguale a $Z$? Giustifica senza assumere che le due valutazioni siano indipendenti.

Se ti blocchi: [[#Annullare un sottospazio e limitare l'immagine|limitare l'immagine]].

Controllo dopo il tentativo: [[#Riscontro 6|riscontro 6]].

### Esercizio 7 — Imporre i due vincoli insieme (nucleo e immagine)

In $V=W=\mathbb R^3$ poni
$$
U=\operatorname{span}((1,1,1)),\qquad
Z=\{(x,y,z):x+y+z=0\}.
$$
Descrivi tutte le applicazioni con $U\subseteq\ker F$ e $\operatorname{Im}F\subseteq Z$. Trova dimensione e una base dello spazio risultante.

Costruisci poi una di queste applicazioni che abbia contemporaneamente $\ker F=U$ e $\operatorname{Im}F=Z$. Perché il fatto che questa singola applicazione esista non rende uno spazio vettoriale la famiglia con quei due vincoli esatti?

Se ti blocchi: [[#Annullare un sottospazio e limitare l'immagine|imporre entrambi i vincoli]] · [[#Perché l'inclusione non si può invertire|uguaglianze e applicazione nulla]].

Controllo dopo il tentativo: [[#Riscontro 7|riscontro 7]].

### Esercizio 8 — Conservare le matrici simmetriche (endomorfismi con un sottospazio stabile)

Sia $V=M_{2,2}(\mathbb R)$ e sia $U$ il sottospazio delle matrici simmetriche. Usa la base ordinata
$$
B=(E_{11},E_{22},E_{12}+E_{21},E_{12}-E_{21}).
$$
Dimostra che è adattata a $U$ e determina dimensione e una base dello spazio degli endomorfismi $F:V\to V$ per cui $F(U)\subseteq U$.

Controlla se vi appartengono
$$
P(X)=\frac{X+X^T}{2},
\qquad
G(X)=x_{11}(E_{12}-E_{21}).
$$
Basta sapere che un endomorfismo ha immagine di dimensione tre per concludere che preserva $U$?

Se ti blocchi: [[#Scegliere basi adattate ai vincoli|un sottospazio stabile]] · [[#Un metodo per impostare il problema|ritornare agli oggetti originali]].

Controllo dopo il tentativo: [[#Riscontro 8|riscontro 8]].

### Esercizio 9 — Le frecce non sono intercambiabili (inclusioni e uguaglianze)

Per $V=W=\mathbb R^2$ e $U=Z=\operatorname{span}(e_1)$, stabilisci quali famiglie sono sottospazi di $\mathcal L(V,W)$:
$$
\begin{aligned}
\mathcal A&=\{F:U\subseteq\ker F\},\\
\mathcal B&=\{F:\ker F\subseteq U\},\\
\mathcal C&=\{F:\ker F=U\},\\
\mathcal D&=\{F:\operatorname{Im}F=Z\},\\
\mathcal E&=\{F:\operatorname{rank}F=1\}.
\end{aligned}
$$
Tutte le $F$ considerate sono lineari. Per ogni risposta negativa esibisci un elemento della famiglia e spiega perché manca l'applicazione nulla. Trova la dimensione dell'eventuale sottospazio.

In generale, che cosa cambia per $\mathcal B$ se $U=V$, per $\mathcal D$ se $Z=\{0\}$ e per il vincolo di rango esatto se si chiede rango zero?

Se ti blocchi: [[#Perché l'inclusione non si può invertire|il verso dei vincoli e il controllo di zero]].

Controllo dopo il tentativo: [[#Riscontro 9|riscontro 9]].

### Esercizio 10 — Vincoli sui polinomi senza confondere i coefficienti (basi non canoniche)

Siano
$$
V=\mathbb R[t]_{\le3},\quad W=\mathbb R[t]_{\le2},\quad
U=\{p\in V:p(0)=0\},\quad Z=\operatorname{span}(1+t).
$$
Calcola dimensione e una base dello spazio delle $F$ con $F(U)\subseteq Z$, descrivendo le immagini dei monomi. Mostra poi il blocco nullo nelle basi
$$
B=(t,t^2,t^3,1),\qquad C=(1+t,t,t^2).
$$
Quale forma ha invece la matrice nelle basi canoniche ordinate per grado crescente?

Controlla l'applicazione
$$
F(p)=p(0)t^2+\bigl(p(1)-p(0)\bigr)(1+t),
$$
e trovane nucleo, immagine e rango.

Se ti blocchi: [[#Un esempio completo sui polinomi|come costruire basi adattate]] · [[#Un metodo per impostare il problema|tradurre e verificare il vincolo]].

Controllo dopo il tentativo: [[#Riscontro 10|riscontro 10]].

### Esercizio 11 — Separare le componenti e riconoscere una proiezione (decomposizioni e condizioni non omogenee)

Siano $V=U\oplus T$ e $W=Z\oplus Y$, tutti finito dimensionali. Dimostra che un'applicazione con $F(U)\subseteq Z$ è determinata, in modo indipendente, da tre applicazioni lineari
$$
A:U\to Z,\qquad B:T\to Z,\qquad C:T\to Y.
$$
Ricostruisci $F$ e deduci di nuovo la sua dimensione come spazio di scelte.

In $\mathbb R^3$, poni $U=\operatorname{span}(e_1,e_2)$. Trova poi tutte le applicazioni $P$ che soddisfano
$$
P|_U=\operatorname{id}_U,\qquad \operatorname{Im}P\subseteq U.
$$
Verifica $P^2=P$. Queste applicazioni formano un sottospazio? Descrivi invece le possibili differenze $P-Q$ fra due di esse.

Se ti blocchi: [[#Collegare i vincoli a una decomposizione|le componenti indipendenti]] · [[#Perché l'inclusione non si può invertire|condizioni che escludono zero]].

Controllo dopo il tentativo: [[#Riscontro 11|riscontro 11]].

### Esercizio 12 — Gli estremi della formula (casi nulli e campi finiti)

Per $U\le V$, $Z\le W$, con dimensioni $k,n,\ell,m$, usa la formula di $\dim\mathcal S(U,Z)$ per trattare separatamente
$$
U=\{0\},\quad U=V,\quad Z=\{0\},\quad Z=W,\quad V=\{0\},\quad W=\{0\}.
$$
Spiega il significato di ogni risultato senza limitarti a sostituire numeri.

Se il campo ha $q$ elementi, quante applicazioni contiene uno spazio di dimensione $d$? Applica il conteggio a $n=3,m=2,k=1,\ell=1$ su $\mathbb F_2$, prima con il solo vincolo $F(U)\subseteq Z$, poi con i due vincoli simultanei $U\subseteq\ker F$ e $\operatorname{Im}F\subseteq Z$. Quante applicazioni ci sono se $d=0$?

Se ti blocchi: [[#Contare i coefficienti e costruire una base|casi limite e campo finito]] · [[#Annullare un sottospazio e limitare l'immagine|i due vincoli simultanei]].

Controllo dopo il tentativo: [[#Riscontro 12|riscontro 12]].

## Teoria da recuperare

Usa la tabella iniziale per leggere lo strumento necessario al tuo tentativo. Il percorso del capitolo è sempre lo stesso: chiarire il vincolo, scegliere basi che lo rendano visibile, dimostrare che i coefficienti rimasti sono liberi e ricostruire le applicazioni.

## Progettare una trasformazione

Finora abbiamo studiato soprattutto una trasformazione già assegnata. Ora cambiamo domanda: **quante trasformazioni lineari possono rispettare una certa richiesta?** Non cerchiamo più i vettori che una matrice annulla; cerchiamo le matrici, o le applicazioni, che si comportano nel modo desiderato.

Prendiamo $F:\mathbb R^3\to\mathbb R^2$ e chiediamo che la retta
$$
U=\operatorname{span}((1,1,0))
$$
sia mandata nella retta
$$
Z=\operatorname{span}((1,-1)).
$$
Una matrice canonica generica ha sei coefficienti:
$$
A=\begin{pmatrix}a&b&c\\d&e&f\end{pmatrix}.
$$
La richiesta si controlla su un generatore di $U$, perché $F$ è lineare:
$$
F(1,1,0)=(a+b,d+e)\in Z.
$$
Un vettore appartiene a $Z$ se la somma delle sue due componenti è zero. Quindi
$$
a+b+d+e=0.
$$
È una relazione fra sei coefficienti: possiamo scegliere, per esempio, $a,b,c,d,f$ e ricavare $e=-a-b-d$. Ci aspettiamo cinque libertà indipendenti.

Questa impostazione funziona. Ma con spazi di polinomi, molte dimensioni e diversi sottospazi, partire da coefficienti tutti generici può nascondere il significato della richiesta. Scegliere una base che cominci dal vettore $(1,1,0)$ rende invece il vincolo una condizione sulla **prima colonna**. Scegliere nel codominio una base che cominci da $(1,-1)$ rende l'appartenenza a $Z$ una condizione di **coordinata nulla**.

Il punto non è indovinare una matrice particolarmente semplice: è usare la libertà di scegliere le basi per semplificare tutte le matrici ammissibili. Prima di farlo, dobbiamo sapere in quale spazio vivono queste trasformazioni.

## Le trasformazioni formano uno spazio

Fissiamo due spazi vettoriali $V,W$ sullo **stesso campo** $K$. Indichiamo con
$$
\mathcal L(V,W)=\{F:V\to W:F\text{ è lineare su }K\}
$$
l'insieme delle applicazioni lineari. Si usa anche la notazione $\operatorname{Hom}_K(V,W)$: in questo capitolo indica esattamente lo stesso insieme.

Definiamo le operazioni punto per punto:
$$
(F+G)(v)=F(v)+G(v),\qquad
(\lambda F)(v)=\lambda F(v).
$$
A destra si sommano o si moltiplicano per scalare **vettori di $W$**. A sinistra si ottiene una nuova **funzione**. Per sapere che le operazioni restano dentro $\mathcal L(V,W)$, verifichiamo la linearità del risultato.

Siano $F,G$ lineari, $\alpha,\beta\in K$ e $u,v\in V$. Per $H=\alpha F+\beta G$:
$$
\begin{aligned}
H(u+v)
&=\alpha F(u+v)+\beta G(u+v)\\
&=\alpha F(u)+\alpha F(v)+\beta G(u)+\beta G(v)\\
&=H(u)+H(v),
\end{aligned}
$$
dove l'ultimo passaggio riordina le somme in $W$. Inoltre, per $\lambda\in K$,
$$
\begin{aligned}
H(\lambda v)
&=\alpha\lambda F(v)+\beta\lambda G(v)\\
&=\lambda\bigl(\alpha F(v)+\beta G(v)\bigr)
=\lambda H(v).
\end{aligned}
$$
Il campo è commutativo, perciò possiamo riordinare i prodotti degli scalari. Ogni combinazione lineare di applicazioni lineari è dunque ancora lineare.

L'**applicazione nulla**, indicata qui con $0_{\mathcal L}$, è
$$
0_{\mathcal L}(v)=0_W\qquad\text{per ogni }v\in V.
$$
È lineare e fa da neutro per la somma. L'opposto di $F$ è $-F$, definito da $(-F)(v)=-F(v)$. Associatività, commutatività, distributività e azione dell'unità si verificano valutando nei singoli $v$ e usando i corrispondenti assiomi di $W$. Per esempio,
$$
((F+G)+H)(v)=(F(v)+G(v))+H(v)
=F(v)+(G(v)+H(v))=(F+(G+H))(v).
$$
Poiché le funzioni coincidono quando coincidono in ogni argomento, queste identità puntuali sono identità di funzioni. Abbiamo quindi uno spazio vettoriale.

> [!abstract] Concetto chiave — Le trasformazioni possono essere vettori
> In $\mathcal L(V,W)$ i vettori sono applicazioni lineari. Sommarle significa sommare i loro risultati sullo stesso ingresso. Una base di questo spazio sarà una famiglia di applicazioni dalla quale costruire ogni altra mediante un'unica combinazione lineare.

**Esempio svolto.** In $\mathcal L(\mathbb R^2,\mathbb R^2)$, se $F(x,y)=(x,0)$ e $G(x,y)=(0,y)$, allora $F+G=\operatorname{id}_{\mathbb R^2}$. L'identità è la somma delle due proiezioni coordinate. Si può inoltre moltiplicare una trasformazione per uno scalare: $(3F-G)(x,y)=(3x,-y)$.

> [!warning] Attenzione — Somma e composizione hanno ingressi diversi
> Questa distinzione è redazionale. La somma richiede due applicazioni con lo **stesso dominio e lo stesso codominio**. La composizione richiede invece che il risultato della prima possa essere dato in ingresso alla seconda. Per $F:V\to W$ e $G:W\to T$ la composizione $G\circ F$ ha senso, ma la scrittura $F+G$ in generale no. Anche quando entrambe sono endomorfismi di $V$, le due operazioni restano diverse.

## Le matrici registrano tutte le libertà

Da ora, salvo diversa indicazione, $V$ e $W$ hanno dimensioni finite
$$
\dim V=n,\qquad \dim W=m.
$$
Fissiamo basi ordinate $B=(v_1,\ldots,v_n)$ e $C=(w_1,\ldots,w_m)$. Il capitolo 14 ha costruito la matrice $M_{C\leftarrow B}(F)$: la sua colonna $j$ è $[F(v_j)]_C$.

Qui osserviamo qualcosa in più: il passaggio alla matrice rispetta anche la struttura vettoriale **delle applicazioni**. Consideriamo
$$
\Phi_{B,C}:\mathcal L(V,W)\longrightarrow M_{m,n}(K),
\qquad F\longmapsto M_{C\leftarrow B}(F).
$$

### Perché il passaggio alla matrice è lineare e biettivo

La colonna $j$ della matrice di $\alpha F+\beta G$ è
$$
[(\alpha F+\beta G)(v_j)]_C
=\alpha[F(v_j)]_C+\beta[G(v_j)]_C.
$$
È la colonna $j$ di $\alpha M_{C\leftarrow B}(F)+\beta M_{C\leftarrow B}(G)$. Dunque
$$
\Phi_{B,C}(\alpha F+\beta G)
=\alpha\Phi_{B,C}(F)+\beta\Phi_{B,C}(G).
$$
Per l'iniettività, due applicazioni con la stessa matrice hanno le stesse immagini dei vettori di $B$; essendo lineari, coincidono su tutto $V$.

Per la suriettività, data una matrice $A=(a_{ij})$, prescriviamo
$$
F(v_j)=\sum_{i=1}^m a_{ij}w_i.
$$
Il teorema di costruzione su una base dà un'unica applicazione lineare con questi valori. La sua matrice è proprio $A$. Pertanto $\Phi_{B,C}$ è un **isomorfismo**.

L'isomorfismo dipende dalle basi fissate. Cambiandole, la stessa applicazione avrà in generale una matrice diversa; la dimensione dello spazio delle applicazioni non cambierà.

### Una base fatta di trasformazioni elementari

Per ogni $1\le i\le m$ e $1\le j\le n$, definiamo $f_{ij}$ assegnandone i valori su $B$:
$$
f_{ij}(v_h)=
\begin{cases}
w_i,&h=j,\\
0_W,&h\ne j.
\end{cases}
$$
L'esistenza e l'unicità di $f_{ij}$ seguono ancora dal teorema sulla base. Se $v=\sum_hx_hv_h$, allora
$$
f_{ij}(v)=x_jw_i.
$$
Questa applicazione prende il coefficiente lungo $v_j$ e lo usa come coefficiente lungo $w_i$. La sua matrice è $E_{ij}$, con un solo $1$ in posizione $(i,j)$.

**Generazione.** Se $F(v_j)=\sum_i a_{ij}w_i$, allora
$$
F=\sum_{j=1}^n\sum_{i=1}^m a_{ij}f_{ij}.
$$
Per controllarlo valutiamo su $v_h$: rimangono solo gli addendi con $j=h$, e il risultato è $\sum_i a_{ih}w_i=F(v_h)$. Due applicazioni lineari uguali su una base sono uguali.

**Indipendenza.** Se $\sum_{j,i}c_{ij}f_{ij}=0_{\mathcal L}$, valutiamo su $v_h$:
$$
\sum_{i=1}^m c_{ih}w_i=0_W.
$$
L'indipendenza di $C$ forza $c_{ih}=0$ per ogni $i$. Ripetendo per ogni $h$, tutti i coefficienti sono nulli. Le $mn$ applicazioni elementari formano quindi una base.

> [!abstract] Concetto chiave — Dimensione dello spazio delle applicazioni
> Per spazi finito dimensionali sullo stesso campo,
> $$
> \boxed{\dim\mathcal L(V,W)=(\dim V)(\dim W)=mn.}
> $$
> Ogni vettore di una base del dominio può avere un'immagine arbitraria nel codominio: $n$ scelte, ciascuna descritta da $m$ coefficienti indipendenti.

Il numero $mn$ non misura il rango di una particolare trasformazione. Misura la dimensione dello spazio in cui **tutte** quelle trasformazioni sono i singoli elementi. Per esempio, le matrici $2\times2$ hanno quattro coefficienti liberi, ma una specifica matrice può avere rango $0,1$ o $2$.

Se $V=\{0\}$, la linearità impone che l'unico elemento sia mandato in zero: c'è soltanto l'applicazione nulla. Lo stesso vale se $W=\{0\}$. In entrambi i casi $mn=0$, e la base dello spazio delle applicazioni è vuota. Per queste dimensioni, le scritture matriciali si intendono con colonne o righe vuote; non è necessario disegnare una matrice per descrivere l'unica funzione.

## Scegliere basi adattate ai vincoli

Fissiamo sottospazi $U\le V$ e $Z\le W$, con
$$
\dim U=k,\qquad \dim Z=\ell.
$$
Una **base adattata a $U$** è una base di $V$ i cui primi $k$ vettori formano una base di $U$. Si costruisce scegliendo una base di $U$ e completandola a una di $V$, come nel capitolo 07:
$$
B=(v_1,\ldots,v_k,v_{k+1},\ldots,v_n).
$$
Analogamente scegliamo
$$
C=(w_1,\ldots,w_\ell,w_{\ell+1},\ldots,w_m)
$$
adattata a $Z$. Non stiamo imponendo che questi vettori siano ortogonali o unitari: stiamo scegliendo **quali sottospazi siano descritti dalle prime coordinate**.

Consideriamo
$$
\mathcal S(U,Z)
=\{F\in\mathcal L(V,W):F(U)\subseteq Z\}.
$$
Prima di contare la dimensione, controlliamo che questo insieme sia un sottospazio. L'applicazione nulla vi appartiene perché manda $U$ in $\{0_W\}\subseteq Z$. Se $F,G$ vi appartengono, per $u\in U$ e $\alpha,\beta\in K$:
$$
(\alpha F+\beta G)(u)=\alpha F(u)+\beta G(u)\in Z,
$$
dato che $Z$ è un sottospazio. Per il criterio compatto, $\mathcal S(U,Z)$ è un sottospazio di $\mathcal L(V,W)$.

### Dal vincolo alle colonne e ritorno

Sia $A=M_{C\leftarrow B}(F)=(a_{ij})$. Se $F(U)\subseteq Z$, allora per ogni $j\le k$ abbiamo $F(v_j)\in Z$. Un vettore appartiene a $Z$ esattamente quando le sue ultime $m-\ell$ coordinate nella base $C$ sono nulle. Quindi
$$
a_{ij}=0\qquad\text{quando }i>\ell,\ j\le k.
$$
Le prime $k$ colonne hanno zeri nelle ultime $m-\ell$ righe. Le altre colonne non sono limitate da questa richiesta.

È essenziale provare anche il viceversa. Se quelle entrate sono nulle, ciascun $F(v_j)$ con $j\le k$ è combinazione dei soli $w_1,\ldots,w_\ell$, quindi appartiene a $Z$. Ogni $u\in U$ si scrive $u=\sum_{j=1}^k x_jv_j$, perciò
$$
F(u)=\sum_{j=1}^k x_jF(v_j)\in Z.
$$
Abbiamo una caratterizzazione esatta, non solo una condizione necessaria:
$$
\boxed{F(U)\subseteq Z
\quad\Longleftrightarrow\quad
a_{ij}=0\text{ per }i>\ell,\ j\le k.}
$$

Scrivendo la matrice a blocchi:
$$
A=
\begin{pmatrix}
A_{11}&A_{12}\\
0&A_{22}
\end{pmatrix},
$$
con le dimensioni
$$
A_{11}\in M_{\ell,k}(K),\quad
A_{12}\in M_{\ell,n-k}(K),\quad
A_{22}\in M_{m-\ell,n-k}(K).
$$
Il blocco nullo ha $m-\ell$ righe e $k$ colonne. I blocchi della prima colonna di blocchi riguardano gli ingressi in $U$; quelli della seconda gli ingressi lungo il completamento. Le righe superiori descrivono le componenti in $Z$.

> [!warning] Attenzione — È l'immagine di U a stare in Z
> La richiesta $F(U)\subseteq Z$ non impone che **tutta** l'immagine di $F$ sia contenuta in $Z$. Per i vettori $v_{k+1},\ldots,v_n$ non è stato chiesto nulla. Nella [[_transcripts/Geometria 1/2026-11-04 - Applicazioni lineari e matrici associate|lezione del 4 novembre]] la scelta delle basi serve proprio a rendere evidente quali colonne siano vincolate e quali possano restare arbitrarie.

**Esempio.** Per un endomorfismo $F:V\to V$ che deve conservare un sottospazio $U$, usiamo la stessa base adattata nel dominio e nel codominio. Il vincolo $F(U)\subseteq U$ dà ancora un blocco inferiore sinistro nullo. Il termine «conservare» qui significa mandare i vettori di $U$ dentro $U$, senza richiedere di fissarli uno per uno o di raggiungerli tutti.

## Contare i coefficienti e costruire una base

La matrice adattata ha $mn$ entrate. Il vincolo ne impone nulle $k(m-\ell)$. Le altre restano arbitrarie:
$$
\boxed{\dim\mathcal S(U,Z)=mn-k(m-\ell)
=k\ell+(n-k)m.}
$$
Perché questa conta è una dimostrazione della dimensione? Non basta osservare delle caselle: dobbiamo sapere che ogni assegnazione alle caselle consentite produce una e una sola applicazione, e che non ci sono relazioni nascoste fra quelle scelte.

Il passaggio $\Phi_{B,C}$ è un isomorfismo. Sul lato delle matrici, gli elementi $E_{ij}$ nelle posizioni consentite formano una base: generano perché ogni matrice ammessa si sviluppa mediante le sue entrate, e sono indipendenti perché un'uguaglianza fra matrici vale entrata per entrata. Sul lato delle applicazioni, la base corrispondente è
$$
\mathcal B_{\mathcal S}
=\{f_{ij}:1\le i\le m,\ 1\le j\le n,\ 
j>k\ \text{oppure}\ i\le\ell\}.
$$
Sono tutte le applicazioni elementari tranne quelle con $i>\ell$ e $j\le k$.

Possiamo contare in due modi:
- nelle prime $k$ colonne sono libere $\ell$ entrate ciascuna: $k\ell$;
- nelle altre $n-k$ colonne sono libere tutte le $m$ entrate: $(n-k)m$.

Oppure togliamo le $k(m-\ell)$ posizioni vietate dalle $mn$ totali. I risultati coincidono perché contano la stessa base.

### L'esempio di dimensioni 4 e 5

Nella [[_transcripts/Geometria 1/2026-11-04 - Applicazioni lineari e matrici associate|lezione del 4 novembre]] il dominio ha dimensione $4$, il codominio dimensione $5$, e i sottospazi hanno dimensioni $2$ e $3$. In basi adattate:
$$
M_{C\leftarrow B}(F)=
\begin{pmatrix}
a_{11}&a_{12}&a_{13}&a_{14}\\
a_{21}&a_{22}&a_{23}&a_{24}\\
a_{31}&a_{32}&a_{33}&a_{34}\\
0&0&a_{43}&a_{44}\\
0&0&a_{53}&a_{54}
\end{pmatrix}.
$$
Le posizioni vietate sono $(4,1),(4,2),(5,1),(5,2)$. Restano
$$
20-4=16
$$
coefficienti indipendenti. Una base dello spazio delle applicazioni è costituita dalle $f_{ij}$ per tutti gli indici $1\le i\le5$, $1\le j\le4$, esclusi quei quattro. Dire soltanto «le matrici con un unico $1$» descrive la base sul lato delle matrici; per tornare alle applicazioni bisogna ricordare
$$
f_{ij}(v_j)=w_i,\qquad f_{ij}(v_h)=0\quad(h\ne j).
$$

> [!example] Esempi e controesempi — Che cosa conta la dimensione
> Le applicazioni $\mathbb R^4\to\mathbb R^5$ che mandano un dato piano in un dato sottospazio di dimensione tre formano uno spazio di dimensione $16$. Il numero non è il rango di tutte quelle applicazioni: vi appartiene l'applicazione nulla, di rango zero, e possono appartenervi anche applicazioni di rango quattro. Per esempio, nelle basi adattate, prescrivi $F(v_1)=w_1$, $F(v_2)=w_2$, $F(v_3)=w_4$, $F(v_4)=w_5$: le quattro immagini sono indipendenti e il vincolo è rispettato.

### Casi limite e campo finito

La formula permette di riconoscere subito alcuni estremi, ma è utile tradurli anche in parole:
- se $U=\{0\}$, il vincolo è automatico e la dimensione torna $mn$;
- se $Z=W$, il vincolo è ancora automatico;
- se $U=V$, si impone che tutta l'immagine sia in $Z$, con $\ell n$ libertà;
- se $Z=\{0\}$, si impone di annullare $U$, con $m(n-k)$ libertà.

Per $V=\{0\}$ oppure $W=\{0\}$ c'è soltanto l'applicazione nulla e la dimensione è zero. Le formule restano valide; eventuali blocchi hanno una dimensione nulla e non contengono coefficienti.

Se $K$ ha $q$ elementi, ogni coefficiente libero ha $q$ scelte, indipendenti dalle altre. Uno spazio di dimensione $d$ ha quindi $q^d$ elementi. In particolare
$$
|\mathcal S(U,Z)|=q^{\,mn-k(m-\ell)}.
$$
Per $d=0$ il risultato è $q^0=1$: lo spazio nullo contiene **un elemento**, non nessun elemento. Questi conteggi riguardano il campo finito; su un campo infinito, uno spazio di dimensione positiva contiene infinite applicazioni.

## Annullare un sottospazio e limitare l'immagine

Due richieste frequenti sono casi particolari del vincolo precedente. Guardarle separatamente aiuta a evitare scambi fra righe e colonne.

### Il nucleo deve contenere U

Poniamo
$$
\mathcal A_U=\{F\in\mathcal L(V,W):U\subseteq\ker F\}.
$$
La richiesta significa $F(u)=0$ per ogni $u\in U$, cioè $F(U)\subseteq\{0_W\}$. È quindi il caso $Z=\{0_W\}$, con $\ell=0$.

Nella base del dominio adattata a $U$, le **prime $k$ colonne** sono nulle. Le altre possono essere qualunque vettore di $W$:
$$
M_{C\leftarrow B}(F)=
\begin{pmatrix}0&A_2\end{pmatrix},
\qquad A_2\in M_{m,n-k}(K).
$$
Ne segue
$$
\boxed{\dim\mathcal A_U=m(n-k).}
$$
Una base è $\{f_{ij}:j>k,\ 1\le i\le m\}$.

Il contenimento è nel verso giusto: tutti i vettori di $U$ sono annullati, ma potrebbero esserlo anche altri vettori. Il vincolo non prescrive che il nucleo abbia esattamente dimensione $k$.

**Esempio svolto.** Le applicazioni $F:\mathbb R^3\to\mathbb R^2$ che annullano $e_1$ hanno la forma
$$
F(x,y,z)=y\,a+z\,b,\qquad a,b\in\mathbb R^2.
$$
I due vettori $a,b$ sono arbitrari: quattro coefficienti, dimensione $2(3-1)=4$. Se $a,b$ sono indipendenti, il nucleo è proprio $\operatorname{span}(e_1)$. Se entrambi sono nulli, il nucleo è invece tutto $\mathbb R^3$. Entrambe le applicazioni rispettano l'inclusione richiesta.

### Tutta l'immagine deve stare in Z

Poniamo
$$
\mathcal B_Z=\{F\in\mathcal L(V,W):\operatorname{Im}F\subseteq Z\}.
$$
Ora si chiede $F(V)\subseteq Z$: nel vincolo generale dobbiamo prendere $U=V$, quindi $k=n$.

Ogni colonna rappresenta un risultato in $Z$. Nella base del codominio adattata a $Z$ sono nulle le **ultime $m-\ell$ righe**:
$$
M_{C\leftarrow B}(F)=
\begin{pmatrix}A_1\\0\end{pmatrix},
\qquad A_1\in M_{\ell,n}(K).
$$
Quindi
$$
\boxed{\dim\mathcal B_Z=\ell n.}
$$
Una base è $\{f_{ij}:i\le\ell,\ 1\le j\le n\}$.

In particolare, restringere il codominio dichiarato da $W$ a $Z$ permette di vedere le stesse funzioni come elementi di $\mathcal L(V,Z)$. La condizione «immagine contenuta in $Z$» non è una richiesta di suriettività su $Z$: l'applicazione nulla è ancora ammessa.

### I due vincoli simultanei

Se imponiamo
$$
U\subseteq\ker F,\qquad \operatorname{Im}F\subseteq Z,
$$
devono annullarsi sia le prime $k$ colonne sia le ultime $m-\ell$ righe. Resta libero soltanto il blocco con righe $i\le\ell$ e colonne $j>k$:
$$
M_{C\leftarrow B}(F)=
\begin{pmatrix}
0&A_{12}\\
0&0
\end{pmatrix},
\qquad A_{12}\in M_{\ell,n-k}(K).
$$
La famiglia è $\mathcal A_U\cap\mathcal B_Z$, quindi un sottospazio; la sua dimensione è
$$
\boxed{\dim(\mathcal A_U\cap\mathcal B_Z)=\ell(n-k).}
$$
Una base è $\{f_{ij}:i\le\ell,\ j>k\}$.

> [!example] Esempi e controesempi — Non sommare le libertà di due vincoli
> Se $n=4$, $m=5$, $k=2$, $\ell=3$, annullare $U$ lascia $5\cdot2=10$ libertà; limitare l'immagine a $Z$ ne lascia $3\cdot4=12$. Imporli insieme ne lascia $3\cdot2=6$. Le due famiglie non sono scelte indipendenti da sommare: stiamo prendendo la loro **intersezione**, in cui sono consentite soltanto le posizioni che superano entrambi i controlli.

## Un esempio completo sui polinomi

Le basi adattate diventano particolarmente utili quando gli oggetti non sono già tuple numeriche. Consideriamo
$$
V=\mathbb R[t]_{\le3},\qquad W=\mathbb R[t]_{\le2},
$$
e i sottospazi
$$
U=\{p\in V:p(0)=p(1)=0\},\qquad
Z=\{q\in W:q(1)=0\}.
$$
Vogliamo descrivere tutte le applicazioni lineari $F:V\to W$ per cui $F(U)\subseteq Z$.

### Prima le basi dei sottospazi

Un polinomio si annulla in $0$ e in $1$ se e solo se è divisibile per $t(t-1)$. Poiché ha grado al più tre, il quoziente ha grado al più uno. Dunque
$$
U=\operatorname{span}(u_1,u_2),\qquad
u_1=t(t-1)=t^2-t,\quad u_2=t^2(t-1)=t^3-t^2.
$$
I due polinomi sono indipendenti: hanno gradi distinti e coefficienti direttivi non nulli. Quindi $\dim U=2$.

Analogamente,
$$
Z=\operatorname{span}(w_1,w_2),\qquad
w_1=t-1,\quad w_2=t(t-1)=t^2-t.
$$
La divisione per $t-1$ mostra la generazione; i gradi distinti mostrano l'indipendenza. Si ha $\dim Z=2$.

Completiamo con
$$
B=(u_1,u_2,1,t),\qquad C=(w_1,w_2,1).
$$
Sono basi perché ciascuna famiglia contiene polinomi non nulli di gradi tutti distinti e ha la cardinalità della dimensione dell'ambiente. L'ordine è scelto apposta: i primi due vettori descrivono i sottospazi.

### Poi il vincolo sulla matrice

Le prime due colonne devono avere nulla la terza coordinata:
$$
M_{C\leftarrow B}(F)=
\begin{pmatrix}
a&b&c&d\\
e&f&g&h\\
0&0&i&j
\end{pmatrix}.
$$
Pertanto lo spazio cercato ha dimensione
$$
4\cdot3-2(3-2)=10.
$$
Una base è data dalle dieci applicazioni elementari relative a $B,C$, escluse $f_{31}$ e $f_{32}$. Per esempio, $f_{21}$ è l'applicazione che manda $u_1$ in $w_2=t^2-t$ e manda $u_2,1,t$ in zero. Il suo nome non è il polinomio $w_2$: è una **funzione** che produce quel polinomio su uno specifico vettore della base.

### Infine un'applicazione concreta e il ritorno ai coefficienti

Scegliamo, fra quelle ammesse, la funzione determinata da
$$
F(u_1)=w_1,\qquad F(u_2)=w_2,\qquad F(1)=1,\qquad F(t)=0.
$$
La sua matrice adattata è
$$
\begin{pmatrix}
1&0&0&0\\
0&1&0&0\\
0&0&1&0
\end{pmatrix}.
$$
Per trasformarla in una formula sui polinomi, scriviamo
$$
p=x_0+x_1t+x_2t^2+x_3t^3
=\alpha u_1+\beta u_2+\gamma\,1+\delta\,t.
$$
Confrontando i coefficienti:
$$
\beta=x_3,\quad \alpha=x_2+x_3,\quad
\gamma=x_0,\quad \delta=x_1+x_2+x_3.
$$
Quindi
$$
\begin{aligned}
F(p)
&=(x_2+x_3)(t-1)+x_3(t^2-t)+x_0\\
&=x_3t^2+x_2t+x_0-x_2-x_3.
\end{aligned}
$$
Per $p\in U$, le coordinate $\gamma,\delta$ sono nulle e $F(p)$ è combinazione di $w_1,w_2$: si annulla in $1$, come richiesto.

Questa particolare applicazione ha $\operatorname{Im}F=W$, perché le immagini $w_1,w_2,1$ formano una base di $W$. Il suo nucleo è $\operatorname{span}(t)$: nella formula devono essere $x_3=x_2=x_0=0$. Così $F(U)\subseteq Z$ può coesistere con $\operatorname{Im}F=W$: il vincolo agisceva su $U$, non su tutti gli ingressi. Inoltre $F(U)=Z$ per questa scelta, ma altre applicazioni dello stesso spazio, come quella nulla, hanno un'immagine di $U$ più piccola.

## Perché l'inclusione non si può invertire

Le formule funzionano perché le condizioni considerate sopravvivono a somma e prodotto per scalare. Una piccola modifica dell'enunciato può distruggere questa proprietà.

### Il controllo più rapido: l'applicazione nulla

Per un sottospazio fissato $U\le V$, la condizione
$$
U\subseteq\ker F
$$
significa che $F$ annulla tutti i vettori di $U$. È stabile per combinazioni lineari. La condizione opposta
$$
\ker F\subseteq U
$$
dice invece che tutti i vettori annullati devono trovarsi in $U$.

Se $U$ è un sottospazio **proprio** di $V$, l'applicazione nulla non soddisfa la seconda condizione:
$$
\ker 0_{\mathcal L}=V\not\subseteq U.
$$
La famiglia $\{F:\ker F\subseteq U\}$ non è quindi un sottospazio, anche quando è non vuota. Se fosse vuota, non sarebbe comunque un sottospazio. Se invece $U=V$, la condizione è automatica e la famiglia è tutta $\mathcal L(V,W)$.

> [!warning] Attenzione — Controlla il verso prima delle matrici
> La [[_transcripts/Geometria 1/2026-11-04 - Applicazioni lineari e matrici associate|lezione del 4 novembre]] segnala proprio la differenza fra un nucleo che **contiene** $U$ e un nucleo **contenuto** in $U$: nel secondo verso, per $U$ proprio, manca l'applicazione nulla. Una conta dei coefficienti non può riparare questo difetto.

**Esempio svolto.** In $\mathcal L(\mathbb R^2,\mathbb R^2)$, con $U=\operatorname{span}(e_1)$, sia l'identità sia il suo opposto hanno nucleo $\{0\}\subseteq U$. La loro somma è nulla e ha nucleo tutto $\mathbb R^2$, non contenuto in $U$. La chiusura per somma fallisce. In caratteristica due si può usare l'identità sommata a sé stessa: la stessa conclusione vale.

### Nucleo, immagine e rango esatti

Se si chiede $\ker F=U$ con $U\ne V$, manca ancora l'applicazione nulla. La famiglia non è un sottospazio. Se $U=V$, invece, l'unica applicazione possibile è quella nulla: questo è un sottospazio di dimensione zero.

In dimensione finita, avere esattamente nucleo $U$ è possibile se e solo se
$$
n-k\le m.
$$
La necessità segue da rango-nullità: il rango dovrebbe essere $n-k$ e non può superare $m$. Per la sufficienza, annulliamo i primi $k$ vettori di una base adattata e mandiamo gli altri $n-k$ in vettori indipendenti di $W$. Una relazione con immagine nulla forza allora tutti i coefficienti lungo il completamento a essere nulli; il nucleo è proprio $U$.

Analogamente, il vincolo $\operatorname{Im}F=Z$ con $Z\ne\{0\}$ esclude l'applicazione nulla. Se $Z=\{0\}$, individua soltanto quella nulla. La famiglia con immagine esattamente $Z$ è non vuota se e solo se $\ell\le n$: occorrono almeno $\ell$ vettori del dominio per generare $Z$, e si possono mandare i primi $\ell$ vettori di una base in una base di $Z$, gli altri in zero.

Per il rango prescritto:
- se $r=0$, l'unica applicazione è quella nulla;
- se $1\le r\le\min\{m,n\}$, esistono applicazioni di rango $r$, ma l'insieme che formano non contiene zero e non è un sottospazio;
- per altri valori interi di $r$ la famiglia è vuota.

L'esistenza nel secondo caso si vede mandando $r$ vettori di una base del dominio in $r$ vettori indipendenti del codominio e annullando gli altri.

> [!example] Esempi e controesempi — Una proprietà dello spazio e una del singolo elemento
> Le matrici $2\times2$ con seconda colonna nulla formano un sottospazio di dimensione due. Quelle che, in più, hanno rango esattamente uno escludono la matrice nulla: non formano un sottospazio. Il requisito «questa colonna deve essere zero» è lineare; il requisito «questa altra colonna non deve essere zero» non è stabile per moltiplicazione per lo scalare zero.

Un'ultima distinzione utile è fra $F(U)\subseteq Z$ e $F(U)=Z$. Se $Z\ne\{0\}$, l'uguaglianza esclude l'applicazione nulla, mentre l'inclusione la ammette sempre. Se $Z=\{0\}$, le due condizioni coincidono e significano annullare $U$. Non bisogna dedurre automaticamente che la famiglia con un'uguaglianza sia non vuota: per $F(U)=Z$ è necessario e sufficiente $\ell\le k$, con la stessa costruzione su una base di $U$ e il suo completamento.

## Collegare i vincoli a una decomposizione

Scegliendo basi adattate abbiamo anche scelto dei supplementari:
$$
V=U\oplus T,\qquad W=Z\oplus Y,
$$
dove
$$
T=\operatorname{span}(v_{k+1},\ldots,v_n),\qquad
Y=\operatorname{span}(w_{\ell+1},\ldots,w_m).
$$
Ogni ingresso ha una decomposizione unica $v=u+t$; ogni risultato ha una decomposizione unica come somma di una parte in $Z$ e una in $Y$.

Per un'applicazione che manda $U$ in $Z$, ci sono tre scelte indipendenti:
$$
A:U\to Z,\qquad B:T\to Z,\qquad C:T\to Y.
$$
Da esse ricostruiamo
$$
F(u+t)=A(u)+B(t)+C(t).
$$
La decomposizione unica dell'ingresso rende la definizione ben posta. Somme e scalari si distribuiscono sulle due componenti di $u+t$, e la linearità di $A,B,C$ mostra che $F$ è lineare. Per $u\in U$, $F(u)=A(u)\in Z$, quindi il vincolo è rispettato.

Viceversa, partendo da $F$, la restrizione a $U$ determina $A$. Per $t\in T$, decomponiamo univocamente $F(t)$ in una parte in $Z$ e una in $Y$: queste sono $B(t)$ e $C(t)$. Le due funzioni sono lineari. Infatti, per esempio, le parti in $Z$ di $F(t+t')=F(t)+F(t')$ devono coincidere, per unicità delle componenti, con $B(t)+B(t')$; lo stesso vale per gli scalari e per $C$.

Abbiamo quindi descritto tutte le applicazioni ammesse senza sovrapposizioni. I tre blocchi liberi della matrice sono precisamente le matrici di queste tre funzioni:
$$
\begin{pmatrix}
\text{da }U\text{ a }Z&\text{da }T\text{ a }Z\\
0&\text{da }T\text{ a }Y
\end{pmatrix}.
$$
Le loro dimensioni si sommano perché le tre scelte sono indipendenti:
$$
k\ell+(n-k)\ell+(n-k)(m-\ell)
=k\ell+(n-k)m.
$$
Il blocco proibito descriverebbe la componente da $U$ a $Y$. La richiesta iniziale dice esattamente che questa componente deve essere nulla.

Questa lettura aiuta a ricordare la formula, ma non rende canonica la scelta dei supplementari: $T$ e $Y$ dipendono dalle basi completate. Lo spazio $\mathcal S(U,Z)$ e la sua dimensione dipendono soltanto dai sottospazi assegnati.

## Un metodo per impostare il problema

Quando ti viene assegnata una famiglia di applicazioni, parti dal significato della condizione. Il primo controllo è **il tipo degli oggetti**: le funzioni hanno gli stessi spazi di partenza e di arrivo, sullo stesso campo? Poi verifica se l'applicazione nulla soddisfa il requisito. Se non lo soddisfa, hai già escluso che la famiglia sia un sottospazio.

Se zero è ammesso, non hai ancora finito: devi verificare la stabilità per combinazioni lineari. Per le inclusioni trattate qui questa verifica usa la linearità di $F$ e la chiusura dei sottospazi assegnati. Per condizioni diverse non va presunta.

Il passo seguente è scegliere le basi a partire dai **dati**:
1. se sono fissati vettori che devono essere annullati, prendine una base dello span e completala nel dominio;
2. se certi ingressi devono finire in un sottospazio, comincia il dominio con una base di quel sottospazio;
3. se i risultati devono stare in uno spazio assegnato, comincia il codominio con una sua base.

Le colonne dicono che cosa succede ai vettori della base di partenza; le righe dicono quali componenti del risultato possono comparire. Questa è la ragione dei blocchi di zeri. Dopo averli individuati, dimostra il viceversa: ogni matrice della forma scritta deve rispettare davvero la condizione originaria.

Solo a questo punto conta i coefficienti liberi e costruisci le applicazioni elementari consentite. La base cercata va poi descritta negli oggetti del problema. Se il codominio è uno spazio di polinomi, il risultato di $f_{ij}$ è un polinomio; se è uno spazio di matrici, è una matrice. Le colonne numeriche sono la loro rappresentazione, non la loro sostituzione definitiva.

Si può anche lavorare in basi canoniche e imporre equazioni sui coefficienti. È un metodo corretto, ma il numero di equazioni scritte non è automaticamente il numero dei vincoli indipendenti: alcune potrebbero essere ridondanti. Le basi adattate rendono questo punto trasparente nei problemi del capitolo, perché le entrate forzate a zero sono coordinate distinte e indipendenti.

> [!abstract] Concetto chiave — Scegli le basi per rendere visibile la richiesta
> Un vincolo geometrico sui sottospazi diventa un vincolo sulle coordinate quando le basi cominciano dai vettori dei sottospazi stessi. La buona scelta non cambia il problema: rende leggibili le libertà rimaste.

## Fonti

Lo spazio delle applicazioni lineari, l'isomorfismo con le matrici rispetto a basi fissate, il conteggio $\dim\mathcal L(V,W)=mn$, le applicazioni elementari e i vincoli $F(U)\subseteq Z$ provengono dalla [[Notes/Geometria 1/Lectures/2026-11-04 - Applicazioni lineari e matrici associate|nota del 4 novembre sulle matrici associate]] e dalla [[_transcripts/Geometria 1/2026-11-04 - Applicazioni lineari e matrici associate|trascrizione corrispondente]]. La stessa lezione sceglie basi adattate nell'esempio di dimensioni $4,5,2,3$, ottiene sedici posizioni libere e risale dalle matrici elementari alle applicazioni definite sui vettori delle basi.

Dalla medesima trascrizione provengono il caso $U\subseteq\ker F$, con prime colonne nulle, e il richiamo al verso opposto dell'inclusione, che per $U$ proprio esclude l'applicazione nulla. Le verifiche di chiusura sono qui completate esplicitando la presenza dell'applicazione nulla.

La trattazione sistematica del vincolo sull'intera immagine, dei vincoli simultanei, dei casi nulli e dei campi finiti, delle condizioni esatte e delle loro condizioni di esistenza è un completamento didattico. Lo stesso vale per l'interpretazione mediante supplementari e per gli esempi concreti su polinomi e matrici. I dodici esercizi, i loro dati e tutti i riscontri sono redazionali; l'esempio $4,5,2,3$ nella teoria riprende invece quello della lezione. Non si attribuiscono ai docenti le formulazioni e le prove aggiunte. Nessuna fonte originale è stata modificata. Per il quadro generale: [[Books/Geometria-I/90 - Fonti e criteri editoriali|fonti e criteri editoriali]].

## Riscontri degli esercizi

Apri il riscontro dopo aver scritto la condizione, le dimensioni e un primo tentativo. Controlla soprattutto il verso delle inclusioni e il passaggio dalle applicazioni alle matrici e ritorno. Una dimensione corretta senza una giustificazione della libertà dei coefficienti non conclude la prova.

### Riscontro 1

> [!tip]- Riscontro 1
> Si ottiene
> $$
> H(x,y)=2(x+y,2x)-(2y,x-y)=(2x,3x+y).
> $$
> La matrice canonica è $\begin{pmatrix}2&0\\3&1\end{pmatrix}$ e $H(1,-1)=(2,2)$. Per la prova generale, se $H=\alpha F+\beta G$, espandi $H(u+v)$ e $H(\lambda v)$ usando prima la definizione puntuale e poi la linearità di $F,G$: ottieni rispettivamente $H(u)+H(v)$ e $\lambda H(v)$. L'applicazione nulla manda ogni ingresso in zero; l'opposto manda $v$ in $-F(v)$.
>
> Per $(1,0)$, $(F+G)(1,0)=(1,2)+(0,1)=(1,3)$. Invece $G(1,0)=(0,1)$ e $F(G(1,0))=(1,0)$. Somma e composizione sono diverse anche quando hanno lo stesso formato.

Torna a [[#Esercizio 1 — Sommare macchine lineari (operazioni puntuali)|esercizio 1]].

### Riscontro 2

> [!tip]- Riscontro 2
> La base è $(f_{11},f_{21},f_{31},f_{12},f_{22},f_{32})$, nell'ordine che segue le colonne. Se una combinazione è l'applicazione nulla, valutarla su $v_1$ annulla i tre coefficienti della prima colonna per l'indipendenza di $C$; valutarla su $v_2$ annulla gli altri. Per generare una funzione arbitraria, sviluppa ciascuna delle sue due immagini nella base $C$ e usa quei sei coefficienti.
>
> Per i dati assegnati,
> $$
> F=2f_{11}-f_{31}+f_{22}+f_{32},\qquad
> M_{C\leftarrow B}(F)=
> \begin{pmatrix}2&0\\0&1\\-1&1\end{pmatrix}.
> $$
> La dimensione è $6$. In caratteristica due $2=0$ e $-1=1$, quindi alcuni coefficienti cambiano valore; la formula resta valida nel campo. Le sei applicazioni elementari continuano a essere una base: la prova non ha diviso per $2$.

Torna a [[#Esercizio 2 — Una sola immagine non nulla (base elementare e dimensione)|esercizio 2]].

### Riscontro 3

> [!tip]- Riscontro 3
> Nella base $B$, $(x,y,z)=x(1,1,0)+(y-x)(0,1,0)+z(0,0,1)$. Il vincolo richiede
> $$
> M_{C\leftarrow B}(F)=
> \begin{pmatrix}\alpha&\beta&\gamma\\0&\delta&\varepsilon\end{pmatrix}.
> $$
> Ci sono cinque coefficienti indipendenti. Una base dello spazio delle applicazioni è
> $$
> \begin{aligned}
> f_{11}(x,y,z)&=x(1,-1),&
> f_{12}(x,y,z)&=(y-x)(1,-1),\\
> f_{13}(x,y,z)&=z(1,-1),&
> f_{22}(x,y,z)&=(y-x)(0,1),\\
> f_{23}(x,y,z)&=z(0,1).
> \end{aligned}
> $$
> Le matrici relative a $B,C$ sono le cinque matrici elementari consentite; questo prova indipendenza e generazione.
>
> Nelle basi canoniche il vincolo diventa $a+b+d+e=0$, perché $F(1,1,0)=(a+b,d+e)$ deve avere componenti opposte. Per la funzione data, $F(1,1,0)=(1,-1)$, quindi la richiesta è rispettata. Le immagini degli altri due vettori di $B$ sono $(-1,2)$ e $(1,4)$, con coordinate in $C$ rispettivamente $(-1,1)^T$ e $(1,5)^T$. Pertanto
> $$
> M_{C\leftarrow B}(F)=\begin{pmatrix}1&-1&1\\0&1&5\end{pmatrix}.
> $$

Torna a [[#Esercizio 3 — Nascondere il vincolo nelle basi (una retta mandata in una retta)|esercizio 3]].

### Riscontro 4

> [!tip]- Riscontro 4
> La matrice è $4\times5$. Nelle prime tre colonne devono essere nulle le righe $2,3,4$; le ultime due colonne sono arbitrarie. Il blocco inferiore sinistro è quindi $3\times3$ e impone nove coordinate nulle. La dimensione è
> $$
> 20-9=11=3\cdot1+(5-3)\cdot4.
> $$
> Una base è formata da $f_{11},f_{12},f_{13}$ e dalle otto $f_{i4},f_{i5}$, $1\le i\le4$. Ciascuna assegna una sola immagine di base non nulla. Ogni scelta dei coefficienti consentiti prescrive immagini arbitrarie per i vettori del completamento e immagini in $Z$ per i primi tre: il teorema di costruzione su una base dà una funzione e non impone altre relazioni.
>
> Con basi arbitrarie il vincolo potrebbe diventare equazioni fra più coefficienti; il blocco di zeri non deve trovarsi nelle stesse posizioni. Rimane invariata la dimensione dello spazio descritto.

Torna a [[#Esercizio 4 — Contare e costruire (dimensione dello spazio vincolato)|esercizio 4]].

### Riscontro 5

> [!tip]- Riscontro 5
> La decomposizione è
> $$
> (x_1,x_2,x_3,x_4)
> =x_1u_1+(x_2-x_1)u_2+(x_3-x_2+x_1)e_3+x_4e_4.
> $$
> È valida e unica per ogni vettore, quindi $B$ è una base. Annullando $u_1,u_2$ otteniamo tutte e sole le funzioni
> $$
> F(x_1,x_2,x_3,x_4)=(x_3-x_2+x_1)a+x_4b,
> \qquad a,b\in\mathbb R^3.
> $$
> I sei coefficienti dei due vettori sono indipendenti: la dimensione è $6$. Una base è data dalle sei applicazioni $(x_3-x_2+x_1)e_i$ e $x_4e_i$, con $1\le i\le3$.
>
> Nessuna è iniettiva, perché il nucleo contiene il sottospazio non nullo $U$. Il nucleo è esattamente $U$ se e solo se $a,b$ sono indipendenti: in tal caso $ra+sb=0$ forza $r=s=0$, mentre una relazione non banale fra $a,b$ produce un vettore non nullo lungo il completamento annullato da $F$.

Torna a [[#Esercizio 5 — Annullare due direzioni (inclusione nel nucleo)|esercizio 5]].

### Riscontro 6

> [!tip]- Riscontro 6
> Per $q=a_0+a_1t+a_2t^2+a_3t^3$, le due condizioni sono $a_0=a_1=0$. Quindi $Z=\operatorname{span}(t^2,t^3)$ e $\dim Z=2$. Tutte le applicazioni ammesse sono determinate da
> $$
> F(t^j)=a_jt^2+b_jt^3,\qquad j=0,1,2.
> $$
> Ci sono sei coefficienti indipendenti e la dimensione è $2\cdot3=6$. Se $c_j(p)$ indica il coefficiente di $t^j$, una base è costituita dalle sei funzioni $p\mapsto c_j(p)t^2$ e $p\mapsto c_j(p)t^3$, $j=0,1,2$. Valutare una relazione sui tre monomi dimostra l'indipendenza; sviluppare le loro immagini dimostra la generazione.
>
> L'applicazione proposta è lineare e ha risultati in $Z$. In più $F(1-t)=t^2$ e $F(t)=t^3$: raggiunge una base di $Z$, quindi $\operatorname{Im}F=Z$. Questi due ingressi verificano concretamente l'indipendenza delle due libertà di valutazione necessarie.

Torna a [[#Esercizio 6 — Far arrivare tutti i risultati in uno spazio piccolo (vincolo sull'immagine)|esercizio 6]].

### Riscontro 7

> [!tip]- Riscontro 7
> Una base di $Z$ è $z_1=(1,-1,0)$, $z_2=(1,0,-1)$: risolvendo la prima coordinata mediante le altre si ottiene la generazione, e le ultime due componenti provano l'indipendenza. Usa $B=((1,1,1),e_2,e_3)$ nel dominio. Le coordinate di $(x,y,z)$ sono $(x,y-x,z-x)^T$.
>
> Tutte le applicazioni richieste sono
> $$
> F(x,y,z)=(y-x)a+(z-x)b,\qquad a,b\in Z.
> $$
> La dimensione è $2(3-1)=4$, con base le quattro funzioni $(y-x)z_1$, $(y-x)z_2$, $(z-x)z_1$, $(z-x)z_2$.
>
> Prendendo $a=z_1,b=z_2$ si ha
> $$
> F(x,y,z)=(y+z-2x,\ x-y,\ x-z).
> $$
> Le due immagini indipendenti danno $\operatorname{Im}F=Z$; l'annullamento impone $x=y=z$, quindi $\ker F=U$. La famiglia con questi due vincoli esatti non contiene l'applicazione nulla, il cui nucleo è $\mathbb R^3$ e la cui immagine è $\{0\}$: non è un sottospazio, anche se contiene l'esempio appena costruito.

Torna a [[#Esercizio 7 — Imporre i due vincoli insieme (nucleo e immagine)|esercizio 7]].

### Riscontro 8

> [!tip]- Riscontro 8
> Per $X=\begin{pmatrix}a&b\\c&d\end{pmatrix}$,
> $$
> X=aE_{11}+dE_{22}+\frac{b+c}{2}(E_{12}+E_{21})
> +\frac{b-c}{2}(E_{12}-E_{21}).
> $$
> Le coordinate sono uniche e i primi tre vettori formano una base di $U$: $B$ è adattata. Qui si lavora sui reali, quindi la divisione per $2$ è lecita.
>
> Con la stessa base nel dominio e nel codominio, le uniche posizioni vietate sono $(4,1),(4,2),(4,3)$. La dimensione è $16-3=13$ e una base è data dalle $f_{ij}$ relative a $B,B$, escluse $f_{41},f_{42},f_{43}$.
>
> La proiezione $P$ ha matrice $\operatorname{diag}(1,1,1,0)$ e preserva $U$. La funzione $G$ è invece $f_{41}$: manda $E_{11}\in U$ nella matrice antisimmetrica non nulla $E_{12}-E_{21}\notin U$, quindi non appartiene allo spazio.
>
> Il solo rango tre non basta. Definisci $H$ sui vettori di $B$ mediante $H(E_{11})=E_{12}-E_{21}$, $H(E_{22})=E_{11}$, $H(E_{12}+E_{21})=E_{22}$ e $H(E_{12}-E_{21})=0$. Le prime tre immagini sono indipendenti, quindi il rango è tre, ma la prima immagine viola il vincolo.

Torna a [[#Esercizio 8 — Conservare le matrici simmetriche (endomorfismi con un sottospazio stabile)|esercizio 8]].

### Riscontro 9

> [!tip]- Riscontro 9
> Soltanto $\mathcal A$ è un sottospazio fra le cinque famiglie assegnate. La sua matrice canonica ha prima colonna nulla e seconda arbitraria, quindi la dimensione è due. L'applicazione nulla vi appartiene e la condizione è stabile per combinazioni lineari.
>
> In $\mathcal B$ sta l'identità, che ha nucleo nullo contenuto in $U$. In $\mathcal C$ sta la matrice $\operatorname{diag}(0,1)$, che ha nucleo esattamente $U$. In $\mathcal D$ sta $\operatorname{diag}(1,0)$, la cui immagine è $Z$; quest'ultima appartiene anche a $\mathcal E$, avendo rango uno. Nessuna delle quattro famiglie contiene l'applicazione nulla: il suo nucleo è tutto $V$, la sua immagine è nulla e il suo rango è zero.
>
> Se $U=V$, il vincolo di $\mathcal B$ è automatico e si ottiene tutta $\mathcal L(V,W)$. Se $Z=\{0\}$, il vincolo di immagine esatta individua soltanto l'applicazione nulla. Anche rango esattamente zero dà il sottospazio $\{0_{\mathcal L}\}$. È importante separare questi casi dalle affermazioni per sottospazi propri o non nulli.

Torna a [[#Esercizio 9 — Le frecce non sono intercambiabili (inclusioni e uguaglianze)|esercizio 9]].

### Riscontro 10

> [!tip]- Riscontro 10
> $U=\operatorname{span}(t,t^2,t^3)$ ha dimensione tre, mentre $Z$ ha dimensione uno. Le immagini dei tre monomi di $U$ devono essere multipli di $1+t$; l'immagine di $1$ è arbitraria:
> $$
> F(1)=a+bt+ct^2,\quad F(t)=\alpha(1+t),\quad
> F(t^2)=\beta(1+t),\quad F(t^3)=\gamma(1+t).
> $$
> Sono sei coefficienti indipendenti: $12-3(3-1)=6$. Una base è data dalle tre applicazioni $p\mapsto c_0(p)t^r$, $r=0,1,2$, e dalle tre $p\mapsto c_j(p)(1+t)$, $j=1,2,3$. La prova si fa valutando su $1,t,t^2,t^3$.
>
> Le matrici canonica e adattata sono rispettivamente
> $$
> \begin{pmatrix}
> a&\alpha&\beta&\gamma\\
> b&\alpha&\beta&\gamma\\
> c&0&0&0
> \end{pmatrix},
> \qquad
> \begin{pmatrix}
> \alpha&\beta&\gamma&a\\
> 0&0&0&b-a\\
> 0&0&0&c
> \end{pmatrix}.
> $$
> Nella seconda il blocco inferiore sinistro è nullo; nella prima la stessa richiesta appare attraverso uguaglianze fra entrate.
>
> Per la funzione proposta, $F(1)=t^2$ e $F(t)=F(t^2)=F(t^3)=1+t$. La sua immagine è $\operatorname{span}(t^2,1+t)$, di dimensione due. Un risultato è nullo se e solo se $p(0)=0$ e $p(1)-p(0)=0$, perché $t^2$ e $1+t$ sono indipendenti. Quindi
> $$
> \ker F=\{p:p(0)=p(1)=0\}
> =\operatorname{span}(t(t-1),t^2(t-1)).
> $$
> La nullità è due, il rango due e la somma è quattro, la dimensione del dominio.

Torna a [[#Esercizio 10 — Vincoli sui polinomi senza confondere i coefficienti (basi non canoniche)|esercizio 10]].

### Riscontro 11

> [!tip]- Riscontro 11
> La ricostruzione è $F(u+t)=A(u)+B(t)+C(t)$. È ben definita per l'unicità della decomposizione di $V$ ed è lineare per la linearità delle tre funzioni. Per recuperarle da $F$, restringi a $U$ e separa nelle componenti in $Z,Y$ le immagini dei vettori di $T$. L'unicità della decomposizione nel codominio rende uniche anche le tre scelte. Contando le dimensioni dei tre spazi di applicazioni si ottiene
> $$
> k\ell+(n-k)\ell+(n-k)(m-\ell)=k\ell+(n-k)m.
> $$
>
> Nella parte concreta le prime due colonne devono essere $e_1,e_2$, perché $P$ deve fissare $U$. La terza può essere un vettore arbitrario di $U$:
> $$
> P_{a,b}=\begin{pmatrix}1&0&a\\0&1&b\\0&0&0\end{pmatrix}.
> $$
> Per ogni ingresso $P_{a,b}v\in U$ e su $U$ la funzione è l'identità; quindi $P_{a,b}(P_{a,b}v)=P_{a,b}v$, ossia $P_{a,b}^2=P_{a,b}$.
>
> La famiglia non contiene l'applicazione nulla, che non fissa $e_1$: non è un sottospazio. Le differenze sono invece tutte e sole le matrici
> $$
> \begin{pmatrix}0&0&r\\0&0&s\\0&0&0\end{pmatrix},
> \qquad r,s\in\mathbb R.
> $$
> Formano uno spazio di dimensione due: annullano $U$ e hanno immagine contenuta in $U$. Le condizioni omogenee descrivono le differenze; fissare l'identità su $U$ seleziona un traslato di questo spazio.

Torna a [[#Esercizio 11 — Separare le componenti e riconoscere una proiezione (decomposizioni e condizioni non omogenee)|esercizio 11]].

### Riscontro 12

> [!tip]- Riscontro 12
> Se $U=0$, chiediamo soltanto $F(0)\in Z$, automatico per linearità: la dimensione è $mn$. Se $U=V$, tutte le immagini devono stare in $Z$: dimensione $\ell n$. Se $Z=0$, dobbiamo annullare $U$: dimensione $m(n-k)$. Se $Z=W$, nessun risultato è vietato: dimensione $mn$.
>
> Se $V=0$, l'unico ingresso deve essere mandato in zero; se $W=0$, ogni ingresso ha come unico risultato possibile zero. In entrambi i casi lo spazio delle applicazioni è quello nullo, di dimensione zero, con un solo elemento.
>
> Su un campo di $q$ elementi, scegliere i $d$ coefficienti in una base dà una biezione con $K^d$; il numero delle applicazioni è $q^d$. Per $n=3,m=2,k=1,\ell=1$ si ha
> $$
> \dim\mathcal S=6-1(2-1)=5,
> $$
> quindi $2^5=32$ applicazioni su $\mathbb F_2$. Con i due vincoli simultanei la dimensione è $\ell(n-k)=1\cdot2=2$, quindi le applicazioni sono $2^2=4$. Se $d=0$ la conta è $q^0=1$: non ci sono coefficienti da scegliere, ma c'è comunque l'applicazione nulla.

Torna a [[#Esercizio 12 — Gli estremi della formula (casi nulli e campi finiti)|esercizio 12]].

Il capitolo è acquisito quando sai trasformare un vincolo sui sottospazi in una condizione sulle immagini di una base, giustificare la libertà dei coefficienti e costruire una base di applicazioni effettive. Prova a ricostruire la formula della dimensione in tre modi: contando i coefficienti consentiti, contando quelli vietati e separando le tre componenti fra supplementari. Controlla infine che l'applicazione nulla soddisfi esattamente le inclusioni che stai usando.

---

[[Books/Geometria-I/14 - Matrici associate e composizione|← 14 · Matrici associate e composizione]] · [[Books/Geometria-I/00 - Indice e piano di studio|Indice e piano di studio]] · [[Books/Geometria-I/91 - Glossario|Glossario →]]
