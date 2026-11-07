# Spazi vettoriali e operazioni lineari

Prerequisiti: [[Books/Geometria-I/01 - Il linguaggio della geometria e i campi|operazioni e campi]]. Per gli esempi sono utili i [[Books/Geometria-I/02 - Numeri complessi e geometria del piano|numeri complessi]] e i [[Books/Geometria-I/03 - Polinomi radici e fattorizzazioni|polinomi]]. Torna all'[[Books/Geometria-I/00 - Indice e piano di studio|indice e piano di studio]].

> [!info] In questo capitolo
> - Partirai dagli spostamenti del piano per capire quali operazioni rendono possibile un calcolo con i vettori.
> - Distinguerai il campo degli **scalari**, l'insieme dei **vettori** e le operazioni che li collegano.
> - Imparerai a ricavare dagli assiomi le regole sugli zeri, gli opposti e la cancellazione.
> - Riconoscerai la stessa struttura in colonne, polinomi, funzioni e matrici, senza pretendere che tutti i vettori siano frecce.
> - Capirai perché controllare la chiusura non basta quando si introducono operazioni nuove.

## Domande per iniziare dagli esercizi

Prova prima il problema indicato. Se ti fermi, cerca quale operazione o proprietà ti manca e apri la sezione collegata. Gli esercizi precedono la teoria; i riscontri sono raccolti in fondo. Una verifica di struttura richiede ragioni valide per elementi arbitrari, non soltanto un calcolo riuscito.

| Domanda guida | Esercizi da tentare | Teoria da recuperare |
|---|---|---|
| Per usare coordinate devo scegliere assi perpendicolari? | [[#Esercizio 1 — Muoversi lungo direzioni oblique (vettori geometrici)\|1]] | [[#Dagli spostamenti alle operazioni\|Dagli spostamenti alle operazioni]] |
| Che cosa devo specificare per parlare di spazio vettoriale? | [[#Esercizio 3 — Uno zero che si chiama due (operazioni e assiomi)\|3]], [[#Esercizio 4 — La chiusura non basta (un assioma che fallisce)\|4]] | [[#La definizione conserva le regole essenziali\|La definizione conserva le regole essenziali]] |
| Gli zeri e gli opposti sono convenzioni oppure risultati? | [[#Esercizio 5 — Ricostruire le regole (zeri e opposti)\|5]] | [[#Le prime regole si dimostrano\|Le prime regole si dimostrano]] |
| Posso cancellare un vettore o dividere per esso? | [[#Esercizio 6 — Quale fattore posso cancellare (annullamento e unicità)\|6]] | [[#Annullamento e cancellazione hanno ipotesi precise\|Annullamento e cancellazione hanno ipotesi precise]] |
| Perché le colonne numeriche verificano tutti gli assiomi? | [[#Esercizio 7 — Calcolare su un campo diverso (lo spazio F2 al quadrato)\|7]] | [[#Colonne di numeri e verifica degli assiomi\|Colonne di numeri e verifica degli assiomi]] |
| Come si calcola con un polinomio considerato come vettore? | [[#Esercizio 8 — Il grado può scendere (polinomi e chiusura)\|8]] | [[#I polinomi sono vettori di coefficienti finiti\|I polinomi sono vettori di coefficienti finiti]] |
| La somma di funzioni è una funzione o un numero? | [[#Esercizio 9 — Sommare risposte punto per punto (spazi di funzioni)\|9]], [[#Esercizio 10 — Una funzione senza ingressi (il caso vuoto)\|10]] | [[#Le funzioni si sommano nei valori\|Le funzioni si sommano nei valori]] |
| Serve il prodotto fra matrici per avere uno spazio vettoriale? | [[#Esercizio 11 — Una tabella di vettori (matrici rettangolari)\|11]] | [[#Le matrici sono un altro modo di organizzare i coefficienti\|Le matrici sono un altro modo di organizzare i coefficienti]] |
| Che cosa cambia scegliendo scalari reali o complessi? | [[#Esercizio 12 — Stessi elementi, coefficienti diversi (il campo degli scalari)\|12]] | [[#Il campo è parte della struttura\|Il campo è parte della struttura]] |
| Quando posso ereditare una struttura e quando devo verificarla? | [[#Esercizio 2 — Una coppia non è una terna (identificazioni e inclusioni)\|2]], [[#Esercizio 13 — Costruire uno spazio di coppie (verifica di una nuova struttura)\|13]] | [[#Riconoscere una struttura richiede la domanda giusta\|Riconoscere una struttura richiede la domanda giusta]] |

## Esercizi per verificare la comprensione

Gli esercizi 1–4 controllano il significato delle operazioni; 5–7 le conseguenze degli assiomi; 8–12 i diversi tipi di vettore. Il 13 chiede una verifica completa in un esempio nuovo. Negli esercizi di dimostrazione indica quale assioma usi, soprattutto quando i simboli somigliano a operazioni già familiari.

### Esercizio 1 — Muoversi lungo direzioni oblique (vettori geometrici)

Nel piano scegli i vettori di riferimento $u=(2,0)$ e $v=(1,1)$. Scrivi $P=(7,3)$ e $Q=(1,-1)$ nella forma $au+bv$. Trova i coefficienti di $P+Q$ e di $-2P$ usando prima quelli già ottenuti, poi controlla con le coordinate cartesiane. I due vettori di riferimento sono ortogonali? Questa proprietà è necessaria ai tuoi calcoli?

Se ti blocchi: [[#Dagli spostamenti alle operazioni|Dagli spostamenti alle operazioni]].

Controllo dopo il tentativo: [[#Riscontro 1|riscontro 1]].

### Esercizio 2 — Una coppia non è una terna (identificazioni e inclusioni)

Spiega perché l'insieme delle coppie reali non è letteralmente un sottoinsieme dell'insieme delle terne reali. Considera

$$
j:\mathbb R^2\to\mathbb R^3,\qquad j(x,y)=(x,y,0).
$$

Verifica che $j$ è iniettiva e conserva somma e prodotto per scalare; descrivine l'immagine. La funzione $k(x,y)=(x,y,1)$ conserva anch'essa queste operazioni? Quale controllo immediato la distingue da $j$?

Se ti blocchi: [[#Riconoscere una struttura richiede la domanda giusta|Riconoscere una struttura richiede la domanda giusta]].

Controllo dopo il tentativo: [[#Riscontro 2|riscontro 2]].

### Esercizio 3 — Uno zero che si chiama due (operazioni e assiomi)

Sull'insieme $\mathbb R$ definisci operazioni nuove

$$
x\oplus y=x+y-2,\qquad
\alpha\odot x=2+\alpha(x-2),
$$

dove gli scalari sono reali e le operazioni a destra sono quelle usuali. Trova il vettore nullo e l'opposto di $x$. Verifica tutti gli assiomi di spazio vettoriale, eventualmente usando la funzione $T(x)=x-2$ e spiegando perché il controllo tramite $T$ sia sufficiente. Calcola $0\odot5$ e $3\odot2$.

Se ti blocchi: [[#La definizione conserva le regole essenziali|La definizione conserva le regole essenziali]] · [[#Le prime regole si dimostrano|Le prime regole si dimostrano]].

Controllo dopo il tentativo: [[#Riscontro 3|riscontro 3]].

### Esercizio 4 — La chiusura non basta (un assioma che fallisce)

Su $\mathbb R^2$ mantieni la somma usuale e proponi il prodotto per scalare

$$
\alpha\odot(x,y)=(\alpha x,y).
$$

Le operazioni sono chiuse? Vale $1\odot(x,y)=(x,y)$? Trova un assioma che fallisce e un controesempio con numeri espliciti. Perché i due controlli precedenti non bastano a mostrare che si tratta di uno spazio vettoriale?

Se ti blocchi: [[#La definizione conserva le regole essenziali|La definizione conserva le regole essenziali]] · [[#Riconoscere una struttura richiede la domanda giusta|Riconoscere una struttura richiede la domanda giusta]].

Controllo dopo il tentativo: [[#Riscontro 4|riscontro 4]].

### Esercizio 5 — Ricostruire le regole (zeri e opposti)

In uno spazio vettoriale su $K$, dimostra senza coordinate:

$$
0_Kv=0_V,\qquad \alpha0_V=0_V,\qquad (-1_K)v=-v.
$$

Indica la diversa distributività usata nelle prime due prove. Dimostra inoltre l'unicità del vettore nullo e dell'opposto. Quale operazione rende lecita la cancellazione additiva?

Se ti blocchi: [[#Le prime regole si dimostrano|Le prime regole si dimostrano]].

Controllo dopo il tentativo: [[#Riscontro 5|riscontro 5]].

### Esercizio 6 — Quale fattore posso cancellare (annullamento e unicità)

Dimostra che $\alpha v=0_V$ implica $\alpha=0_K$ oppure $v=0_V$. Deduci che, se $v\ne0_V$, da $\alpha v=\beta v$ segue $\alpha=\beta$. Deduci anche che, se $\alpha\ne0_K$, da $\alpha u=\alpha w$ segue $u=w$. Costruisci un controesempio a ciascuna cancellazione quando viene meno la rispettiva ipotesi. Perché nessuna prova richiede un «inverso del vettore»?

Se ti blocchi: [[#Annullamento e cancellazione hanno ipotesi precise|Annullamento e cancellazione hanno ipotesi precise]].

Controllo dopo il tentativo: [[#Riscontro 6|riscontro 6]].

### Esercizio 7 — Calcolare su un campo diverso (lo spazio F2 al quadrato)

In $\mathbb F_2^2$ elenca i vettori. Per $u=(1,0)$ e $v=(1,1)$ calcola $u+v$, $u+u$, $-v$ e $(1+1)v$. Uno studente sostiene che $v+v=0$ obbliga $v=0$: quale proprietà del campo ha dimenticato? Verifica la distributività $(a+b)v=av+bv$ per i quattro possibili valori della coppia $(a,b)$.

Se ti blocchi: [[#Colonne di numeri e verifica degli assiomi|Colonne di numeri e verifica degli assiomi]].

Controllo dopo il tentativo: [[#Riscontro 7|riscontro 7]].

### Esercizio 8 — Il grado può scendere (polinomi e chiusura)

In $\mathbb R[t]$ siano $p=2+3t-t^2$ e $q=-2+t+t^2$. Calcola $p+q$ e $-2p+q$. Spiega perché i polinomi di grado **al più** 2, insieme al polinomio nullo, formano uno spazio vettoriale con le operazioni usuali. Mostra invece due ragioni per cui i polinomi di grado **esattamente** 2 non lo formano. In quali passaggi usi l'uguaglianza formale dei coefficienti?

Se ti blocchi: [[#I polinomi sono vettori di coefficienti finiti|I polinomi sono vettori di coefficienti finiti]].

Controllo dopo il tentativo: [[#Riscontro 8|riscontro 8]].

### Esercizio 9 — Sommare risposte punto per punto (spazi di funzioni)

Per $X=\{a,b,c\}$ considera le funzioni reali descritte dai valori

$$
(f(a),f(b),f(c))=(1,-2,3),\qquad
(g(a),g(b),g(c))=(0,4,-1).
$$

Determina la funzione $2f-g$. Verifica in un punto arbitrario l'identità $\lambda(f+g)=\lambda f+\lambda g$. Un'uguaglianza $h(a)=0$ basta a concludere che $h$ sia la funzione nulla? Costruisci un controesempio e spiega quale quantificatore manca.

Se ti blocchi: [[#Le funzioni si sommano nei valori|Le funzioni si sommano nei valori]].

Controllo dopo il tentativo: [[#Riscontro 9|riscontro 9]].

### Esercizio 10 — Una funzione senza ingressi (il caso vuoto)

Quante funzioni $\varnothing\to K$ esistono? Descrivi il loro insieme con le operazioni punto per punto e verifica che è uno spazio vettoriale. Le funzioni costanti di valore $0_K$ e $1_K$ sono distinte su questo dominio? La risposta contraddice $0_K\ne1_K$ nel campo? Confronta il risultato con lo spazio $K^0$ delle tuple vuote.

Se ti blocchi: [[#Le funzioni si sommano nei valori|Le funzioni si sommano nei valori]] · [[#Colonne di numeri e verifica degli assiomi|Colonne di numeri e verifica degli assiomi]].

Controllo dopo il tentativo: [[#Riscontro 10|riscontro 10]].

### Esercizio 11 — Una tabella di vettori (matrici rettangolari)

Siano

$$
A=\begin{pmatrix}1&0&-1\\2&3&1\end{pmatrix},
\qquad
B=\begin{pmatrix}0&2&1\\-1&1&4\end{pmatrix}.
$$

Calcola $2A-B$ e indica l'entrata $a_{23}$. Come sono fatti il vettore nullo e l'opposto di $A$? Verifica la compatibilità $\alpha(\beta A)=(\alpha\beta)A$ confrontando l'entrata $(i,j)$. Perché non devi conoscere il prodotto fra due matrici? Perché non puoi sommare $A$ a una matrice $2\times2$ con la stessa regola?

Se ti blocchi: [[#Le matrici sono un altro modo di organizzare i coefficienti|Le matrici sono un altro modo di organizzare i coefficienti]].

Controllo dopo il tentativo: [[#Riscontro 11|riscontro 11]].

### Esercizio 12 — Stessi elementi, coefficienti diversi (il campo degli scalari)

Scrivi $3-2i$ come combinazione di $1,i$ usando coefficienti reali, poi come multiplo di $1$ usando un coefficiente complesso. Mostra che nessun numero reale $a$ soddisfa $a\cdot1=i$. Spiega perché $\mathbb C$ è uno spazio vettoriale sia su $\mathbb R$ sia su $\mathbb C$, mentre $\mathbb R$ con il prodotto complesso usuale non è uno spazio vettoriale su $\mathbb C$. Nella seconda verifica indica dove fallisce già la definizione dell'operazione.

Se ti blocchi: [[#Il campo è parte della struttura|Il campo è parte della struttura]].

Controllo dopo il tentativo: [[#Riscontro 12|riscontro 12]].

### Esercizio 13 — Costruire uno spazio di coppie (verifica di una nuova struttura)

Siano $V$ e $W$ spazi vettoriali sullo stesso campo $K$. Sul prodotto cartesiano $V\times W$ poni

$$
(v,w)+(v',w')=(v+v',w+w'),\qquad
\lambda(v,w)=(\lambda v,\lambda w).
$$

Verifica tutti gli assiomi. Specifica il vettore nullo e l'opposto; nella compatibilità del prodotto per scalare e in una distributività indica le proprietà usate in ciascuna componente. La sola appartenenza dei risultati a $V\times W$ sarebbe sufficiente? Che cosa succede se $W$ è lo spazio nullo?

Se ti blocchi: [[#Colonne di numeri e verifica degli assiomi|Colonne di numeri e verifica degli assiomi]] · [[#Riconoscere una struttura richiede la domanda giusta|Riconoscere una struttura richiede la domanda giusta]].

Controllo dopo il tentativo: [[#Riscontro 13|riscontro 13]].

## Teoria da recuperare

Usa la tabella iniziale per leggere lo strumento che ti serve. Dopo un esempio svolto, prova a ripetere i passaggi cambiando i numeri e spiegando quali proprietà rimangono valide.

## Dagli spostamenti alle operazioni

Un oggetto viene spostato prima di due metri verso est e uno verso nord, poi di un metro verso est e due verso nord. Lo spostamento complessivo è di tre metri in ciascuna direzione. Per trovarlo sommiamo le componenti; non ci interessa in quale punto della stanza sia cominciato il movimento.

Questo è il primo significato di **vettore geometrico**: uno spostamento. Un segmento orientato da $P$ a $Q$ lo rappresenta, ma traslando insieme i due estremi otteniamo un altro segmento che rappresenta lo stesso vettore. Per un vettore non nullo contano direzione, verso e lunghezza; il punto di applicazione non fa parte del dato. Il vettore nullo rappresenta lo spostamento che lascia ogni punto fermo.

Per sommare $u$ e $v$, facciamo partire $v$ dalla punta di $u$: lo spostamento dal punto iniziale alla punta finale è $u+v$. Se entrambi sono disegnati con la stessa origine, è la diagonale del parallelogramma costruito sui due lati. Scambiare i lati non cambia quella diagonale: è l'intuizione della commutatività.

Moltiplicare $u$ per un reale $\lambda$ ne cambia la lunghezza di un fattore $|\lambda|$; per $\lambda<0$ inverte il verso e per $\lambda=0$ produce il vettore nullo. Questa interpretazione riguarda gli scalari reali. Su un campo diverso non useremo automaticamente espressioni come «positivo» o «lunghezza»: conserveremo le regole algebriche.

### Un riferimento può essere obliquo

Per descrivere gli spostamenti del piano scegliamo due vettori non paralleli $u,v$. La costruzione del parallelogramma permette di esprimere ogni spostamento come

$$
w=au+bv,\qquad a,b\in\mathbb R.
$$

I coefficienti sono unici: le rette parallele a $u$ e a $v$ che realizzano la scomposizione si incontrano in un unico modo. Più avanti dimostreremo questa proprietà nel linguaggio delle basi. Qui serve a distinguere due cose: lo spostamento $w$ e i numeri usati per descriverlo.

I vettori di riferimento non devono essere ortogonali e non devono avere lunghezza uno. Per esempio, rispetto agli assi cartesiani usuali scegliamo

$$
u=\begin{pmatrix}2\\1\end{pmatrix},
\qquad
v=\begin{pmatrix}1\\2\end{pmatrix}.
$$

**Esempio svolto.** Per descrivere $w=(5,4)$ cerchiamo $a,b$ con $au+bv=w$. Le componenti danno

$$
2a+b=5,\qquad a+2b=4.
$$

Dalla prima $b=5-2a$; nella seconda $a+10-4a=4$, quindi $a=2$ e $b=1$. Il controllo restituisce $2(2,1)+(1,2)=(5,4)$. Le coordinate cartesiane sono $(5,4)$; i coefficienti rispetto al nuovo riferimento sono $(2,1)$. È lo stesso spostamento.

Se $w=au+bv$ e $z=cu+dv$, le proprietà delle operazioni geometriche danno

$$
w+z=(a+c)u+(b+d)v,\qquad
\lambda w=(\lambda a)u+(\lambda b)v.
$$

Quindi anche in un riferimento obliquo la somma si descrive sommando i coefficienti e il prodotto per scalare moltiplicandoli tutti per lo stesso scalare. Queste regole non dipendono da un angolo retto. Nello spazio ordinario si scelgono analogamente tre vettori non complanari.

> [!warning] Attenzione — Punto e spostamento richiedono dati diversi
> Chiarimento redazionale: un punto del piano non è uno spostamento finché non scegliamo un'origine $O$ e lo rappresentiamo tramite $\overrightarrow{OP}$. Una volta fatta la scelta, le coordinate permettono di usare lo stesso calcolo. La struttura vettoriale descrive anzitutto le operazioni sugli spostamenti, non una somma intrinseca fra punti senza riferimento.

Ora vogliamo riconoscere lo stesso calcolo anche quando gli oggetti non hanno un disegno. Per questo passiamo dalla figura alle proprietà.

## La definizione conserva le regole essenziali

Sia $K$ un campo, con $0_K\ne1_K$. Uno **spazio vettoriale su $K$** è un insieme $V$ dotato di due operazioni:

$$
+:V\times V\longrightarrow V,\qquad
K\times V\longrightarrow V,\quad(\lambda,v)\longmapsto\lambda v.
$$

La prima è la somma dei vettori; la seconda è il **prodotto per scalare**, chiamato anche prodotto esterno nel corso. Gli elementi di $K$ sono gli scalari e gli elementi di $V$ sono i vettori.

Le firme delle operazioni includono già la **chiusura**: una somma di vettori deve essere ancora un vettore di $V$, e $\lambda v$ deve essere definito e appartenere a $V$ per ogni $\lambda\in K$ e $v\in V$. Inoltre valgono gli assiomi seguenti.

### Le proprietà della somma

Per ogni $u,v,w\in V$:

$$
(u+v)+w=u+(v+w),\qquad u+v=v+u.
$$

Esiste un vettore $0_V\in V$ tale che

$$
v+0_V=0_V+v=v\qquad\text{per ogni }v\in V.
$$

Per ogni $v\in V$ esiste un suo opposto, indicato con $-v$, tale che

$$
v+(-v)=(-v)+v=0_V.
$$

In altre parole, $(V,+)$ è un gruppo abeliano. L'esistenza del neutro implica in particolare che **uno spazio vettoriale non è mai vuoto**.

### Le proprietà del prodotto per scalare

Per ogni $\alpha,\beta\in K$ e $u,v\in V$:

$$
\alpha(u+v)=\alpha u+\alpha v,
$$

$$
(\alpha+\beta)v=\alpha v+\beta v,
$$

$$
\alpha(\beta v)=(\alpha\beta)v,\qquad 1_Kv=v.
$$

Le prime due sono distributività diverse. Nella prima si sommano vettori, nella seconda si sommano scalari. La terza confronta due prodotti per scalare con il prodotto $\alpha\beta$ **nel campo**.

> [!abstract] Concetto chiave — Una struttura è fatta di oggetti e operazioni
> Dire «$V$ è uno spazio vettoriale» significa aver scelto un campo $K$, una somma su $V$ e un prodotto $K\times V\to V$ che soddisfano tutti gli assiomi. Il nome o l'aspetto degli elementi non determina da solo la struttura.

Non è richiesto un prodotto fra due vettori, né una lunghezza, né un angolo. Potremo definire ulteriori operazioni in certi esempi, ma non servono per questi assiomi. In particolare $\alpha v$ non è il prodotto di due oggetti dello stesso tipo e non scriviamo $v\alpha$ senza averne precisato il significato.

**Esempio svolto: una legge che sembra ragionevole ma fallisce.** Sull'insieme $\mathbb R$ proponiamo $x\oplus y=x+y+1$ e manteniamo il prodotto scalare usuale $\lambda x$. La somma nuova è chiusa, associativa e commutativa, ma il suo neutro è $-1$. La distributività rispetto alla somma degli scalari fallisce: con $\alpha=\beta=1$ e $x=0$,

$$
(\alpha+\beta)x=0,\qquad
(\alpha x)\oplus(\beta x)=0\oplus0=1.
$$

Non basta che ogni risultato sia un numero reale. Le diverse operazioni devono essere compatibili fra loro.

## Le prime regole si dimostrano

Gli assiomi contengono poche regole; molte formule familiari ne sono conseguenze. Le dimostriamo senza coordinate, così varranno per tutti gli esempi del capitolo.

### Unicità e cancellazione additiva

Se $e,e'$ sono entrambi neutri della somma,

$$
e=e+e'=e'.
$$

La prima uguaglianza usa la neutralità di $e'$, la seconda quella di $e$. Perciò il simbolo $0_V$ indica un elemento determinato.

Se $a$ e $b$ sono entrambi opposti di $v$, allora

$$
a=a+0_V=a+(v+b)=(a+v)+b=0_V+b=b.
$$

Quindi anche l'opposto è unico. Se $u+z=w+z$, sommiamo $-z$ a entrambi i membri e usiamo associatività:

$$
(u+z)+(-z)=(w+z)+(-z)\quad\Longrightarrow\quad u=w.
$$

Questa è la **cancellazione additiva**. Serve a giustificare la sottrazione; non è un gesto di cancellazione grafica.

### Lo scalare zero annulla ogni vettore

Poniamo $a=0_Kv$. Per la distributività rispetto alla somma degli scalari,

$$
a=0_Kv=(0_K+0_K)v=0_Kv+0_Kv=a+a.
$$

Scrivendo il primo membro come $a+0_V$ e cancellando $a$, otteniamo $0_V=a$. Dunque

$$
\boxed{0_Kv=0_V.}
$$

I due zeri hanno ruoli diversi: $0_K$ appartiene al campo e $0_V$ allo spazio. Non stiamo moltiplicando due zeri dello stesso insieme.

### Ogni scalare annulla il vettore zero

Poniamo ora $b=\alpha0_V$. Usiamo la distributività rispetto alla somma dei vettori:

$$
b=\alpha(0_V+0_V)=\alpha0_V+\alpha0_V=b+b.
$$

La stessa cancellazione dà

$$
\boxed{\alpha0_V=0_V.}
$$

Il risultato assomiglia al precedente, ma la dimostrazione usa l'altra distributività. Tenere separati i due ingressi evita di assumere proprio ciò che vorremmo dimostrare.

### Moltiplicare per meno uno produce l'opposto

Per l'azione dell'unità e la distributività,

$$
v+(-1_K)v=1_Kv+(-1_K)v
=(1_K+(-1_K))v=0_Kv=0_V.
$$

Abbiamo mostrato che $(-1_K)v$ è un opposto di $v$; per unicità,

$$
\boxed{(-1_K)v=-v.}
$$

Ne seguono anche

$$
(-\alpha)v=-(\alpha v)=\alpha(-v).
$$

Per la prima uguaglianza basta sommare $\alpha v+(-\alpha)v=(\alpha-\alpha)v=0_V$; per la seconda si usa $\alpha(-v)=\alpha((-1_K)v)=(-\alpha)v$. Da qui la compatibilità con le differenze:

$$
\alpha(u-v)=\alpha u-\alpha v.
$$

> [!example] Esempi e controesempi — Il vettore zero cambia aspetto
> In $\mathbb R^2$ è la colonna con due zeri; in uno spazio di matrici è una matrice nulla; in uno spazio di funzioni è la funzione che vale zero in ogni punto. La formula $0_Kv=0_V$ rimane la stessa. «Zero» indica un ruolo rispetto alle operazioni, non un unico oggetto letteralmente comune a tutti gli spazi.

Lo spazio formato dal solo vettore nullo, $V=\{0_V\}$, verifica tutti gli assiomi ponendo $0_V+0_V=0_V$ e $\lambda0_V=0_V$. È lo **spazio nullo**. Non va confuso con l'insieme vuoto: qui un elemento c'è.

## Annullamento e cancellazione hanno ipotesi precise

Supponiamo che $\alpha v=0_V$. Se $\alpha=0_K$, non abbiamo informazioni su $v$. Se invece $\alpha\ne0_K$, nel campo esiste $\alpha^{-1}$; applicando il prodotto per questo scalare otteniamo

$$
v=1_Kv=(\alpha^{-1}\alpha)v
=\alpha^{-1}(\alpha v)=\alpha^{-1}0_V=0_V.
$$

Quindi

$$
\boxed{\alpha v=0_V\quad\Longleftrightarrow\quad
\alpha=0_K\ \text{oppure}\ v=0_V.}
$$

Il verso opposto usa le due formule già dimostrate sugli zeri. Il risultato viene dal fatto che uno scalare non nullo è invertibile; non richiede, e non definisce, un inverso di $v$.

Se $\alpha v=\beta v$ e $v\ne0_V$, portiamo tutto a sinistra:

$$
(\alpha-\beta)v=0_V.
$$

L'annullamento obbliga $\alpha-\beta=0_K$, quindi $\alpha=\beta$. Se invece $v=0_V$, ogni scalare dà lo stesso vettore e la conclusione è falsa in generale.

Analogamente, se $\alpha u=\alpha w$ e $\alpha\ne0_K$, moltiplicando per $\alpha^{-1}$ otteniamo $u=w$. In quest'ultimo caso cancelliamo uno scalare comune; nel precedente deduciamo l'uguaglianza degli scalari usando un vettore non nullo. Sono argomenti differenti.

> [!warning] Attenzione — Non si divide per un vettore
> Chiarimento redazionale: da $\alpha v=0_V$ non possiamo scrivere «divido per $v$». Gli assiomi prevedono soltanto inversi degli scalari non nulli nel campo. Per dimostrare una cancellazione, indica quale scalare inverti o usa l'annullamento appena provato.

**Esempio svolto.** Se $v\ne0_V$ e $3v=5v$ in uno spazio reale, otteniamo $(-2)v=0_V$, impossibile. In uno spazio su $\mathbb F_2$, invece, i simboli $3$ e $5$ rappresentano entrambi $1_K$, quindi l'uguaglianza è vera per ogni $v$. È la differenza $3-5$ nel campo scelto a decidere se possiamo applicare l'argomento.

## Colonne di numeri e verifica degli assiomi

Il modello numerico fondamentale è

$$
K^n=\left\{
\begin{pmatrix}x_1\\ \vdots\\x_n\end{pmatrix}:x_1,\ldots,x_n\in K
\right\}.
$$

Per $x=(x_i)$ e $y=(y_i)$ definiamo le operazioni componente per componente:

$$
(x+y)_i=x_i+y_i,\qquad(\alpha x)_i=\alpha x_i.
$$

Le operazioni a sinistra sono quelle nuove sui vettori; quelle a destra sono quelle del campo. Poiché il campo è chiuso per somma e prodotto, i risultati appartengono ancora a $K^n$. Ora dobbiamo verificare gli assiomi, non fermarci alla chiusura.

*Passo 1 — Le proprietà additive.* Per ogni indice $i$,

$$
((x+y)+z)_i=(x_i+y_i)+z_i
=x_i+(y_i+z_i)=(x+(y+z))_i.
$$

L'associatività nel campo dà l'uguaglianza di tutte le componenti e quindi dei vettori. La commutatività segue da $(x+y)_i=x_i+y_i=y_i+x_i=(y+x)_i$. Il vettore nullo ha tutte le entrate uguali a $0_K$, perché $x_i+0_K=x_i$; l'opposto di $x$ ha entrate $-x_i$, perché $x_i+(-x_i)=0_K$.

*Passo 2 — Le due distributività.* Confrontiamo ancora le componenti:

$$
\begin{aligned}
(\alpha(x+y))_i
&=\alpha(x_i+y_i)
=\alpha x_i+\alpha y_i
=(\alpha x+\alpha y)_i,\\
((\alpha+\beta)x)_i
&=(\alpha+\beta)x_i
=\alpha x_i+\beta x_i
=(\alpha x+\beta x)_i.
\end{aligned}
$$

Ogni passaggio centrale usa una distributività nel campo.

*Passo 3 — Compatibilità e unità.* Per associatività del prodotto e neutralità di $1_K$,

$$
(\alpha(\beta x))_i=\alpha(\beta x_i)
=(\alpha\beta)x_i=((\alpha\beta)x)_i,
\qquad (1_Kx)_i=x_i.
$$

Tutti gli assiomi sono verificati. La strategia è sempre: **scrivere la componente tramite la definizione, usare una proprietà del campo, ricomporre il vettore**.

**Esempio svolto.** In $\mathbb Q^3$,

$$
\begin{pmatrix}1/2\\-1\\2\end{pmatrix}
+2\begin{pmatrix}1\\1/2\\-3\end{pmatrix}
=\begin{pmatrix}5/2\\0\\-4\end{pmatrix}.
$$

I vettori sono colonne, il coefficiente $2$ è uno scalare razionale e il risultato è ancora una colonna razionale.

La dimostrazione non usa ordinamento, distanze o numeri reali: funziona anche su $\mathbb F_2$. In $\mathbb F_2^2$, per esempio,

$$
\begin{pmatrix}1\\0\end{pmatrix}
+\begin{pmatrix}1\\1\end{pmatrix}
=\begin{pmatrix}0\\1\end{pmatrix}.
$$

Con la convenzione $n=0$, esiste una sola tupla vuota. Il suo insieme $K^0$ è uno spazio nullo, con le uniche operazioni possibili. Per $n=1$, invece, $K^1$ si identifica naturalmente con il campo $K$ considerato come spazio su sé stesso.

## I polinomi sono vettori di coefficienti finiti

Un polinomio $p\in K[t]$ è una somma formale finita

$$
p(t)=a_0+a_1t+\cdots+a_dt^d.
$$

Per sommare polinomi allineiamo i coefficienti delle stesse potenze; quelli mancanti valgono zero. Per moltiplicare per uno scalare moltiplichiamo ogni coefficiente:

$$
\left(\sum_{j\ge0}a_jt^j\right)
+\left(\sum_{j\ge0}b_jt^j\right)
=\sum_{j\ge0}(a_j+b_j)t^j,
\qquad
\lambda\left(\sum_{j\ge0}a_jt^j\right)
=\sum_{j\ge0}(\lambda a_j)t^j.
$$

Le somme qui hanno soltanto un numero finito di termini non nulli. Se i coefficienti di $p$ si annullano oltre $d$ e quelli di $q$ oltre $e$, anche i coefficienti di $p+q$ si annullano oltre $\max(d,e)$. Il prodotto per scalare non introduce nuove potenze. Quindi le operazioni sono chiuse in $K[t]$.

Gli assiomi si verificano coefficiente per coefficiente con gli stessi passaggi di $K^n$. Per esempio, il coefficiente di $t^j$ in $\lambda(p+q)$ è $\lambda(a_j+b_j)=\lambda a_j+\lambda b_j$, uguale a quello in $\lambda p+\lambda q$. Associatività, commutatività, le altre compatibilità e l'unità discendono allo stesso modo dalle identità nel campo. Il neutro è il polinomio con tutti i coefficienti nulli; l'opposto di $p$ ha coefficienti $-a_j$.

L'uguaglianza usata qui è l'**uguaglianza formale** dei polinomi: i coefficienti delle stesse potenze coincidono. Non stiamo valutando il polinomio in qualche punto. La distinzione è importante sui campi finiti, come visto nel [[Books/Geometria-I/03 - Polinomi radici e fattorizzazioni|capitolo 03]].

**Esempio svolto.** Per $p=1+2t^2$ e $q=t-2t^2$ in $\mathbb R[t]$,

$$
p+q=1+t,\qquad 3p-q=3-t+8t^2.
$$

Sommare non significa conservare il grado maggiore: i termini principali possono cancellarsi.

### Un limite al grado deve includere il polinomio nullo

Per un intero $d\ge0$ poniamo

$$
K[t]_{\le d}
=\{0\}\cup\{p\in K[t]:p\ne0,\ \deg p\le d\}.
$$

Con le stesse operazioni è uno spazio vettoriale. La somma di due polinomi senza termini di grado maggiore di $d$ non ne introduce; neppure il prodotto per uno scalare ne introduce. Tutte le identità appena verificate rimangono valide; il polinomio nullo e gli opposti appartengono ancora all'insieme.

Abbiamo incluso esplicitamente zero perché il suo grado non è definito secondo la convenzione usuale. Si potrebbe adottare $\deg0=-\infty$, ma non ne abbiamo bisogno.

I polinomi di grado **esattamente** $d$ non danno uno spazio vettoriale: il polinomio nullo manca, e moltiplicando per lo scalare zero lo si ottiene comunque. Anche $p+(-p)=0$ mostra il problema con la somma.

> [!example] Esempi e controesempi — Un vincolo sul grado
> $K[t]_{\le2}$ contiene $1$, $t^2$ e $0$ e consente somma e prodotto per scalare. L'insieme dei polinomi quadratici contiene $t^2$ e $-t^2$, ma non la loro somma. Il vincolo «grado al più» lascia posto alle cancellazioni; «grado esattamente» le esclude.

Nei capitoli successivi useremo i monomi per descrivere ogni polinomio tramite coefficienti. Qui è sufficiente riconoscere le operazioni e verificarne le regole.

## Le funzioni si sommano nei valori

Un sensore può fornire un valore a ogni istante; una tabella può assegnare una misura a ogni città. Per sommare due misure dello stesso tipo, sommiamo le risposte nello **stesso** istante o per la **stessa** città.

Sia $X$ un insieme qualsiasi. Indichiamo con $K^X$ l'insieme di tutte le funzioni $X\to K$. Per $f,g\in K^X$ e $\lambda\in K$ definiamo

$$
(f+g)(x)=f(x)+g(x),\qquad
(\lambda f)(x)=\lambda f(x)\quad\text{per ogni }x\in X.
$$

Sono operazioni **punto per punto**. La somma $f+g$ è una funzione; il suo valore $(f+g)(x)$ è un elemento di $K$. I due simboli $+$ nella prima formula hanno quindi ingressi diversi.

Il vettore nullo è la funzione $0_{K^X}$ definita da $0_{K^X}(x)=0_K$ per ogni $x$. L'opposto di $f$ è la funzione $(-f)(x)=-f(x)$. In particolare, dire $f=0_{K^X}$ significa

$$
f(x)=0_K\qquad\text{per ogni }x\in X,
$$

non soltanto in un punto.

### La verifica punto per punto

Per provare un'uguaglianza fra funzioni con lo stesso dominio e codominio, prendiamo un $x$ arbitrario e confrontiamo i valori. Per esempio,

$$
\begin{aligned}
((f+g)+h)(x)
&=(f(x)+g(x))+h(x)\\
&=f(x)+(g(x)+h(x))
=(f+(g+h))(x).
\end{aligned}
$$

La seconda uguaglianza è l'associatività nel campo. Vale per ogni $x$, quindi $(f+g)+h=f+(g+h)$. La commutatività viene da $f(x)+g(x)=g(x)+f(x)$; il neutro e l'opposto dalle identità con $0_K$ e $-f(x)$.

Le proprietà del prodotto per scalare si verificano allo stesso modo:

$$
\begin{aligned}
(\lambda(f+g))(x)
&=\lambda(f(x)+g(x))
=\lambda f(x)+\lambda g(x),\\
((\lambda+\mu)f)(x)
&=(\lambda+\mu)f(x)
=\lambda f(x)+\mu f(x),\\
(\lambda(\mu f))(x)
&=\lambda(\mu f(x))
=(\lambda\mu)f(x),\\
(1_Kf)(x)&=f(x).
\end{aligned}
$$

A destra leggiamo rispettivamente i valori di $\lambda f+\lambda g$, $\lambda f+\mu f$, $(\lambda\mu)f$ e $f$. I valori appartengono a $K$, dunque le operazioni sono chiuse e tutti gli assiomi sono verificati.

**Esempio svolto.** Su $X=\mathbb R$, siano $f(x)=x^2$ e $g(x)=2x-1$. La funzione $f+g$ è $x\mapsto x^2+2x-1$; il suo valore in $3$ è $9+6-1=14$. La funzione $2f-g$ è $x\mapsto2x^2-2x+1$. Questa somma non è una composizione: $(f\circ g)(x)=(2x-1)^2$ è un'altra funzione.

Se $X$ è finito, con elementi ordinati $x_1,\ldots,x_m$, ogni funzione è determinata dalla colonna dei suoi valori

$$
\begin{pmatrix}f(x_1)\\ \vdots\\ f(x_m)\end{pmatrix}.
$$

Sommare e riscalare funzioni corrisponde esattamente a sommare e riscalare quelle colonne. Se $X$ è infinito, in $K^X$ ammettiamo anche funzioni non nulle in infiniti punti: per esempio la funzione costante 1 su $\mathbb N$. Non stiamo chiedendo supporto finito. Quella richiesta riguarda le combinazioni di una base infinita, non la definizione di tutte le funzioni.

### Il caso del dominio vuoto

Esiste una sola funzione $\varnothing\to K$: il suo grafico è vuoto. Non deve assegnare alcun valore perché non ha ingressi. Pertanto $K^\varnothing$ ha un elemento e, con le operazioni descritte, è uno spazio nullo.

La funzione «costante zero» e quella «costante uno» coincidono su questo dominio, perché non c'è alcun punto in cui differiscano. Non stiamo affermando $0_K=1_K$: sono i grafici delle due funzioni ad essere uguali. È un caso limite in cui l'uguaglianza punto per punto è vacuamente soddisfatta.

## Le matrici sono un altro modo di organizzare i coefficienti

Una matrice in $M_{m,n}(K)$ dispone elementi del campo in $m$ righe e $n$ colonne:

$$
A=(a_{ij}),\qquad 1\le i\le m,\quad1\le j\le n.
$$

Il primo indice sceglie la riga, il secondo la colonna. Per esempio,

$$
A=\begin{pmatrix}2&-1&0\\3&4&5\end{pmatrix}
\quad\Longrightarrow\quad a_{12}=-1,\quad a_{23}=5.
$$

Somma e prodotto per scalare si definiscono sulle entrate:

$$
(A+B)_{ij}=a_{ij}+b_{ij},\qquad
(\lambda A)_{ij}=\lambda a_{ij}.
$$

Per sommare, le matrici devono avere la stessa forma. Una matrice $2\times3$ e una $2\times2$ non appartengono allo stesso insieme $M_{m,n}(K)$: la regola non sa a quale entrata associare una posizione mancante.

Gli assiomi si verificano confrontando l'entrata $(i,j)$. Possiamo anche riconoscere una matrice come una funzione dall'insieme degli indici

$$
I=\{1,\ldots,m\}\times\{1,\ldots,n\}
$$

a $K$: alla coppia $(i,j)$ associa $a_{ij}$. Le operazioni sono proprio quelle punto per punto già verificate per $K^I$. Questo giustifica **tutti** gli assiomi, non soltanto uno. Il vettore nullo è la matrice $0_{m,n}$ con entrate tutte nulle; l'opposto $-A$ ha entrate $-a_{ij}$.

**Esempio svolto.** In $M_{2,2}(\mathbb R)$,

$$
\begin{pmatrix}1&2\\0&-1\end{pmatrix}
+3\begin{pmatrix}0&1\\2&1\end{pmatrix}
=\begin{pmatrix}1&5\\6&2\end{pmatrix}.
$$

Qui il coefficiente 3 moltiplica ciascuna entrata. Non abbiamo usato alcun prodotto tra due matrici. Quell'operazione sarà introdotta nel [[Books/Geometria-I/09 - Matrici e sistemi lineari|capitolo 09]] e risponderà a un'altra domanda.

> [!abstract] Concetto chiave — La disposizione cambia, il controllo resta lo stesso
> In una colonna confrontiamo l'indice $i$; in un polinomio il coefficiente della potenza $t^j$; in una funzione il valore in $x$; in una matrice l'entrata $(i,j)$. Le identità nel campo producono identità fra gli oggetti perché l'uguaglianza si controlla su tutti quei dati.

## Il campo è parte della struttura

I numeri complessi formano un campo e quindi uno spazio vettoriale su sé stessi: la somma è quella complessa e il prodotto per scalare è il prodotto complesso. Gli assiomi necessari sono proprietà del campo già verificate.

Possiamo anche considerare $\mathbb C$ come spazio vettoriale su $\mathbb R$. Manteniamo la stessa somma, ma permettiamo soltanto coefficienti reali nel prodotto per scalare. Poiché i reali sono un sottocampo dei complessi, tutte le proprietà rimangono valide: le identità complesse valgono in particolare quando gli scalari sono reali.

Che cosa cambia concretamente? Con scalari complessi, ogni $z\in\mathbb C$ è il multiplo $z\cdot1$. Con scalari reali, un singolo vettore 1 produce solo numeri reali; per descrivere un complesso usiamo

$$
z=a\cdot1+b\cdot i,\qquad a,b\in\mathbb R.
$$

I coefficienti $a,b$ sono unici perché sono parte reale e parte immaginaria. Un solo coefficiente complesso oppure due coefficienti reali descrivono gli stessi elementi con regole di scelta differenti. Chiameremo **base** un riferimento che rende possibile e unica la descrizione; parleremo di **dimensione** soltanto dopo averne giustificato il significato nei capitoli 06 e 07.

> [!warning] Attenzione — Il campo non si cambia soltanto nel nome
> La [[Notes/Geometria 1/Lectures/2026-10-06 - (!) Sottospazi, combinazioni lineari e basi|lezione del 6 ottobre]] distingue $\mathbb C$ su $\mathbb R$ e su $\mathbb C$. Se invece proponi $\mathbb R$ come spazio su $\mathbb C$ usando il prodotto usuale, la legge $\mathbb C\times\mathbb R\to\mathbb R$ non è neppure definita con quel codominio: $i\cdot1=i\notin\mathbb R$. Occorre controllare gli ingressi e il risultato prima degli assiomi.

Più in generale, se $F$ è un sottocampo di $K$, uno spazio su $K$ può essere considerato anche su $F$ restringendo gli scalari. La direzione inversa richiede una nuova struttura e non è automatica. Il ruolo del campo nelle relazioni fra vettori verrà ripreso con l'indipendenza lineare.

## Riconoscere una struttura richiede la domanda giusta

Alla fine di un calcolo conviene fermarsi e chiedere che cosa è stato effettivamente verificato. Due situazioni hanno richieste diverse.

Se su un insieme definiamo operazioni nuove, dobbiamo mostrare che abbiano le firme dichiarate **e** che soddisfino tutti gli assiomi. Per $K^n$ lo abbiamo fatto usando le identità in ogni componente. Per le matrici abbiamo ricondotto la struttura a uno spazio di funzioni già verificato. In entrambi i casi abbiamo una ragione per ogni proprietà.

Se un insieme è invece contenuto in uno spazio vettoriale già noto e mantiene le sue operazioni, molte proprietà si possono ereditare. Questo è il punto di partenza dei **sottospazi**, che studieremo nel [[Books/Geometria-I/05 - Sottospazi e combinazioni lineari|capitolo 05]]. Il criterio più breve che troveremo lì usa proprio questa situazione: non può essere applicato a qualunque insieme con operazioni appena inventate.

> [!warning] Attenzione — Operazioni chiuse non significa assiomi verificati
> Nella [[_transcripts/Geometria 1/2026-11-01 - Indipendenza lineare e basi mediante Gauss|lezione del 1° novembre]] viene segnalato un errore commesso da molti studenti: su un nuovo prodotto cartesiano avevano definito somma e prodotto per scalare e controllato soltanto che i risultati rimanessero nell'insieme. Il docente distingue questa verifica dal criterio di sottospazio. Per una nuova struttura occorrono associatività, commutatività, neutro, opposti, distributività, compatibilità e unità, oppure una dimostrazione che le riconduca a proprietà già note.

### Identificare non significa includere letteralmente

Un'ulteriore cautela riguarda gli oggetti stessi. Una coppia $(x,y)$ non è una terna $(x,y,0)$. Non diciamo quindi che $\mathbb R^2$ sia letteralmente un sottoinsieme di $\mathbb R^3$ usando le definizioni usuali di coppia e terna.

Possiamo scegliere la funzione

$$
j:\mathbb R^2\to\mathbb R^3,\qquad
j\begin{pmatrix}x\\y\end{pmatrix}
=\begin{pmatrix}x\\y\\0\end{pmatrix}.
$$

Essa è iniettiva e conserva le operazioni: $j(u+v)=j(u)+j(v)$ e $j(\lambda u)=\lambda j(u)$, come si controlla nelle tre componenti. La sua immagine è il piano delle terne con terza componente zero. **Quel piano** è contenuto in $\mathbb R^3$; $\mathbb R^2$ lo descrive attraverso una corrispondenza scelta.

La distinzione è esplicitamente discussa nella [[_transcripts/Geometria 1/2026-10-06 - Sottospazi, combinazioni lineari e basi|lezione del 6 ottobre]]. Lo stesso vale per gli zeri: $(0,0)$ e $(0,0,0)$ hanno lo stesso ruolo nei rispettivi spazi, ma sono oggetti diversi.

Abbiamo così preparato due domande nuove. Quali sottoinsiemi mantengono le operazioni? E quali vettori bastano per costruire tutti gli altri? Il prossimo capitolo unirà queste domande nei concetti di sottospazio e combinazione lineare.

## Fonti

La motivazione geometrica mediante spostamenti, parallelogrammi e riferimenti non ortogonali, insieme alla distinzione fra operazioni e campo, riprende la [[Notes/Geometria 1/Lectures/2026-09-23 - Insiemi, applicazioni e spazi vettoriali|nota del 23 settembre]] e la relativa [[_transcripts/Geometria 1/2026-09-23 - Insiemi, applicazioni e spazi vettoriali|trascrizione]]. Assiomi, verifiche in $K^n$, proprietà degli zeri e degli opposti, polinomi e funzioni sono sviluppati nella [[Notes/Geometria 1/Lectures/2026-09-30 - Spazi vettoriali, esempi e sottospazi|nota del 30 settembre]] e nella corrispondente [[_transcripts/Geometria 1/2026-09-30 - Spazi vettoriali, esempi e sottospazi|trascrizione]].

Gli esempi sulle matrici e sul campo degli scalari e la cautela sull'identificazione fra $\mathbb R^2$ e un piano in $\mathbb R^3$ si riferiscono alla [[Notes/Geometria 1/Lectures/2026-10-06 - (!) Sottospazi, combinazioni lineari e basi|nota del 6 ottobre]] e alla sua [[_transcripts/Geometria 1/2026-10-06 - Sottospazi, combinazioni lineari e basi|trascrizione]]. L'avvertenza su nuova struttura e criterio di sottospazio riprende il richiamo iniziale della [[Notes/Geometria 1/Lectures/2026-11-01 - Indipendenza lineare e basi mediante Gauss|nota del 1° novembre]] e della relativa [[_transcripts/Geometria 1/2026-11-01 - Indipendenza lineare e basi mediante Gauss|trascrizione]].

Le prove sono riscritte per esplicitare i passaggi e le ipotesi; l'annullamento $\alpha v=0_V$ e le cancellazioni sono raccordi sviluppati dagli assiomi. Gli esempi numerici e i 13 esercizi, inclusa la struttura trasportata sull'insieme dei reali, sono redazionali. Il caso $X=\varnothing$ e il confronto fra $K^X$ e famiglie a supporto finito sono chiarimenti aggiunti. Non si attribuiscono ai docenti queste formulazioni o i riscontri. Per l'inventario complessivo: [[Books/Geometria-I/90 - Fonti e criteri editoriali|fonti e criteri editoriali]].

## Riscontri degli esercizi

Apri il riscontro dopo un tentativo scritto. Quando il problema riguarda una struttura, confronta soprattutto la completezza della verifica: aver trovato zero e opposti non sostituisce le distributività.

### Riscontro 1

> [!tip]- Riscontro 1
> Da $au+bv=(2a+b,b)$ ricaviamo prima $b$, poi $a$. Per $P$, $b=3$ e $2a+3=7$, quindi $P=2u+3v$. Per $Q$, $b=-1$ e $2a-1=1$, quindi $Q=u-v$. La somma è $3u+2v=(8,2)=P+Q$; il multiplo è $-4u-6v=(-14,-6)=-2P$. I vettori $u$ e $v$ non sono perpendicolari: uno è orizzontale, l'altro ha entrambe le componenti non nulle. La somma dei coefficienti e il prodotto per scalare funzionano perché valgono le proprietà delle operazioni vettoriali, senza richiedere ortogonalità.

Torna a [[#Esercizio 1 — Muoversi lungo direzioni oblique (vettori geometrici)|esercizio 1]].

### Riscontro 2

> [!tip]- Riscontro 2
> Una coppia ha due componenti, una terna tre: passare dall'una all'altra richiede una funzione. Se $j(x,y)=j(x',y')$, le prime due componenti danno $x=x'$ e $y=y'$, quindi $j$ è iniettiva. Per $u=(x,y)$ e $v=(s,t)$, $j(u+v)=(x+s,y+t,0)=j(u)+j(v)$; analogamente $j(\lambda u)=(\lambda x,\lambda y,0)=\lambda j(u)$. L'immagine è $\{(x,y,0):x,y\in\mathbb R\}$. Invece $k(0,0)=(0,0,1)$ non è il vettore nullo; già con $\lambda=0$, $k(0u)\ne0k(u)$. Anche la somma fallisce, perché $k(u)+k(v)$ ha terza componente 2, mentre $k(u+v)$ ha terza componente 1.

Torna a [[#Esercizio 2 — Una coppia non è una terna (identificazioni e inclusioni)|esercizio 2]].

### Riscontro 3

> [!tip]- Riscontro 3
> Il vettore nullo è il numero reale 2: $x\oplus2=x$. L'opposto di $x$ è $4-x$, poiché $x\oplus(4-x)=2$. Per controllare tutti gli assiomi osserva che $T(x)=x-2$ è biettiva e soddisfa $T(x\oplus y)=T(x)+T(y)$ e $T(\alpha\odot x)=\alpha T(x)$. Applicando $T$ ai due membri di un assioma si ottiene l'identità corrispondente nello spazio reale usuale. Per esempio $T((x\oplus y)\oplus z)=(T(x)+T(y))+T(z)=T(x)+(T(y)+T(z))=T(x\oplus(y\oplus z))$; l'iniettività di $T$ dà l'associatività. La commutatività segue scambiando $T(x),T(y)$; neutro e opposti sono quelli appena calcolati. Le due distributività diventano $\alpha(T(x)+T(y))=\alpha T(x)+\alpha T(y)$ e $(\alpha+\beta)T(x)=\alpha T(x)+\beta T(x)$. Compatibilità e unità diventano $\alpha(\beta T(x))=(\alpha\beta)T(x)$ e $1T(x)=T(x)$. Le operazioni sono chiuse perché le formule danno reali. Infine $0\odot5=2$ e $3\odot2=2$: entrambi i risultati sono il vettore nullo della nuova struttura, in accordo con le regole astratte.

Torna a [[#Esercizio 3 — Uno zero che si chiama due (operazioni e assiomi)|esercizio 3]].

### Riscontro 4

> [!tip]- Riscontro 4
> Le operazioni sono chiuse e $1\odot(x,y)=(x,y)$. Ma con $v=(0,1)$ e $\alpha=\beta=0$ si ha $(0+0)\odot v=(0,1)$, mentre $(0\odot v)+(0\odot v)=(0,2)$. Fallisce la distributività rispetto alla somma degli scalari. Equivalentemente $0\odot v$ non è il vettore nullo usuale, cosa impossibile in uno spazio vettoriale. La chiusura dice dove stanno i risultati; non garantisce le relazioni richieste fra i diversi modi di calcolarli.

Torna a [[#Esercizio 4 — La chiusura non basta (un assioma che fallisce)|esercizio 4]].

### Riscontro 5

> [!tip]- Riscontro 5
> Da $0_Kv=(0_K+0_K)v=0_Kv+0_Kv$, usando la distributività nella somma degli scalari e cancellando additivamente $0_Kv$, ricavi $0_Kv=0_V$. Da $\alpha0_V=\alpha(0_V+0_V)=\alpha0_V+\alpha0_V$, usando invece la somma dei vettori, ricavi $\alpha0_V=0_V$. Poi $v+(-1_K)v=(1_K-1_K)v=0_V$, quindi $(-1_K)v=-v$ per unicità dell'opposto. Per due neutri $e,e'$, $e=e+e'=e'$; per due opposti $a,b$ di $v$, $a=a+(v+b)=(a+v)+b=b$, inserendo i neutri intermedi. La cancellazione è giustificata sommando l'opposto dello stesso vettore ai due membri e usando associatività.

Torna a [[#Esercizio 5 — Ricostruire le regole (zeri e opposti)|esercizio 5]].

### Riscontro 6

> [!tip]- Riscontro 6
> Se $\alpha\ne0_K$, dalla relazione $\alpha v=0_V$ ottieni $v=\alpha^{-1}(\alpha v)=\alpha^{-1}0_V=0_V$. Se $\alpha=0_K$, l'altra alternativa è già soddisfatta. Per $\alpha v=\beta v$ porta tutto a sinistra e usa $(\alpha-\beta)v=0_V$; quando $v\ne0_V$, segue $\alpha=\beta$. Se $v=0_V$, gli scalari distinti 0 e 1 danno la stessa immagine. Per $\alpha u=\alpha w$ con $\alpha\ne0_K$, applica il prodotto per $\alpha^{-1}$. Se $\alpha=0_K$, in uno spazio non nullo puoi scegliere $u\ne w$ e ottenere comunque uguaglianza. Un esempio è $V=K$, $u=0_K$, $w=1_K$. L'unico inverso usato è quello di uno scalare del campo.

Torna a [[#Esercizio 6 — Quale fattore posso cancellare (annullamento e unicità)|esercizio 6]].

### Riscontro 7

> [!tip]- Riscontro 7
> I vettori sono $(0,0),(1,0),(0,1),(1,1)$. Si ha $u+v=(0,1)$, $u+u=(0,0)$, $-v=v=(1,1)$ e $(1+1)v=0v=(0,0)$. Il vettore $v$ non è nullo: nel campo $1+1=0$, quindi non si può dividere per due. Per la distributività: con $(a,b)=(0,0)$ entrambi i membri sono il vettore nullo; con $(0,1)$ e $(1,0)$ entrambi sono $v$; con $(1,1)$ il membro sinistro è $0v=0_V$ e il destro $v+v=0_V$.

Torna a [[#Esercizio 7 — Calcolare su un campo diverso (lo spazio F2 al quadrato)|esercizio 7]].

### Riscontro 8

> [!tip]- Riscontro 8
> Sommi i coefficienti delle stesse potenze: $p+q=4t$ e $-2p+q=-6-5t+3t^2$. I coefficienti oltre il grado 2 restano nulli nelle somme e nei prodotti per scalare; zero e opposti sono inclusi, e tutte le identità del campo si trasferiscono coefficiente per coefficiente. Questo verifica la struttura di $\mathbb R[t]_{\le2}$. L'insieme dei polinomi di grado esattamente 2 non contiene zero; inoltre $t^2+(-t^2)=0$ ne mostra la mancata chiusura per somma e $0\cdot t^2=0$ quella per scalare. In ciascuna uguaglianza polinomiale confronti tutti i coefficienti, non valori in alcuni punti.

Torna a [[#Esercizio 8 — Il grado può scendere (polinomi e chiusura)|esercizio 8]].

### Riscontro 9

> [!tip]- Riscontro 9
> I valori di $2f-g$ sono $(2,-8,7)$. Per ogni $x\in X$, $(\lambda(f+g))(x)=\lambda(f(x)+g(x))=\lambda f(x)+\lambda g(x)=(\lambda f+\lambda g)(x)$; vale per ogni $x$, quindi le funzioni sono uguali. Per esempio la funzione $h$ con valori $(0,1,0)$ soddisfa $h(a)=0$ ma non è nulla. Per la funzione nulla occorre $h(x)=0$ per **ogni** punto, non per un punto fissato.

Torna a [[#Esercizio 9 — Sommare risposte punto per punto (spazi di funzioni)|esercizio 9]].

### Riscontro 10

> [!tip]- Riscontro 10
> Esiste un solo grafico possibile, l'insieme vuoto; soddisfa la definizione di funzione perché non ha ingressi privi di risposta. Perciò $K^\varnothing$ ha un solo elemento, che è il vettore nullo. Sommare quell'elemento a sé stesso o moltiplicarlo per qualsiasi scalare restituisce lo stesso elemento: tutte le identità sono soddisfatte. Le due funzioni costanti coincidono perché non c'è alcun ingresso che distingua i valori prescritti. Questo non identifica gli scalari $0_K$ e $1_K$, che rimangono distinti. Anche $K^0$ ha un solo elemento, la tupla vuota; è un altro modello dello spazio nullo.

Torna a [[#Esercizio 10 — Una funzione senza ingressi (il caso vuoto)|esercizio 10]].

### Riscontro 11

> [!tip]- Riscontro 11
> $2A-B=\begin{pmatrix}2&-2&-3\\5&5&-2\end{pmatrix}$ e $a_{23}=1$. Il vettore nullo è la matrice $2\times3$ di zeri; l'opposto di $A$ ha tutte le entrate cambiate di segno. Per ogni $(i,j)$, $(\alpha(\beta A))_{ij}=\alpha(\beta a_{ij})=(\alpha\beta)a_{ij}=((\alpha\beta)A)_{ij}$, quindi le matrici sono uguali. Hai usato soltanto il prodotto fra scalari nel campo. Una matrice $2\times2$ non ha entrate nella terza colonna da sommare a quelle di $A$: la regola richiede matrici della stessa forma.

Torna a [[#Esercizio 11 — Una tabella di vettori (matrici rettangolari)|esercizio 11]].

### Riscontro 12

> [!tip]- Riscontro 12
> Con scalari reali, $3-2i=3\cdot1+(-2)\cdot i$; con scalari complessi, $3-2i=(3-2i)\cdot1$. Un reale moltiplicato per 1 rimane reale, quindi non dà $i$. Gli assiomi di $\mathbb C$ su sé stesso discendono dalle proprietà del campo; restringendo gli scalari a $\mathbb R$ rimangono validi. Nel verso inverso, il prodotto usuale non definisce una legge $\mathbb C\times\mathbb R\to\mathbb R$, perché $i\cdot1=i\notin\mathbb R$: fallisce già il codominio richiesto. Non basta cambiare il nome del campo mantenendo una formula non chiusa.

Torna a [[#Esercizio 12 — Stessi elementi, coefficienti diversi (il campo degli scalari)|esercizio 12]].

### Riscontro 13

> [!tip]- Riscontro 13
> Le operazioni sono chiuse perché lo sono in $V$ e in $W$. Il neutro è $(0_V,0_W)$ e l'opposto di $(v,w)$ è $(-v,-w)$. Le uguaglianze $((v,w)+(v',w'))+(v'',w'')=(v,w)+((v',w')+(v'',w''))$ e $(v,w)+(v',w')=(v',w')+(v,w)$ seguono rispettivamente da associatività e commutatività in entrambe le componenti. Per la compatibilità, $\alpha(\beta(v,w))=(\alpha(\beta v),\alpha(\beta w))=((\alpha\beta)v,(\alpha\beta)w)=(\alpha\beta)(v,w)$. Per l'unità, $1_K(v,w)=(v,w)$. Per la prima distributività, $\alpha((v,w)+(v',w'))=(\alpha(v+v'),\alpha(w+w'))=(\alpha v+\alpha v',\alpha w+\alpha w')=\alpha(v,w)+\alpha(v',w')$. Per la seconda, $(\alpha+\beta)(v,w)=((\alpha+\beta)v,(\alpha+\beta)w)=(\alpha v+\beta v,\alpha w+\beta w)=\alpha(v,w)+\beta(v,w)$. Tutti gli assiomi sono stati verificati, oltre alla chiusura. Se $W=\{0_W\}$, gli elementi sono $(v,0_W)$ e la corrispondenza $v\mapsto(v,0_W)$ conserva le operazioni ed è biettiva.

Torna a [[#Esercizio 13 — Costruire uno spazio di coppie (verifica di una nuova struttura)|esercizio 13]].

Il capitolo è acquisito quando sai specificare campo, vettori e operazioni, verificare una struttura senza fermarti alla chiusura e ricostruire le prove delle regole sugli zeri. Prova a spiegare perché le stesse formule funzionano per una colonna, un polinomio e una funzione, indicando in ogni caso che cosa significa confrontare due oggetti.

---

[[Books/Geometria-I/03 - Polinomi radici e fattorizzazioni|← 03 · Polinomi radici e fattorizzazioni]] · [[Books/Geometria-I/00 - Indice e piano di studio|Indice e piano di studio]] · [[Books/Geometria-I/05 - Sottospazi e combinazioni lineari|05 · Sottospazi e combinazioni lineari →]]
