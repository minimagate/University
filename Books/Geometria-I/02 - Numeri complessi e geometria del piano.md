# Numeri complessi e geometria del piano

Prerequisiti: [[Books/Geometria-I/01 - Il linguaggio della geometria e i campi|funzioni, campi e linguaggio delle dimostrazioni]], coordinate cartesiane e trigonometria elementare. Torna all'[[Books/Geometria-I/00 - Indice e piano di studio|indice e piano di studio]].

> [!info] In questo capitolo
> - Costruirai i **numeri complessi** a partire da coppie di numeri reali, distinguendo le definizioni dalle proprietà da dimostrare.
> - Userai **coniugio e modulo** per riflettere un punto, misurare una distanza e trovare un inverso.
> - Leggerai la moltiplicazione come una **rotazione accompagnata da un cambiamento di scala**.
> - Calcolerai potenze e tutte le radici ennesime, spiegando perché siano proprio quelle e perché il numero zero richieda un caso separato.

## Domande per iniziare dagli esercizi

Gli enunciati precedono la teoria e i riscontri sono raccolti dopo di essa. Puoi partire da un esercizio, identificare lo strumento che manca e seguire il collegamento alla spiegazione pertinente. Per verificare una formula, non basta ricordarla: prova a ricavarla dalle definizioni.

| Domanda guida | Esercizi da tentare | Teoria da recuperare |
|---|---|---|
| Come si può aggiungere una soluzione di un'equazione senza rendere incoerente il calcolo? | [[#Esercizio 1 — Due coordinate e un prodotto (costruzione dei complessi)\|1]], [[#Esercizio 12 — Verificare una struttura (assiomi del campo)\|12]] | [[#Costruire un numero con due coordinate\|Costruire un numero con due coordinate]] · [[#Perché queste operazioni rispettano gli assiomi\|Perché queste operazioni rispettano gli assiomi]] |
| Quali numeri rappresentano davvero le parti reale e immaginaria? | [[#Esercizio 1 — Due coordinate e un prodotto (costruzione dei complessi)\|1]], [[#Esercizio 2 — Una riflessione che conserva le operazioni (coniugio)\|2]] | [[#Vedere i numeri nel piano\|Vedere i numeri nel piano]] |
| Come si riconoscono una riflessione, una distanza e un numero reale? | [[#Esercizio 2 — Una riflessione che conserva le operazioni (coniugio)\|2]], [[#Esercizio 4 — Dalle formule ai luoghi (modulo e distanza)\|4]] | [[#Coniugio e modulo: riflettere e misurare\|Coniugio e modulo: riflettere e misurare]] |
| Perché moltiplicare per il coniugato permette di dividere? | [[#Esercizio 3 — Trovare e controllare un inverso (divisione)\|3]] | [[#Costruire l'inverso senza indovinarlo\|Costruire l'inverso senza indovinarlo]] |
| Come ricostruisci la direzione senza perdere il quadrante? | [[#Esercizio 5 — Stessa pendenza, direzione diversa (forma polare)\|5]] | [[#Cambiare descrizione: distanza e direzione\|Cambiare descrizione: distanza e direzione]] |
| Che cosa fa a tutto il piano la moltiplicazione per un numero fissato? | [[#Esercizio 6 — Una macchina che ruota e dilata (prodotto in forma polare)\|6]], [[#Esercizio 10 — Quattro affermazioni da controllare (errori comuni)\|10]] | [[#Moltiplicare significa ruotare e cambiare scala\|Moltiplicare significa ruotare e cambiare scala]] |
| Come eviti di sviluppare una lunga potenza? | [[#Esercizio 7 — Una potenza senza espansioni (formula di De Moivre)\|7]] | [[#Ripetere una moltiplicazione: le potenze\|Ripetere una moltiplicazione: le potenze]] |
| Perché dividere un solo angolo non trova tutte le radici? | [[#Esercizio 8 — Quattro radici da ricostruire (radici ennesime)\|8]], [[#Esercizio 9 — Dimostrare che non manca nulla (completezza e casi limite)\|9]] | [[#Tornare indietro: tutte le radici ennesime\|Tornare indietro: tutte le radici ennesime]] |
| Quale relazione lega le radici di numeri differenti? | [[#Esercizio 11 — Da una radice a tutte le altre (radici dell'unità)\|11]] | [[#Le radici dell'unità organizzano tutte le altre\|Le radici dell'unità organizzano tutte le altre]] |

## Esercizi per verificare la comprensione

Gli esercizi 1–5 allenano definizioni e rappresentazioni; 6–8 collegano la geometria al calcolo; 9–12 richiedono giustificazioni e controlli delle ipotesi. Prima di aprire un riscontro, scrivi almeno un tentativo e identifica quale risultato stai usando.

### Esercizio 1 — Due coordinate e un prodotto (costruzione dei complessi)

Siano $z=-2+3i$ e $w=1+2i$. Calcola $z+w$, $zw$ e $z^2$; indica le parti reale e immaginaria di ogni risultato. Usando la definizione del prodotto sulle coppie, determina poi tutti i complessi $u$ che soddisfano $iu=1$.

Se ti blocchi: [[#Costruire un numero con due coordinate|Costruire un numero con due coordinate]] · [[#Vedere i numeri nel piano|Vedere i numeri nel piano]].

Controllo dopo il tentativo: [[#Riscontro 1|riscontro 1]].

### Esercizio 2 — Una riflessione che conserva le operazioni (coniugio)

Per $z=2-3i$ calcola $\overline z$, $z+\overline z$ e $z\overline z$. Dimostra per ogni $z\in\mathbb C$ che $z+\overline z$ è reale e che $z-\overline z$ ha parte reale nulla. Dimostra inoltre che $\overline z=-z$ equivale ad avere $\operatorname{Re}z=0$ e descrivi geometricamente l'insieme dei numeri che soddisfano tale condizione.

Se ti blocchi: [[#Coniugio e modulo: riflettere e misurare|Coniugio e modulo: riflettere e misurare]].

Controllo dopo il tentativo: [[#Riscontro 2|riscontro 2]].

### Esercizio 3 — Trovare e controllare un inverso (divisione)

Calcola l'inverso di $2+i$ e il quoziente $(1-3i)/(2+i)$. Controlla entrambi i risultati moltiplicandoli per $2+i$. Risolvi poi l'equazione $(2+i)z=1-3i$ e spiega perché la soluzione è unica. Che cosa cambia se il coefficiente di $z$ è zero?

Se ti blocchi: [[#Costruire l'inverso senza indovinarlo|Costruire l'inverso senza indovinarlo]].

Controllo dopo il tentativo: [[#Riscontro 3|riscontro 3]].

### Esercizio 4 — Dalle formule ai luoghi (modulo e distanza)

Descrivi nel piano i due insiemi

$$
A=\{z\in\mathbb C:|z-2+i|=3\},\qquad
B=\{z\in\mathbb C:|z-1|=|z+1|\}.
$$

Per $B$, verifica la descrizione scrivendo $z=a+ib$ e confrontando i quadrati delle due distanze. Trova tutti i numeri reali appartenenti ad $A$.

Se ti blocchi: [[#Coniugio e modulo: riflettere e misurare|Coniugio e modulo: riflettere e misurare]].

Controllo dopo il tentativo: [[#Riscontro 4|riscontro 4]].

### Esercizio 5 — Stessa pendenza, direzione diversa (forma polare)

Trova modulo e un argomento di $-1-i$, $-\sqrt3+i$, $-2i$ e $3$. Spiega perché applicare senza correzioni $\arctan(b/a)$ al primo numero dia una direzione sbagliata. Indica poi due argomenti diversi dello stesso numero $-2i$ e chiarisci perché lo zero non abbia argomento.

Se ti blocchi: [[#Cambiare descrizione: distanza e direzione|Cambiare descrizione: distanza e direzione]].

Controllo dopo il tentativo: [[#Riscontro 5|riscontro 5]].

### Esercizio 6 — Una macchina che ruota e dilata (prodotto in forma polare)

Considera $T(z)=(-1+i\sqrt3)z$. Descrivi geometricamente $T$, calcola $T(1-i)$ e descrivi la trasformazione inversa. Un punto non nullo può rimanere fermo sotto $T$? Giustifica algebricamente la risposta.

Se ti blocchi: [[#Moltiplicare significa ruotare e cambiare scala|Moltiplicare significa ruotare e cambiare scala]].

Controllo dopo il tentativo: [[#Riscontro 6|riscontro 6]].

### Esercizio 7 — Una potenza senza espansioni (formula di De Moivre)

Calcola $(\sqrt3-i)^6$ e $(1-i)^{12}$ usando la forma polare. Per ciascuno controlla che il modulo del risultato sia quello previsto. Ricostruisci poi il passo induttivo della formula di De Moivre, indicando esattamente dove usi la formula del prodotto.

Se ti blocchi: [[#Ripetere una moltiplicazione: le potenze|Ripetere una moltiplicazione: le potenze]].

Controllo dopo il tentativo: [[#Riscontro 7|riscontro 7]].

### Esercizio 8 — Quattro radici da ricostruire (radici ennesime)

Trova tutte le soluzioni di $z^4=-16$. Scrivile prima in forma polare e poi in forma cartesiana. Descrivi la loro configurazione e controlla una delle soluzioni mediante due quadrature successive.

Se ti blocchi: [[#Tornare indietro: tutte le radici ennesime|Tornare indietro: tutte le radici ennesime]].

Controllo dopo il tentativo: [[#Riscontro 8|riscontro 8]].

### Esercizio 9 — Dimostrare che non manca nulla (completezza e casi limite)

Siano $n\ge1$ e $w\ne0$. Ricostruisci la prova che la formula delle radici produca esattamente $n$ soluzioni distinte, senza usare il teorema fondamentale dell'algebra. Spiega che cosa cambia scegliendo un altro argomento di $w$. Risolvi separatamente $z^5=0$ e $z^1=w$. Per $n=2$, perché le due radici di un numero non nullo sono opposte?

Se ti blocchi: [[#Tornare indietro: tutte le radici ennesime|Tornare indietro: tutte le radici ennesime]].

Controllo dopo il tentativo: [[#Riscontro 9|riscontro 9]].

### Esercizio 10 — Quattro affermazioni da controllare (errori comuni)

Stabilisci se ciascuna affermazione è vera e giustifica la risposta con una prova o un controesempio:

1. Per ogni $z$, il numero $|z|$ coincide con $z$.
2. Per ogni $z\ne0$, il coniugato coincide con l'inverso.
3. Per ogni $z,w$, si ha $|z+w|=|z|+|w|$.
4. Se scegliamo argomenti in $(-\pi,\pi]$, l'argomento del prodotto è sempre la somma esatta dei due argomenti scelti.

Correggi le affermazioni 2 e 4 in modo da ottenere enunciati veri.

Se ti blocchi: [[#Coniugio e modulo: riflettere e misurare|Coniugio e modulo: riflettere e misurare]] · [[#Moltiplicare significa ruotare e cambiare scala|Moltiplicare significa ruotare e cambiare scala]].

Controllo dopo il tentativo: [[#Riscontro 10|riscontro 10]].

### Esercizio 11 — Da una radice a tutte le altre (radici dell'unità)

Verifica che $(1+i)^4=-4$ e, partendo da questa singola radice, risolvi $z^4=-4$ mediante le radici quarte dell'unità. Dimostra in generale che, per $w\ne0$ e $z_0^n=w$, la funzione $\zeta\mapsto z_0\zeta$ è una biezione dalle radici ennesime dell'unità alle radici ennesime di $w$. Indica l'inversa di questa funzione.

Se ti blocchi: [[#Le radici dell'unità organizzano tutte le altre|Le radici dell'unità organizzano tutte le altre]].

Controllo dopo il tentativo: [[#Riscontro 11|riscontro 11]].

### Esercizio 12 — Verificare una struttura (assiomi del campo)

Riparti dalle operazioni definite sulle coppie. Verifica la commutatività del prodotto e la distributività rispetto alla somma, usando coordinate arbitrarie. Elenca poi quali altre proprietà occorrono per concludere che $\mathbb C$ sia un campo e indica, per ognuna, come è stata verificata nel capitolo. Perché non sarebbe sufficiente controllare soltanto che i risultati delle due operazioni appartengano a $\mathbb C$?

Se ti blocchi: [[#Costruire un numero con due coordinate|Costruire un numero con due coordinate]] · [[#Perché queste operazioni rispettano gli assiomi|Perché queste operazioni rispettano gli assiomi]] · [[#Costruire l'inverso senza indovinarlo|Costruire l'inverso senza indovinarlo]].

Controllo dopo il tentativo: [[#Riscontro 12|riscontro 12]].

## Teoria da recuperare

Usa i collegamenti della tabella iniziale per leggere lo strumento che ti serve. Dopo la lettura, torna all’esercizio e prova a ricostruire il ragionamento senza suggerimenti.

## Costruire un numero con due coordinate

Sui reali l'equazione $x^2=-1$ non ha soluzioni: il quadrato di un numero reale è non negativo. Possiamo allargare l'insieme dei numeri e ottenere una soluzione mantenendo un calcolo coerente? La parola importante è «coerente». Scrivere un nuovo simbolo non basta: dobbiamo dire quali oggetti consideriamo, come si sommano e come si moltiplicano.

Partiamo dall'insieme delle coppie ordinate di reali e definiamo

$$
\mathbb C:=\mathbb R^2,
$$

con le operazioni

$$
(a,b)+(c,d):=(a+c,b+d),
$$

$$
(a,b)(c,d):=(ac-bd,ad+bc).
$$

Qui tutte le operazioni a destra sono operazioni reali già note. Le formule producono ancora coppie reali, quindi definiscono effettivamente operazioni interne sull'insieme scelto. L'uguaglianza di due complessi significa uguaglianza delle rispettive coordinate.

Perché questo prodotto? Se desideriamo una scrittura $a+ib$ con $i^2=-1$, lo sviluppo formale suggerisce proprio $(ac-bd)+i(ad+bc)$. Il suggerimento ci aiuta a scegliere la definizione; dopo averla scelta, le proprietà devono discendere da essa.

Identifichiamo ora ogni reale $a$ con la coppia $(a,0)$. Questa identificazione conserva somme e prodotti:

$$
(a,0)+(c,0)=(a+c,0),\qquad (a,0)(c,0)=(ac,0).
$$

La funzione $a\mapsto(a,0)$ è iniettiva, perciò permette di ritrovare una copia dei reali dentro i complessi. Scriveremo dunque $a$ al posto di $(a,0)$, in particolare $0=(0,0)$ e $1=(1,0)$.

Definiamo $i:=(0,1)$. Dalla formula del prodotto segue

$$
i^2=(0,1)(0,1)=(-1,0)=-1.
$$

Inoltre $(b,0)i=(0,b)$, quindi

$$
(a,b)=(a,0)+(b,0)i=a+ib.
$$

La consueta scrittura **cartesiana** $a+ib$ è così giustificata dalle operazioni definite sulle coppie. Le sue due componenti sono

$$
\operatorname{Re}(a+ib)=a,\qquad \operatorname{Im}(a+ib)=b.
$$

Entrambe sono numeri **reali**. Per esempio, $\operatorname{Im}(3-2i)=-2$, mentre il termine immaginario è $-2i$.

> [!abstract] Concetto chiave — Una costruzione prima delle regole di calcolo
> Un numero complesso è individuato da due reali. Somma e prodotto sono definiti tramite quelle coordinate; la relazione $i^2=-1$ è una conseguenza del prodotto scelto. Da qui in avanti possiamo usare la scrittura $a+ib$ e le proprietà che avremo verificato.

**Esempio svolto.** Con $z=2+i$ e $w=3-2i$,

$$
z+w=5-i,
$$

mentre

$$
zw=(2\cdot3-1\cdot(-2))+i(2\cdot(-2)+1\cdot3)=8-i.
$$

Lo stesso prodotto si ottiene sviluppando le parentesi e sostituendo $i^2=-1$. La forma compatta è utile perché conserva la familiarità del calcolo algebrico; la formula sulle coppie spiega perché funziona.

## Perché queste operazioni rispettano gli assiomi

Nel [[Books/Geometria-I/01 - Il linguaggio della geometria e i campi|capitolo 01]] un campo è stato descritto attraverso le sue operazioni e proprietà. Controlliamo quelle proprietà per la costruzione appena fatta, così non useremo il termine «campo» come una promessa senza verifica.

Per la somma, tutto si controlla coordinata per coordinata. Se $z=(a,b)$, $w=(c,d)$ e $u=(e,f)$,

$$
(z+w)+u=((a+c)+e,(b+d)+f)
=(a+(c+e),b+(d+f))=z+(w+u).
$$

Abbiamo usato l'associatività reale. La commutatività segue nello stesso modo dalla commutatività reale. L'elemento neutro è $(0,0)$ e l'opposto di $(a,b)$ è $(-a,-b)$, perché la loro somma è $(0,0)$.

Il prodotto è commutativo: scambiare $(a,b)$ con $(c,d)$ non cambia né $ac-bd$ né $ad+bc$. L'elemento neutro è $(1,0)$, poiché

$$
(a,b)(1,0)=(a,b).
$$

L'associatività richiede un controllo un po' più lungo. Sviluppando prima $zw$ e poi moltiplicando per $u$ troviamo

$$
(zw)u=(ace-bde-adf-bcf,\ acf-bdf+ade+bce).
$$

Sviluppando invece prima $wu$ troviamo

$$
z(wu)=(ace-adf-bcf-bde,\ acf+ade+bce-bdf).
$$

Le componenti coincidono per associatività e commutatività delle operazioni reali. Infine, per la distributività,

$$
\begin{aligned}
z(w+u)
&=(a,b)(c+e,d+f)\\
&=(a(c+e)-b(d+f),\ a(d+f)+b(c+e))\\
&=(ac-bd+ae-bf,\ ad+bc+af+be)\\
&=zw+zu.
\end{aligned}
$$

La distributività dall'altro lato segue dalla commutatività del prodotto. Sono verificati anche $0\ne1$ e tutte le proprietà additive. Rimane un punto essenziale: **ogni complesso non nullo deve avere un inverso moltiplicativo**. Lo costruiremo con coniugio e modulo nella sezione [[#Costruire l'inverso senza indovinarlo|dedicata all'inverso]]. Con quella verifica la dimostrazione che $\mathbb C$ è un campo sarà completa.

> [!warning] Attenzione — Definire le operazioni non prova gli assiomi
> Nella [[_transcripts/Geometria 1/2026-09-25 - Numeri complessi- operazioni, forma polare e radici|lezione del 25 settembre]] il docente distingue esplicitamente le definizioni dalle proprietà ancora da verificare. Sapere che una formula restituisce un complesso dimostra la chiusura; associatività, distributività e inversi sono richieste ulteriori. Un esempio numerico controlla un caso, mentre una verifica su coordinate arbitrarie dimostra la proprietà generale.

## Vedere i numeri nel piano

Al numero $a+ib$ associamo il punto $(a,b)$, oppure la freccia dall'origine a quel punto. L'asse orizzontale contiene i reali; quello verticale contiene i complessi della forma $ib$, con $b\in\mathbb R$.

La somma si legge come composizione di spostamenti. Se percorri la freccia di $z$ e, dalla sua estremità, percorri una copia traslata della freccia di $w$, arrivi al punto che rappresenta $z+w$. Le due coordinate finali sono proprio $a+c$ e $b+d$: è la regola del parallelogramma.

Moltiplicare per $i$ produce invece

$$
i(a+ib)=-b+ia.
$$

Il punto $(a,b)$ diventa $(-b,a)$: è una rotazione di un quarto di giro in senso antiorario. Per esempio,

$$
1\longmapsto i\longmapsto-1\longmapsto-i\longmapsto1.
$$

Dopo quattro applicazioni siamo tornati al punto iniziale. Questa geometria non richiede di cambiare la definizione del prodotto: rivela una proprietà della definizione già scelta.

> [!example] Esempi e controesempi — Rappresentazione e operazione
> **Somma:** $(1+i)+(2-i)=3$ combina le coordinate dei due spostamenti.
> **Prodotto per $i$:** $i(1+i)=-1+i$ ruota il punto $(1,1)$ in $(-1,1)$.
> **Un prodotto diverso:** $(1+i)^2=2i$, mentre il prodotto componente per componente delle coppie $(1,1)$ e $(1,1)$ sarebbe $(1,1)$. La corrispondenza con il piano non autorizza a sostituire il prodotto complesso con un'altra operazione.

La stessa figura può dunque essere letta come posizione, spostamento o numero da moltiplicare. Occorre tenere chiaro quale operazione stiamo studiando; il seguito farà emergere il significato geometrico del prodotto per un complesso qualsiasi.

## Coniugio e modulo: riflettere e misurare

Se vogliamo riflettere un punto rispetto all'asse reale, dobbiamo lasciare ferma la prima coordinata e cambiare segno alla seconda. Definiamo perciò il **coniugato** di $z=a+ib$ con

$$
\overline z:=a-ib.
$$

Coniugare due volte restituisce il numero iniziale. Inoltre,

$$
z=\overline z\iff b=0\iff z\in\mathbb R.
$$

Il coniugio individua i reali come punti fissi della riflessione. Combinando $z$ e $\overline z$ si possono anche recuperare le componenti:

$$
\operatorname{Re}z=\frac{z+\overline z}{2},\qquad
\operatorname{Im}z=-\frac i2(z-\overline z).
$$

La seconda espressione ha valore reale, come si vede sostituendo $z=a+ib$: $-(i/2)(2ib)=b$. In queste formule la divisione per $2$ usa soltanto il reale $1/2$, già disponibile nella costruzione.

**Proprietà del coniugio.** Per ogni $z,w\in\mathbb C$,

$$
\overline{z+w}=\overline z+\overline w,\qquad
\overline{zw}=\overline z\,\overline w,\qquad
\overline{\overline z}=z.
$$

Per dimostrare la prima, scriviamo $z=a+ib$, $w=c+id$. Entrambi i membri diventano $(a+c)-i(b+d)$. Per la seconda, il membro sinistro diventa

$$
(ac-bd)-i(ad+bc).
$$

Applicando la formula del prodotto ad $(a-ib)(c-id)$ si ottiene esattamente la stessa espressione. La terza proprietà segue dal doppio cambiamento di segno.

Per misurare la distanza del punto dall'origine definiamo invece il **modulo**

$$
|a+ib|:=\sqrt{a^2+b^2},
$$

dove la radice è quella reale non negativa. La formula è motivata dal teorema di Pitagora; il suo risultato è un reale non negativo, non una nuova coppia di coordinate.

Per esempio, $|3-4i|=5$ e $|-3|=3$. Sui numeri reali il modulo coincide con il valore assoluto. Inoltre,

$$
|z|=0\iff a^2+b^2=0\iff a=b=0\iff z=0,
$$

perché una somma di quadrati reali non negativi può essere zero soltanto quando entrambi sono zero.

L'identità che collega le due costruzioni è

$$
z\overline z=(a+ib)(a-ib)=a^2+b^2=|z|^2.
$$

I termini misti si cancellano e $-i^2b^2=b^2$. Questo spiega perché il coniugato sia utile anche nei calcoli: moltiplicare un complesso per il proprio coniugato produce un reale.

Ne segue una proprietà del modulo che useremo spesso:

$$
|zw|=|z|\,|w|\qquad(z,w\in\mathbb C).
$$

Infatti, usando il coniugio e l'associatività e commutatività già verificate,

$$
|zw|^2=zw\overline{zw}=zw\overline z\,\overline w
=(z\overline z)(w\overline w)=|z|^2|w|^2.
$$

I due numeri $|zw|$ e $|z||w|$ sono non negativi e hanno lo stesso quadrato, quindi coincidono. Anche $|\overline z|=|z|$, direttamente dalla definizione.

> [!warning] Attenzione — Il modulo usa due coordinate reali
> Durante la [[_transcripts/Geometria 1/2026-09-25 - Numeri complessi- operazioni, forma polare e radici|lezione del 25 settembre]] viene chiarito che nella definizione del modulo si usano $a$ e $b$, entrambe reali. Scrivere $\sqrt{a^2+(ib)^2}$ darebbe un'altra espressione: per $z=i$ si arriverebbe a un quadrato negativo, mentre la distanza dall'origine è $1$.

La distanza fra i punti associati a $z$ e $w$ è $|z-w|$. Per esempio, $|z-(1+i)|=2$ descrive una circonferenza di centro $1+i$ e raggio $2$. Questa lettura geometrica permette spesso di capire un'equazione prima di svolgerne i conti.

## Costruire l'inverso senza indovinarlo

Vogliamo dividere per $z=a+ib\ne0$. Il problema è trovare un complesso che, moltiplicato per $z$, dia $1$. L'identità $z\overline z=|z|^2$ ci porta vicino: il prodotto è già reale, ma vale $|z|^2$ invece di $1$.

Poiché $z\ne0$, abbiamo $a^2+b^2>0$. Possiamo usare l'inverso del **numero reale** $a^2+b^2$, la cui esistenza conosciamo già, e costruire il complesso

$$
u:=\frac{a}{a^2+b^2}-i\frac{b}{a^2+b^2}.
$$

Moltiplicando con la formula definita sulle coppie otteniamo

$$
zu=\frac{a^2+b^2}{a^2+b^2}+i\frac{-ab+ba}{a^2+b^2}=1.
$$

La commutatività dà anche $uz=1$. Abbiamo quindi costruito l'inverso, senza presupporre una divisione complessa non ancora giustificata:

$$
\boxed{z^{-1}=\frac{\overline z}{|z|^2}\qquad(z\ne0).}
$$

**La verifica degli assiomi è ora completa:** $\mathbb C$, con le operazioni definite, è un campo. In particolare non ha divisori dello zero: se $zw=0$ e $z\ne0$, moltiplicando per $z^{-1}$ otteniamo $w=0$.

L'inverso è unico. Se $zu=1$ e $zv=1$, allora

$$
u=u(zv)=(uz)v=v.
$$

Definiamo $w/z:=wz^{-1}$ per $z\ne0$. Operativamente, moltiplichiamo numeratore e denominatore per $\overline z$.

**Esempio svolto.** Per calcolare la divisione discussa nella lezione,

$$
\begin{aligned}
\frac{3-2i}{1-i}
&=\frac{(3-2i)(1+i)}{(1-i)(1+i)}\\
&=\frac{3+3i-2i-2i^2}{2}\\
&=\frac{5+i}{2}.
\end{aligned}
$$

Il controllo ricostruisce il dividendo:

$$
\frac{5+i}{2}(1-i)=\frac{6-4i}{2}=3-2i.
$$

Non basta che un risultato «abbia una forma ragionevole»: moltiplicarlo per il divisore permette di controllare il calcolo con le operazioni iniziali.

> [!example] Esempi e controesempi — Coniugato e inverso
> Per $z=1+i$, il coniugato è $1-i$, ma l'inverso è $(1-i)/2$: manca il fattore $|z|^2$ se li confondiamo.
> Per $z\ne0$, si ha $z^{-1}=\overline z$ **se e solo se** $|z|=1$, perché $z\overline z=|z|^2$ deve valere $1$.
> Per $z=0$, l'inverso non esiste: il prodotto di $0$ con qualsiasi complesso è $0$.

## Cambiare descrizione: distanza e direzione

Le coordinate cartesiane separano ciò che accade orizzontalmente e verticalmente. Per descrivere una rotazione è più naturale usare la distanza dall'origine e un angolo.

Se $z\ne0$, poniamo $\rho=|z|>0$. Un **argomento** di $z$ è un reale $\theta$ tale che

$$
z=\rho(\cos\theta+i\sin\theta).
$$

L'angolo si misura dalla semiretta reale positiva, in senso antiorario. La scrittura è detta **forma polare** o **trigonometrica**. Esiste perché $(a/\rho,b/\rho)$ appartiene alla circonferenza unitaria.

Il modulo è unico, ma l'argomento no: se $\theta$ va bene, vanno bene precisamente tutti gli angoli

$$
\theta+2k\pi,\qquad k\in\mathbb Z.
$$

Infatti seno e coseno hanno periodo $2\pi$, e due direzioni coincidono esattamente quando gli angoli differiscono di un numero intero di giri. Dire «l'argomento è $\theta$ modulo $2\pi$» esprime questa ambiguità controllata. Si può scegliere un intervallo per fissare un rappresentante, ma le formule del capitolo non richiedono una scelta particolare.

Per $z=0$ il modulo è $0$ e **l'argomento non è definito**. È vero che $0(\cos\theta+i\sin\theta)=0$ per ogni $\theta$; proprio per questo nessuna direzione viene individuata dal numero zero.

Passare dalle polari alle cartesiane significa scrivere

$$
a=\rho\cos\theta,\qquad b=\rho\sin\theta.
$$

Per il passaggio inverso calcoliamo prima $\rho=\sqrt{a^2+b^2}$, poi cerchiamo un angolo con coseno $a/\rho$ e seno $b/\rho$. Se $a\ne0$, la relazione $\tan\theta=b/a$ aiuta, ma da sola non determina la direzione: la tangente ha periodo $\pi$.

Con l'arco tangente a valori in $(-\pi/2,\pi/2)$ possiamo scegliere

$$
\theta=\begin{cases}
\arctan(b/a),&a>0,\\
\arctan(b/a)+\pi,&a<0,\\
\pi/2,&a=0,\ b>0,\\
-\pi/2,&a=0,\ b<0.
\end{cases}
$$

Questa scelta non è obbligata: aggiungere un multiplo di $2\pi$ lascia invariato il numero rappresentato. È invece obbligato rispettare i segni di seno e coseno.

**Esempio svolto.** Per $z=-\sqrt3+i$ abbiamo $\rho=2$. Cerchiamo un coseno $-\sqrt3/2$ e un seno $1/2$, quindi possiamo scegliere $\theta=5\pi/6$. Se usassimo soltanto $\arctan(b/a)=\arctan(-1/\sqrt3)=-\pi/6$, troveremmo un punto nel quadrante opposto:

$$
2\left(\cos\left(-\frac\pi6\right)+i\sin\left(-\frac\pi6\right)\right)=\sqrt3-i\ne z.
$$

Controllare la forma cartesiana ricostruita è il modo più diretto per scoprire l'errore.

## Moltiplicare significa ruotare e cambiare scala

Siano $z=\rho(\cos\theta+i\sin\theta)$ e $w=\lambda(\cos\varphi+i\sin\varphi)$, con $z,w\ne0$. Sviluppiamo il prodotto:

$$
\begin{aligned}
zw=\rho\lambda[&\cos\theta\cos\varphi-\sin\theta\sin\varphi\\
&+i(\cos\theta\sin\varphi+\sin\theta\cos\varphi)].
\end{aligned}
$$

Le formule trigonometriche di addizione trasformano le due componenti in $\cos(\theta+\varphi)$ e $\sin(\theta+\varphi)$. Otteniamo

$$
\boxed{zw=\rho\lambda[\cos(\theta+\varphi)+i\sin(\theta+\varphi)].}
$$

Quindi i **moduli si moltiplicano** e gli **argomenti si sommano modulo $2\pi$**. La proprietà dei moduli vale anche se uno dei fattori è zero; per parlare dei loro argomenti dobbiamo invece escluderlo.

Fissiamo ora $w\ne0$ e lasciamo variare $z$. La trasformazione $z\mapsto wz$ ruota ogni punto dell'angolo $\varphi$ e ne moltiplica la distanza dall'origine per $\lambda$. Anche l'origine viene trattata correttamente: resta ferma. Se $\lambda>1$ abbiamo una dilatazione, se $0<\lambda<1$ una contrazione, se $\lambda=1$ una rotazione senza cambiamento di scala.

**Esempio svolto.** Il numero $w=1+i$ ha modulo $\sqrt2$ e argomento $\pi/4$. Moltiplicare per $1+i$ ruota dunque di $45$ gradi e dilata di un fattore $\sqrt2$. Sul punto $z=2$ troviamo $wz=2+2i$, il cui modulo è $2\sqrt2$ e il cui argomento è $\pi/4$, come previsto.

Per $w=0$ la trasformazione manda tutti i punti nell'origine; non ha un angolo di rotazione e non è invertibile. Per $w\ne0$, la trasformazione inversa è la moltiplicazione per $w^{-1}$, che ha modulo $1/\lambda$ e argomento $-\varphi$ modulo $2\pi$.

> [!warning] Attenzione — Si sommano gli argomenti, non i numeri
> Nella [[_transcripts/Geometria 1/2026-09-25 - Numeri complessi- operazioni, forma polare e radici|lezione del 25 settembre]] il docente corregge esplicitamente questa confusione: il prodotto non è «la somma degli angoli». Il prodotto è un numero complesso, determinato da **modulo e argomento**. Per esempio $i\cdot i=-1$: il nuovo angolo è $\pi/2+\pi/2=\pi$, mentre il risultato è il punto $-1$, non il numero reale $\pi$.

La divisione ammette una lettura analoga. Se $w\ne0$ e anche $z\ne0$,

$$
\frac zw=\frac\rho\lambda[\cos(\theta-\varphi)+i\sin(\theta-\varphi)].
$$

Si dividono i moduli e si sottraggono gli argomenti. In generale, la rappresentazione cartesiana è comoda per somme e differenze; quella polare è comoda per prodotti, quozienti e potenze. Scegliere una rappresentazione significa scegliere quale operazione rendere trasparente.

## Ripetere una moltiplicazione: le potenze

Se $z=\rho(\cos\theta+i\sin\theta)\ne0$, a ogni moltiplicazione per $z$ il modulo viene moltiplicato per $\rho$ e l'argomento aumenta di $\theta$. Per ogni intero $n\ge1$ si ottiene la **formula di De Moivre**:

$$
\boxed{z^n=\rho^n[\cos(n\theta)+i\sin(n\theta)].}
$$

Dimostriamola per induzione. Per $n=1$ è la forma polare stessa. Supponiamola vera per $n$. Moltiplicando $z^n$ per $z$ e usando la formula del prodotto, il modulo diventa $\rho^n\rho=\rho^{n+1}$ e l'angolo diventa $n\theta+\theta=(n+1)\theta$. È esattamente la formula per $n+1$.

Per $n=0$ e $z\ne0$ la stessa scrittura restituisce $1$, in accordo con $z^0=1$. Per $z=0$ le potenze con esponente positivo valgono $0$, senza bisogno di attribuire un argomento allo zero. Qui non definiamo potenze con esponenti complessi: l'induzione riguarda esponenti interi non negativi con le precisazioni appena fatte.

**Esempio svolto.** Calcoliamo $(1+i)^8$. Sappiamo che $1+i$ ha modulo $\sqrt2$ e argomento $\pi/4$, quindi

$$
(1+i)^8=(\sqrt2)^8(\cos2\pi+i\sin2\pi)=16.
$$

Il calcolo cartesiano può servirci da controllo: $(1+i)^2=2i$, dunque $(1+i)^4=-4$ e $(1+i)^8=16$. I due metodi si confermano e mostrano perché la forma polare sia particolarmente efficace per gli esponenti grandi.

## Tornare indietro: tutte le radici ennesime

Fissiamo un intero $n\ge1$ e un complesso $w$. Cercare le **radici ennesime** di $w$ significa risolvere l'equazione $z^n=w$. Nei reali la notazione $\sqrt[n]{R}$ per $R>0$ designa l'unica radice reale **positiva**. Nei complessi l'equazione può avere più soluzioni, e non dobbiamo sceglierne una senza dirlo.

### Il caso non nullo

Supponiamo $w\ne0$ e scriviamo

$$
w=R(\cos\theta+i\sin\theta),\qquad R>0.
$$

Anche una sua radice $z$ sarà non nulla, perché $0^n=0$. Scriviamola $z=\rho(\cos\varphi+i\sin\varphi)$, con $\rho>0$.

*Passo 1 — Determinare il modulo.* Per De Moivre e per l'unicità del modulo,

$$
\rho^n=R,\qquad \rho=\sqrt[n]{R}.
$$

Qui stiamo usando la radice positiva di un **reale positivo**, quindi il valore del modulo è unico.

*Passo 2 — Determinare tutte le direzioni.* L'uguaglianza dei numeri complessi richiede che i loro angoli coincidano modulo $2\pi$:

$$
n\varphi=\theta+2k\pi\quad\text{per qualche }k\in\mathbb Z.
$$

Prima ricordiamo tutti i rappresentanti dell'angolo, poi dividiamo per $n$:

$$
\varphi=\frac{\theta+2k\pi}{n}.
$$

Otteniamo così i candidati

$$
\boxed{
z_k=\sqrt[n]{R}\left[
\cos\left(\frac{\theta+2k\pi}{n}\right)
+i\sin\left(\frac{\theta+2k\pi}{n}\right)
\right],\quad k=0,\ldots,n-1.
}
$$

*Passo 3 — Verificare che funzionino.* Elevando $z_k$ alla potenza $n$, il modulo torna $R$ e l'angolo diventa $\theta+2k\pi$, che rappresenta lo stesso numero di $\theta$. Quindi $z_k^n=w$.

*Passo 4 — Verificare che siano distinti.* Se $z_k=z_h$, gli angoli differiscono di un multiplo di $2\pi$:

$$
\frac{2(k-h)\pi}{n}=2\ell\pi\quad\text{con }\ell\in\mathbb Z.
$$

Ne segue $k-h=n\ell$. Per $0\le k,h<n$ si ha $|k-h|<n$, quindi l'unica possibilità è $\ell=0$ e $k=h$.

*Passo 5 — Verificare che siano tutte.* Qualunque radice deve soddisfare i passi 1 e 2, dunque corrisponde a qualche intero $k$. Scrivendo $k=qn+r$, con $0\le r<n$, il suo angolo differisce da quello di $z_r$ di $2q\pi$. Rappresenta quindi lo stesso complesso. Non ci sono altre radici.

Abbiamo dimostrato che, per $w\ne0$, esistono **esattamente $n$ radici ennesime distinte**. Cambiare l'argomento scelto per $w$ riordina le radici: sostituire $\theta$ con $\theta+2h\pi$ sostituisce l'indice $k$ con $k+h$, letto modulo $n$.

> [!warning] Attenzione — Dividere un angolo può perdere soluzioni
> È uno dei punti discussi nella [[_transcripts/Geometria 1/2026-09-25 - Numeri complessi- operazioni, forma polare e radici|lezione del 25 settembre]]. Per risolvere $z^2=1$, usare soltanto l'argomento $0$ e dividerlo per $2$ dà $z=1$. Usare anche l'argomento $2\pi$ dà $z=-1$. Prima della divisione i due angoli rappresentavano la stessa direzione; dopo la divisione rappresentano direzioni diverse.

Geometricamente, le radici sono sulla circonferenza di raggio $\sqrt[n]{R}$ e i loro angoli successivi differiscono di $2\pi/n$. Per $n\ge3$ formano un poligono regolare centrato nell'origine. Per $n=2$ sono due punti opposti; per $n=1$ c'è soltanto il punto $w$.

### Un esempio completo: tre radici di un numero reale negativo

Risolviamo l'equazione della lezione $z^3=-8$. Il modulo del termine noto è $8$ e possiamo scegliere l'argomento $\pi$. Le radici hanno modulo $2$ e angoli

$$
\frac\pi3,\qquad\pi,\qquad\frac{5\pi}3.
$$

Ritornando alle coordinate cartesiane troviamo

$$
1+i\sqrt3,\qquad-2,\qquad1-i\sqrt3.
$$

La radice reale $-2$ è presente, ma non esaurisce le soluzioni complesse. Per controllare, il quadrato di $1+i\sqrt3$ è $-2+2i\sqrt3$ e il suo prodotto per $1+i\sqrt3$ è $-8$; il coniugio dà anche $(1-i\sqrt3)^3=-8$. I tre punti formano un triangolo equilatero sulla circonferenza di raggio $2$.

### Il caso zero

Se $z^n=0$, dalla moltiplicatività del modulo segue $|z|^n=0$. Dunque $|z|=0$ e $z=0$. L'equazione ha **una sola soluzione distinta**, qualunque sia $n\ge1$.

Non c'è contraddizione con il risultato precedente: quel risultato assumeva $w\ne0$. Nel [[Books/Geometria-I/03 - Polinomi radici e fattorizzazioni|capitolo 03]] distingueremo sistematicamente radici distinte e molteplicità. La formula delle radici ennesime, qui dimostrata direttamente, non è una dimostrazione del teorema fondamentale dell'algebra per polinomi arbitrari.

## Le radici dell'unità organizzano tutte le altre

Le soluzioni di $z^n=1$ si chiamano **radici ennesime dell'unità**. Ponendo $R=1$ e $\theta=0$ nella formula generale otteniamo

$$
\zeta_k=\cos\frac{2k\pi}{n}+i\sin\frac{2k\pi}{n},\qquad k=0,\ldots,n-1.
$$

Per esempio, le radici quarte dell'unità sono $1,i,-1,-i$. Le radici cubiche sono

$$
1,\qquad-\frac12+i\frac{\sqrt3}{2},\qquad-\frac12-i\frac{\sqrt3}{2}.
$$

Queste famiglie non servono soltanto quando il termine noto è $1$. Se $w\ne0$ e conosciamo **una** radice $z_0$ con $z_0^n=w$, allora tutte le radici sono precisamente

$$
z_0\zeta_0,\ldots,z_0\zeta_{n-1}.
$$

Dimostriamo i due versi. Se $\zeta^n=1$, la commutatività permette di scrivere $(z_0\zeta)^n=z_0^n\zeta^n=w$. Viceversa, se $z^n=w$, dato che $z_0\ne0$ possiamo dividere e ottenere

$$
\left(\frac z{z_0}\right)^n=\frac{z^n}{z_0^n}=1.
$$

Quindi $z/z_0$ è una radice dell'unità. La moltiplicazione per $z_0$ è inoltre iniettiva, perché ha un'inversa: radici dell'unità distinte producono radici distinte di $w$.

**Esempio svolto.** Sapere che $2^4=16$ ci permette di trovare tutte le radici quarte di $16$ moltiplicando $2$ per $1,i,-1,-i$: otteniamo $2,2i,-2,-2i$. Partire dalla radice $2i$ avrebbe soltanto cambiato l'ordine dei quattro risultati.

> [!abstract] Concetto chiave — Una forma uguale, una scala e una rotazione diverse
> Per $w\ne0$, le sue radici ennesime si ottengono dalle radici ennesime dell'unità mediante la moltiplicazione per una radice fissata di $w$. La configurazione conserva gli angoli relativi: cambia la scala e ruota nel piano. Il motivo algebrico è l'identità $(z_0\zeta)^n=z_0^n\zeta^n$.

La lezione del 30 settembre riprende questa organizzazione geometrica nello studio dei polinomi. Il prossimo capitolo chiarirà che cosa accade quando passiamo dall'equazione speciale $z^n=w$ a un polinomio generale e perché il conteggio delle radici debba considerare anche le ripetizioni.

## Fonti

La costruzione dei complessi, la verifica delle operazioni, coniugio, modulo, inverso, forma polare, prodotti, potenze e radici derivano dalla [[Notes/Geometria 1/Lectures/2026-09-25 - Numeri complessi- operazioni, forma polare e radici|nota del 25 settembre]] e dalla [[_transcripts/Geometria 1/2026-09-25 - Numeri complessi- operazioni, forma polare e radici|trascrizione del 25 settembre]]. I richiami sulla differenza fra definizioni e risultati, sulla natura reale del modulo, sull'argomento del prodotto e sulla divisione degli angoli sono riconducibili alle discussioni registrate in quella lezione; sono riformulati, non citazioni letterali.

La lettura delle radici dell'unità come organizzazione delle altre radici è ripresa anche nella [[Notes/Geometria 1/Lectures/2026-09-30 - Fattorizzazione dei polinomi e radici complesse|nota del 30 settembre sui polinomi]] e nella [[_transcripts/Geometria 1/2026-09-30 - Fattorizzazione dei polinomi e radici complesse|relativa trascrizione]]. Il teorema fondamentale dell'algebra è soltanto anticipato qui; nel capitolo 03 sarà assunto come nelle lezioni, distinguendolo dalle conseguenze dimostrate.

Sono completamenti didattici la presentazione in ordine logico della costruzione sulle coppie, le verifiche algebriche esplicitate, la prova separata di validità, distinzione e completezza delle radici e la giustificazione dettagliata del passaggio tramite le radici dell'unità. Gli esempi $z^3=-8$, $(2+i)(3-2i)$ e $(3-2i)/(1-i)$ sono rielaborati dalla lezione; gli ulteriori esempi, tutti gli esercizi finali e i relativi riscontri sono redazionali. Le fonti originarie rimangono inalterate.

## Riscontri degli esercizi

Apri il riscontro dopo il tentativo. Se il risultato coincide, controlla comunque le condizioni usate: divisioni per numeri non nulli, scelta dei quadranti e conteggio delle soluzioni fanno parte della risposta.

### Riscontro 1

> [!tip]- Riscontro 1
> $z+w=-1+5i$, dunque parti reale e immaginaria $-1,5$. Il prodotto è $(-2-6)+i(-4+3)=-8-i$, con parti $-8,-1$. Infine $z^2=(4-9)-12i=-5-12i$, con parti $-5,-12$.
> Per $u=(a,b)$, la definizione dà $iu=(-b,a)$. L'uguaglianza con $1=(1,0)$ impone $b=-1$ e $a=0$: l'unica soluzione è $u=-i$. Qui non abbiamo «diviso per $i$» prima di avere costruito il suo inverso.

Torna a [[#Esercizio 1 — Due coordinate e un prodotto (costruzione dei complessi)|esercizio 1]].

### Riscontro 2

> [!tip]- Riscontro 2
> Si ha $\overline z=2+3i$, $z+\overline z=4$ e $z\overline z=13$. In generale, per $z=a+ib$, somma e differenza con il coniugato sono $2a$ e $2ib$: la prima è reale e la seconda ha parte reale zero.
> L'uguaglianza $a-ib=-a-ib$ equivale a $a=-a$, dunque ad $a=0$. L'insieme cercato è l'asse immaginario, compreso lo zero. Il coniugio e l'opposto coincidono su questo asse, mentre in generale sono operazioni diverse.

Torna a [[#Esercizio 2 — Una riflessione che conserva le operazioni (coniugio)|esercizio 2]].

### Riscontro 3

> [!tip]- Riscontro 3
> L'inverso è $(2-i)/5$. Per il quoziente, $(1-3i)(2-i)=2-i-6i+3i^2=-1-7i$, quindi si ottiene $(-1-7i)/5$.
> I controlli danno $(2-i)(2+i)/5=1$ e $(-1-7i)(2+i)/5=(5-15i)/5=1-3i$. Quest'ultimo quoziente è la soluzione dell'equazione. Se ci fossero due soluzioni, moltiplicando entrambe le uguaglianze per $(2+i)^{-1}$ otterremmo lo stesso valore: la soluzione è unica.
> Con coefficiente zero, l'equazione $0z=c$ non ha soluzioni se $c\ne0$ e ha tutti i complessi come soluzioni se $c=0$. Non si può applicare la divisione per il coefficiente.

Torna a [[#Esercizio 3 — Trovare e controllare un inverso (divisione)|esercizio 3]].

### Riscontro 4

> [!tip]- Riscontro 4
> Poiché $z-2+i=z-(2-i)$, $A$ è la circonferenza di centro $2-i$ e raggio $3$. Il segno del centro si legge riscrivendo la differenza, non copiando il termine costante.
> Per $B$, i quadrati delle distanze sono $(a-1)^2+b^2$ e $(a+1)^2+b^2$. La loro uguaglianza dà $-2a=2a$, quindi $a=0$: è l'asse immaginario, asse del segmento che unisce $-1$ e $1$.
> Per un reale $z=x$ appartenere ad $A$ significa $(x-2)^2+1=9$, dunque $x=2\pm2\sqrt2$. Elevare al quadrato la distanza non introduce problemi perché entrambi i membri dell'uguaglianza iniziale sono non negativi.

Torna a [[#Esercizio 4 — Dalle formule ai luoghi (modulo e distanza)|esercizio 4]].

### Riscontro 5

> [!tip]- Riscontro 5
> Una scelta è: $-1-i$ ha modulo $\sqrt2$ e argomento $5\pi/4$; $-\sqrt3+i$ ha modulo $2$ e argomento $5\pi/6$; $-2i$ ha modulo $2$ e argomento $-\pi/2$; $3$ ha modulo $3$ e argomento $0$.
> Nel primo caso $b/a=1$ e $\arctan1=\pi/4$, ma il punto è nel terzo quadrante: occorre aggiungere $\pi$. Per $-2i$ vanno bene sia $-\pi/2$ sia $3\pi/2$, che differiscono di $2\pi$. Lo zero non distingue alcuna direzione, quindi non gli si assegna un argomento.

Torna a [[#Esercizio 5 — Stessa pendenza, direzione diversa (forma polare)|esercizio 5]].

### Riscontro 6

> [!tip]- Riscontro 6
> Il moltiplicatore ha modulo $2$ e argomento $2\pi/3$. Quindi $T$ ruota di $2\pi/3$ in senso antiorario e dilata del fattore $2$.
> Il calcolo cartesiano dà $T(1-i)=(\sqrt3-1)+i(1+\sqrt3)$. L'inversa moltiplica per $(-1-i\sqrt3)/4$, dunque ruota di $-2\pi/3$ e contrae del fattore $1/2$.
> Se $T(z)=z$, allora $(-2+i\sqrt3)z=0$. Il primo fattore è non nullo e invertibile; pertanto $z=0$. Nessun punto non nullo rimane fermo. La conservazione dell'origine è compatibile con questa conclusione.

Torna a [[#Esercizio 6 — Una macchina che ruota e dilata (prodotto in forma polare)|esercizio 6]].

### Riscontro 7

> [!tip]- Riscontro 7
> Il numero $\sqrt3-i$ ha modulo $2$ e argomento $-\pi/6$, quindi la sua sesta potenza è $2^6(\cos(-\pi)+i\sin(-\pi))=-64$. Il numero $1-i$ ha modulo $\sqrt2$ e argomento $-\pi/4$, quindi la dodicesima potenza è $(\sqrt2)^{12}(\cos(-3\pi)+i\sin(-3\pi))=-64$. Entrambi i risultati hanno modulo $64$, come previsto.
> Nel passo induttivo si moltiplica $\rho^n(\cos n\theta+i\sin n\theta)$ per $\rho(\cos\theta+i\sin\theta)$. È la formula del prodotto a trasformare i moduli in $\rho^{n+1}$ e gli angoli in $(n+1)\theta$: non si sta assumendo in anticipo la tesi per l'esponente successivo.

Torna a [[#Esercizio 7 — Una potenza senza espansioni (formula di De Moivre)|esercizio 7]].

### Riscontro 8

> [!tip]- Riscontro 8
> Il termine noto ha modulo $16$ e un argomento $\pi$. Le radici hanno modulo $2$ e angoli $\pi/4,3\pi/4,5\pi/4,7\pi/4$. Sono dunque $\sqrt2+i\sqrt2$, $-\sqrt2+i\sqrt2$, $-\sqrt2-i\sqrt2$, $\sqrt2-i\sqrt2$.
> Formano un quadrato centrato nell'origine. Per la prima radice, $(\sqrt2+i\sqrt2)^2=4i$ e $(4i)^2=-16$. La verifica di una soluzione non sostituisce la prova che siano tutte: quella viene dal conteggio e dalla completezza della formula generale.

Torna a [[#Esercizio 8 — Quattro radici da ricostruire (radici ennesime)|esercizio 8]].

### Riscontro 9

> [!tip]- Riscontro 9
> Ogni soluzione non nulla deve avere modulo $\sqrt[n]{|w|}$ e angolo $(\theta+2k\pi)/n$. Ogni candidato così costruito funziona per De Moivre. Due indici danno la stessa soluzione precisamente quando differiscono di un multiplo di $n$: lo si ottiene confrontando gli angoli modulo $2\pi$. Gli indici $0,\ldots,n-1$ forniscono quindi $n$ soluzioni distinte e tutti gli altri ripetono una di queste, per divisione euclidea dell'indice.
> Sostituire $\theta$ con $\theta+2h\pi$ sostituisce $k$ con $k+h$, quindi permuta la lista senza cambiarne l'insieme. Per $z^5=0$, $|z|^5=0$ forza $z=0$. Per $n=1$, la soluzione è semplicemente $z=w$. Per $n=2$ gli angoli delle due radici differiscono di $\pi$ e i moduli coincidono: sono opposte, perché aggiungere $\pi$ cambia segno a seno e coseno.

Torna a [[#Esercizio 9 — Dimostrare che non manca nulla (completezza e casi limite)|esercizio 9]].

### Riscontro 10

> [!tip]- Riscontro 10
> Tutte e quattro le affermazioni sono false. Per la prima basta $z=-1$: il modulo è $1$, il numero è $-1$. Per la seconda basta $z=2$: coniugato $2$, inverso $1/2$. L'uguaglianza corretta è $z^{-1}=\overline z/|z|^2$; coniugato e inverso coincidono esattamente quando $|z|=1$.
> Per la terza, $z=1$ e $w=-1$ danno $0\ne2$. Per la quarta, scegli $z=w=-1$: gli argomenti scelti sono entrambi $\pi$, ma il prodotto è $1$, con argomento scelto $0$. La somma $2\pi$ rappresenta la stessa direzione di $0$, quindi l'enunciato corretto è l'uguaglianza **modulo $2\pi$**, per fattori non nulli. Se uno è zero non si parla del suo argomento.

Torna a [[#Esercizio 10 — Quattro affermazioni da controllare (errori comuni)|esercizio 10]].

### Riscontro 11

> [!tip]- Riscontro 11
> Si ha $(1+i)^2=2i$, quindi $(1+i)^4=-4$. Moltiplicando $1+i$ per le quattro radici dell'unità otteniamo $1+i,-1+i,-1-i,1-i$.
> In generale la funzione $\zeta\mapsto z_0\zeta$ manda una radice dell'unità in una radice di $w$, perché $(z_0\zeta)^n=w$. È iniettiva: $z_0\zeta=z_0\eta$ implica $\zeta=\eta$ moltiplicando per $z_0^{-1}$. È suriettiva: per ogni $z$ con $z^n=w$, il quoziente $z/z_0$ ha potenza ennesima $1$. La funzione inversa è dunque $z\mapsto z/z_0$. L'ipotesi $w\ne0$ garantisce $z_0\ne0$ e rende lecita la divisione.

Torna a [[#Esercizio 11 — Da una radice a tutte le altre (radici dell'unità)|esercizio 11]].

### Riscontro 12

> [!tip]- Riscontro 12
> Per $z=(a,b)$ e $w=(c,d)$, i prodotti nei due ordini hanno coordinate $(ac-bd,ad+bc)$ e $(ca-db,cb+da)$, uguali per le proprietà reali. Per $u=(e,f)$, sviluppando $z(w+u)$ si ottiene $(ac-bd+ae-bf,ad+bc+af+be)$, che è la somma di $zw$ e $zu$. La seconda distributività segue dalla commutatività.
> Occorrono anche associatività e commutatività della somma, zero additivo e opposti (verificati coordinata per coordinata), associatività del prodotto (verificata sviluppando tre coppie), unità $(1,0)$ distinta da $(0,0)$, inverso di ogni elemento non nullo (costruito con il coniugato e il reale positivo $a^2+b^2$). La chiusura da sola dice soltanto che le formule danno operazioni interne: non impone alcuna di queste identità né l'esistenza degli inversi.

Torna a [[#Esercizio 12 — Verificare una struttura (assiomi del campo)|esercizio 12]].

Puoi considerare acquisito il capitolo quando sai passare da coordinate a distanze e angoli, scegliere la rappresentazione utile per l'operazione richiesta e giustificare il numero delle radici. Nel controllo finale, prova a spiegare senza formule memorizzate perché moltiplicare per $i$ ruota di un quarto di giro e perché dimezzare un angolo scelto non basta a trovare entrambe le radici quadrate.

---

[[Books/Geometria-I/01 - Il linguaggio della geometria e i campi|← 01 · Il linguaggio della geometria e i campi]] · [[Books/Geometria-I/00 - Indice e piano di studio|Indice e piano di studio]] · [[Books/Geometria-I/03 - Polinomi radici e fattorizzazioni|03 · Polinomi radici e fattorizzazioni →]]
