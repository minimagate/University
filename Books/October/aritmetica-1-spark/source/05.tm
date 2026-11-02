<chapter|Bézout e fattorizzazione in primi>

<\inbreve>
Euclide ci ha dato un numero: il MCD. Ora scopriamo che quel numero si può costruire combinando i due interi iniziali. Questa è l'identità di Bézout: ci permetterà di capire perché i primi si comportano in modo speciale e perché la fattorizzazione è unica.
</inbreve>

<section|Identità di Bézout: costruire il MCD>

Nel capitolo precedente abbiamo ottenuto <math|gcd(45,17)=1>. Possiamo ottenere proprio 1 moltiplicando 45 e 17 per coefficienti interi e sommando i risultati?

Con coefficienti positivi non ci riusciremmo: i prodotti sarebbero troppo grandi. Ma possiamo sottrarre. Le divisioni di Euclide contengono già le sottrazioni necessarie.

Partiamo dall'ultimo resto non nullo: <math|1=6-5>. Vogliamo eliminare, uno dopo l'altro, i numeri intermedi 6, 5 e 11, fino a lasciare solo 45 e 17.

Dalla divisione <math|11=6+5> ricaviamo <math|5=11-6>. Sostituendo:

<\equation*>
1=6-(11-6)=2·6-11.
</equation*>

Ora usiamo <math|6=17-11>:

<\equation*>
1=2(17-11)-11=2·17-3·11.
</equation*>

Infine <math|11=45-2·17>, quindi

<\equation*>
1=2·17-3(45-2·17)=8·17-3·45.
</equation*>

Controlliamo: <math|8·17-3·45=136-135=1>. Abbiamo espresso il MCD come <strong|combinazione intera> dei numeri iniziali. Questo procedimento si chiama <strong|risalita di Euclide>.

<\concetto|Identità di Bézout>
Se <math|a,b> sono interi non entrambi nulli e <math|d=gcd(a,b)>, esistono interi <math|u,v> tali che

<\equation*>
d=ua+vb.
</equation*>
</concetto>

Perché la risalita funziona sempre? Il primo resto è <math|a-qb>, quindi è una combinazione di <math|a,b>. Il resto successivo si ottiene sottraendo un multiplo del primo da <math|b>: è ancora una loro combinazione. Ripetendo il ragionamento, ogni resto è una combinazione dei numeri iniziali. Lo è dunque anche l'ultimo resto non nullo, cioè il MCD. Se uno dei numeri iniziali è zero, l'identità si ottiene direttamente scegliendo un coefficiente uguale a 1 o <math|-1>.

<section|Quali numeri possiamo ottenere combinando due interi?>

Con <math|a=6> e <math|b=9>, ogni numero <math|6x+9y> è multiplo di 3. Non potremo mai ottenere 4. Possiamo invece ottenere 3, perché <math|3=-6+9>. Moltiplicando questa uguaglianza otteniamo tutti i multipli di 3: per esempio <math|15=-5·6+5·9>.

La stessa idea vale in generale. Se <math|d=gcd(a,b)>, ogni <math|ax+by> è multiplo di <math|d>, perché <math|d> divide entrambi gli addendi. Viceversa, Bézout scrive <math|d=ua+vb>; moltiplicando per qualsiasi intero <math|k> otteniamo <math|kd=(ku)a+(kv)b>.

Dunque <strong|le combinazioni intere di <math|a,b> sono esattamente i multipli del loro MCD>. È questo il significato di Bézout che useremo nelle equazioni diofantee.

Un'altra conseguenza precisa il ruolo del MCD: ogni divisore comune di <math|a,b> divide <math|d>. Basta applicare la proprietà delle combinazioni a <math|d=ua+vb>. Non sappiamo soltanto che quel divisore è più piccolo del MCD: sappiamo che lo divide.

<section|Lemma di Euclide: quando possiamo togliere un fattore>

Sapere che un numero divide un prodotto non significa che divida uno dei fattori. Per esempio, <math|6∣4·3>, ma 6 non divide né 4 né 3.

Vediamo che cosa cambia se i numeri sono coprimi. Supponiamo di sapere che <math|3∣5t>. Vogliamo arrivare a <math|3∣t>, eliminando il fattore 5. Osserviamo che <math|1=2·3-5>. Moltiplicando per <math|t> otteniamo

<\equation*>
t=2·3t-5t.
</equation*>

Il primo termine è multiplo di 3 perché contiene 3. Il secondo lo è per ipotesi. Anche la loro differenza è quindi multipla di 3: quella differenza è proprio <math|t>.

La possibilità di scrivere 1 usando 3 e 5 viene da Bézout, perché <math|gcd(3,5)=1>. Possiamo perciò ripetere questa idea per qualsiasi coppia coprima.

<\anatomia|Perché cercare Bézout>
Vogliamo dimostrare <math|r∣t>. Una strada è scrivere <math|t> usando quantità che sappiamo essere multiple di <math|r>. Conosciamo già due quantità adatte: <math|rt>, per costruzione, e <math|st>, per ipotesi. Per combinarle fino a ottenere <math|t>, ci serve un'uguaglianza che combini <math|r,s> fino a ottenere 1. È esattamente ciò che offre Bézout quando <math|r,s> sono coprimi.
</anatomia>

<strong|Lemma di Euclide.> Se <math|gcd(r,s)=1> e <math|r∣st>, allora <math|r∣t>.

<em|Dimostrazione.> Per Bézout esistono interi <math|u,v> con <math|ur+vs=1>. Moltiplichiamo per <math|t>:

<\equation*>
t=urt+vst.
</equation*>

Il termine <math|urt=r(ut)> è multiplo di <math|r>. Anche <math|vst> lo è: l'ipotesi dice <math|st=rk> per un intero <math|k>, quindi <math|vst=r(vk)>. La somma è multipla di <math|r>, dunque <math|r∣t>.

<section|Numeri primi e fattorizzazione unica>

Un intero <math|p≥2> è <strong|primo> se i suoi unici divisori positivi sono 1 e <math|p>. Un numero <math|n≥2> che non è primo è <strong|composto>: possiamo scriverlo <math|n=ab> con <math|1‹a,b‹n>. Il numero 1 non è primo.

Il lemma appena dimostrato spiega la proprietà decisiva dei primi: <strong|se un primo divide un prodotto, divide almeno uno dei fattori>. Infatti, se <math|p∣ab> e <math|p∤a>, allora <math|gcd(p,a)=1>: l'unico altro divisore positivo possibile sarebbe <math|p>. Il lemma dà quindi <math|p∣b>.

<strong|Teorema fondamentale dell'aritmetica.> Ogni intero <math|n≥2> si scrive come prodotto di primi. I fattori sono unici, salvo il loro ordine.

L'<em|esistenza> è stata dimostrata con l'induzione forte nel capitolo 1: un numero composto si divide in fattori più piccoli, ai quali applichiamo l'ipotesi induttiva. Ora abbiamo gli strumenti per affrontare la seconda domanda: perché due scomposizioni devono dare gli stessi primi?

Per l'<em|unicità> dobbiamo confrontare due fattorizzazioni, non semplicemente trovarne una. Supponiamo

<\equation*>
p<rsub|1>p<rsub|2>⋯p<rsub|r>=q<rsub|1>q<rsub|2>⋯q<rsub|s>.
</equation*>

Il primo <math|p<rsub|1>> divide il prodotto a destra. Applicando ripetutamente la proprietà dei primi, divide uno dei <math|q<rsub|j>>. Ma <math|q<rsub|j>> è primo, quindi <math|p<rsub|1>=q<rsub|j>>. Possiamo mettere quei fattori per primi e cancellarli.

Ripetiamo sulle fattorizzazioni rimaste: ogni volta abbiniamo due primi uguali. Non possono restare primi soltanto da una parte, perché allora il loro prodotto dovrebbe essere 1, mentre ogni primo è almeno 2. Quindi le due liste contengono esattamente gli stessi primi, con le stesse ripetizioni.

<section|Divisori e mcm: leggere gli esponenti>

La fattorizzazione unica rende i divisori facili da descrivere. Per esempio <math|72=2<rsup|3>3<rsup|2>>. Un divisore positivo deve avere la forma <math|2<rsup|i>3<rsup|j>>, con <math|0≤i≤3> e <math|0≤j≤2>. Possiamo scegliere <math|i> in quattro modi e <math|j> in tre: i divisori positivi sono <math|4·3=12>.

<figura|@IMG(divisori72)|Ogni punto corrisponde a una scelta degli esponenti: andando a destra moltiplichiamo per 2, salendo moltiplichiamo per 3. La griglia contiene tutti i dodici divisori positivi di 72.>

In generale, per <math|N=p<rsub|1><rsup|α<rsub|1>>⋯p<rsub|k><rsup|α<rsub|k>>> con primi distinti, il numero dei divisori positivi è <math|(α<rsub|1>+1)⋯(α<rsub|k>+1)>. Per <math|N=1> c'è un solo divisore positivo, 1.

Il <strong|minimo comune multiplo>, scritto <math|<math-up|mcm>(a,b)> per <math|a,b›0>, è il più piccolo intero positivo multiplo di entrambi. Confrontiamo

<\equation*>
72=2<rsup|3>3<rsup|2>,<space|2em>90=2·3<rsup|2>·5.
</equation*>

Un divisore comune può usare soltanto i fattori presenti in entrambi: per ogni primo scegliamo l'esponente <em|minore>. Otteniamo <math|gcd(72,90)=2·3<rsup|2>=18>. Un multiplo comune deve contenere abbastanza fattori per entrambi: scegliamo l'esponente <em|maggiore>. Otteniamo <math|<math-up|mcm>(72,90)=2<rsup|3>3<rsup|2>5=360>.

Queste regole valgono in generale, inserendo esponente zero per i primi assenti. Poiché minimo e massimo di due esponenti sommano agli esponenti iniziali, segue

<\equation*>
gcd(a,b)·<math-up|mcm>(a,b)=ab<space|2em>(a,b›0).
</equation*>

<subsection|Per proseguire: i fattori primi in un fattoriale>

Quante volte compare 2 nella fattorizzazione di <math|19!>? I nove multipli di 2 fra 1 e 19 danno almeno un fattore ciascuno. I quattro multipli di 4 ne danno uno ulteriore; i due multipli di 8 un altro; il multiplo di 16 ancora uno. Il totale è <math|9+4+2+1=16>.

<figura|@IMG(legendre)|Ogni colonna conta i fattori 2 di un numero; ogni riga conta i multipli di una potenza di 2. Le stesse sedici unità vengono contate in due modi.>

Per un primo <math|p>, lo stesso conteggio dà la <strong|formula di Legendre>:

<\equation*>
v<rsub|p>(n!)=<big|sum><rsub|j≥1><around*|⌊|<frac|n|p<rsup|j>>|⌋>.
</equation*>

Qui <math|v<rsub|p>> indica l'esponente di <math|p> nella fattorizzazione e <math|⌊x⌋> il più grande intero non maggiore di <math|x>. La somma si ferma quando <math|p<rsup|j>›n>, perché da lì i termini sono zero.

<subsection|In sintesi>

<strong|Bézout> descrive quali numeri possiamo costruire come combinazioni intere. Il <strong|lemma di Euclide> ci permette di togliere un fattore coprimo. Applicato ai primi, rende possibile confrontare le fattorizzazioni e dimostrarne l'unicità. Gli esponenti primi diventano poi un modo per leggere divisori, MCD e mcm.

<\verifica|5>
<strong|1.> Trova un'identità di Bézout per 30 e 18. Usala per decidere se una combinazione intera di questi due numeri può valere 7 oppure 12.

<strong|2.> Quanti divisori positivi ha 180? Calcola anche <math|gcd(180,48)> e <math|<math-up|mcm>(180,48)> spiegando la scelta degli esponenti.
</verifica>

