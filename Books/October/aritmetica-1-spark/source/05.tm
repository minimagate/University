<chapter|Bézout e fattorizzazione in primi>

<\inbreve>
L'algoritmo di Euclide ci consegna il massimo comun divisore, ma le sue divisioni contengono più informazioni di quante ne abbiamo usate. Lette al contrario, ci mostrano come costruire il MCD combinando i due numeri di partenza. Da questa osservazione, l'identità di Bézout, discendono la proprietà speciale dei numeri primi e il fatto che ogni intero si scompone in primi in un modo solo.
</inbreve>

<section|Identità di Bézout: costruire il MCD>

Nel capitolo precedente abbiamo trovato <math|gcd(45,17)=1>. Viene spontaneo chiedersi se possiamo ottenere proprio quell'1 moltiplicando 45 e 17 per interi opportuni e sommando i risultati.

Con coefficienti positivi è impossibile, perché i prodotti sarebbero troppo grandi. Possiamo però anche sottrarre, e le sottrazioni giuste sono già nascoste nelle divisioni di Euclide. Il trucco è partire dal fondo, dall'ultima divisione con resto non nullo, e risalire eliminando uno dopo l'altro i resti intermedi 6, 5 e 11, finché restano soltanto 45 e 17.

L'ultima divisione, <math|6=1·5+1>, ci dice che <math|1=6-5>. La divisione precedente, <math|11=6+5>, ci permette di sostituire <math|5=11-6>, e otteniamo

<\equation*>
1=6-(11-6)=2·6-11.
</equation*>

Risalendo ancora usiamo <math|6=17-11>, e allora

<\equation*>
1=2(17-11)-11=2·17-3·11.
</equation*>

Infine la prima divisione dà <math|11=45-2·17>, e sostituendo arriviamo a

<\equation*>
1=2·17-3(45-2·17)=8·17-3·45.
</equation*>

Un controllo diretto conferma il risultato, perché <math|8·17-3·45=136-135=1>. Abbiamo scritto il MCD come <strong|combinazione intera> dei due numeri iniziali, e il procedimento che abbiamo seguito si chiama <strong|risalita di Euclide>.

<\concetto|Identità di Bézout>
Se <math|a,b> sono interi non entrambi nulli e <math|d=gcd(a,b)>, esistono interi <math|u,v> tali che

<\equation*>
d=ua+vb.
</equation*>
</concetto>

Per convincerci che la risalita funziona sempre, possiamo anche guardare le divisioni nell'ordine in cui le eseguiamo. Il primo resto è <math|a-qb>, quindi è una combinazione di <math|a> e <math|b>. Il secondo si ottiene togliendo da <math|b> un multiplo del primo, e così è ancora una combinazione di <math|a> e <math|b>. Andando avanti, ogni resto resta una combinazione dei numeri iniziali, e in particolare lo è l'ultimo resto non nullo, che è il MCD. Se uno dei due numeri è zero, infine, l'identità si scrive subito scegliendo come coefficiente 1 oppure <math|-1>.

<section|Quali numeri possiamo ottenere combinando due interi?>

Prendiamo <math|a=6> e <math|b=9>. Ogni numero della forma <math|6x+9y> è un multiplo di 3, e quindi, comunque scegliamo <math|x> e <math|y>, non otterremo mai 4. Possiamo invece ottenere 3, perché <math|3=-6+9>, e moltiplicando questa uguaglianza otteniamo qualsiasi multiplo di 3, come <math|15=-5·6+5·9>.

Lo stesso accade in generale. Se <math|d=gcd(a,b)>, ogni combinazione <math|ax+by> è un multiplo di <math|d>, perché <math|d> divide entrambi gli addendi. Viceversa Bézout ci dà <math|d=ua+vb>, e moltiplicando per un intero <math|k> qualsiasi otteniamo <math|kd=(ku)a+(kv)b>. Arriviamo così a una descrizione completa: <strong|le combinazioni intere di <math|a,b> sono esattamente i multipli del loro MCD>. È in questa forma che useremo Bézout per le equazioni diofantee.

Ne segue anche qualcosa sul ruolo del MCD. Ogni divisore comune di <math|a> e <math|b> divide la combinazione <math|ua+vb>, cioè divide <math|d>. Non solo, quindi, i divisori comuni sono più piccoli del MCD, ma ne sono addirittura divisori.

<section|Lemma di Euclide: quando possiamo togliere un fattore>

Se un numero divide un prodotto, non è detto che divida uno dei fattori. Per esempio <math|6∣4·3>, ma 6 non divide né 4 né 3, perché il 2 viene da un fattore e il 3 dall'altro.

Vediamo che cosa cambia quando i numeri in gioco sono coprimi, partendo da un caso concreto. Supponiamo di sapere che <math|3∣5t> e di voler concludere che <math|3∣t>, liberandoci del fattore 5. Notiamo che <math|1=2·3-5>, e moltiplicando per <math|t> otteniamo

<\equation*>
t=2·3t-5t.
</equation*>

Il primo termine è un multiplo di 3, perché contiene il fattore 3, e il secondo lo è per ipotesi. La loro differenza è quindi anch'essa un multiplo di 3, e quella differenza è proprio <math|t>.

L'uguaglianza <math|1=2·3-5> non è stata fortunata. Esiste perché 3 e 5 sono coprimi, ed è l'identità di Bézout per quella coppia. Possiamo quindi ripetere lo stesso ragionamento per qualsiasi coppia coprima.

<\anatomia|Perché cercare Bézout>
Vogliamo dimostrare <math|r∣t>, e una strada naturale è scrivere <math|t> usando quantità che sappiamo già essere multiple di <math|r>. Ne conosciamo due, cioè <math|rt>, che lo è per costruzione, e <math|st>, che lo è per ipotesi. Per combinarle fino a ottenere <math|t> ci serve un modo di combinare <math|r> e <math|s> fino a ottenere 1, e questo è esattamente ciò che Bézout ci offre quando <math|r> e <math|s> sono coprimi.
</anatomia>

<strong|Lemma di Euclide.> Se <math|gcd(r,s)=1> e <math|r∣st>, allora <math|r∣t>.

<em|Dimostrazione.> Per Bézout esistono interi <math|u,v> con <math|ur+vs=1>. Moltiplicando per <math|t> otteniamo

<\equation*>
t=urt+vst.
</equation*>

Il termine <math|urt=r(ut)> è un multiplo di <math|r>. Lo è anche <math|vst>, perché l'ipotesi dice che <math|st=rk> per qualche intero <math|k>, e quindi <math|vst=r(vk)>. La somma dei due termini è dunque un multiplo di <math|r>, cioè <math|r∣t>.

<section|Numeri primi e fattorizzazione unica>

Ricordiamo che un intero <math|p≥2> è <strong|primo> se i suoi unici divisori positivi sono 1 e <math|p>, e che un numero <math|n≥2> non primo si dice <strong|composto> e si scrive come <math|n=ab> con <math|1‹a,b‹n>. Il numero 1, per convenzione, non è primo.

Il lemma di Euclide spiega che cosa hanno di speciale i primi: <strong|se un primo divide un prodotto, divide almeno uno dei fattori>. Supponiamo infatti che <math|p∣ab> e che <math|p> non divida <math|a>. Allora <math|gcd(p,a)=1>, perché l'unico altro divisore positivo di <math|p> è <math|p> stesso, che non divide <math|a>, e il lemma ci dà <math|p∣b>.

<strong|Teorema fondamentale dell'aritmetica.> Ogni intero <math|n≥2> si scrive come prodotto di primi. I fattori sono unici, salvo il loro ordine.

L'<em|esistenza> l'abbiamo già dimostrata nel capitolo 1, con l'induzione forte, spezzando ogni numero composto in fattori più piccoli. Ora abbiamo gli strumenti per la seconda domanda, cioè perché due scomposizioni dello stesso numero debbano contenere gli stessi primi.

Per l'<em|unicità> non basta trovare una fattorizzazione, bisogna confrontarne due. Supponiamo allora che

<\equation*>
p<rsub|1>p<rsub|2>⋯p<rsub|r>=q<rsub|1>q<rsub|2>⋯q<rsub|s>.
</equation*>

Il primo <math|p<rsub|1>> divide il prodotto a destra, e applicando più volte la proprietà dei primi scopriamo che divide uno dei fattori <math|q<rsub|j>>. Siccome anche <math|q<rsub|j>> è primo, i suoi soli divisori positivi sono 1 e se stesso, e quindi <math|p<rsub|1>=q<rsub|j>>. Possiamo mettere questi due fattori uguali al primo posto e semplificarli.

Ripetendo il ragionamento sulle fattorizzazioni rimaste, abbiniamo ogni volta due primi uguali. Alla fine non possono avanzare primi da una parte sola, perché il loro prodotto dovrebbe valere 1, mentre ogni primo vale almeno 2. Le due liste contengono quindi gli stessi primi, ripetuti lo stesso numero di volte.

<section|Divisori e mcm: leggere gli esponenti>

Conoscere la fattorizzazione di un numero rende facile descriverne i divisori. Prendiamo <math|72=2<rsup|3>3<rsup|2>>. Per la fattorizzazione unica, un divisore positivo di 72 può contenere soltanto i primi 2 e 3, e non più volte di quante compaiano in 72, quindi ha la forma <math|2<rsup|i>3<rsup|j>> con <math|0≤i≤3> e <math|0≤j≤2>. L'esponente <math|i> si sceglie in quattro modi e <math|j> in tre, e i divisori positivi sono <math|4·3=12>.

<figura|@IMG(divisori72)|Ogni punto corrisponde a una scelta degli esponenti: andando a destra moltiplichiamo per 2, salendo moltiplichiamo per 3. La griglia contiene tutti i dodici divisori positivi di 72.>

In generale, se <math|N=p<rsub|1><rsup|α<rsub|1>>⋯p<rsub|k><rsup|α<rsub|k>>> con primi distinti, il numero dei divisori positivi è <math|(α<rsub|1>+1)⋯(α<rsub|k>+1)>. Per <math|N=1> il prodotto è vuoto e vale 1, e infatti 1 ha un solo divisore positivo.

Gli esponenti ci aiutano anche con il <strong|minimo comune multiplo>, che per <math|a,b›0> si scrive <math|<math-up|mcm>(a,b)> ed è il più piccolo intero positivo multiplo di entrambi. Confrontiamo

<\equation*>
72=2<rsup|3>3<rsup|2>,<space|2em>90=2·3<rsup|2>·5.
</equation*>

Un divisore comune può usare soltanto i fattori presenti in tutti e due i numeri, e per ogni primo prendiamo quindi l'esponente <em|minore>, ottenendo <math|gcd(72,90)=2·3<rsup|2>=18>. Un multiplo comune deve invece contenere abbastanza fattori per entrambi, e per ogni primo prendiamo l'esponente <em|maggiore>, ottenendo <math|<math-up|mcm>(72,90)=2<rsup|3>3<rsup|2>5=360>.

Le stesse regole valgono sempre, se assegniamo esponente zero ai primi che mancano. Siccome il minimo e il massimo di due esponenti hanno per somma gli esponenti di partenza, ne segue la relazione

<\equation*>
gcd(a,b)·<math-up|mcm>(a,b)=ab<space|2em>(a,b›0).
</equation*>

<subsection|Per proseguire: i fattori primi in un fattoriale>

Quante volte compare il fattore 2 nella scomposizione di <math|19!>? Fra 1 e 19 ci sono nove multipli di 2, e ciascuno porta almeno un fattore 2. I quattro multipli di 4 ne portano uno in più, i due multipli di 8 un altro ancora e il 16 un ultimo. In tutto i fattori 2 sono <math|9+4+2+1=16>.

<figura|@IMG(legendre)|Ogni colonna conta i fattori 2 di un numero; ogni riga conta i multipli di una potenza di 2. Le stesse sedici unità vengono contate in due modi.>

Lo stesso conteggio, per un primo <math|p> qualsiasi, dà la <strong|formula di Legendre>

<\equation*>
v<rsub|p>(n!)=<big|sum><rsub|j≥1><around*|⌊|<frac|n|p<rsup|j>>|⌋>,
</equation*>

dove <math|v<rsub|p>> indica l'esponente di <math|p> nella fattorizzazione e <math|⌊x⌋> il più grande intero non maggiore di <math|x>. La somma sembra infinita, ma da quando <math|p<rsup|j>›n> tutti i termini valgono zero.

<subsection|In sintesi>

L'identità di <strong|Bézout> dice quali numeri si possono costruire come combinazioni intere di due interi, cioè i multipli del loro MCD. Il <strong|lemma di Euclide> ci permette di eliminare un fattore coprimo, e applicato ai primi ci consente di confrontare due fattorizzazioni e dimostrare che sono uguali. Gli esponenti dei primi diventano così un modo semplice di leggere divisori, MCD e mcm.

<\verifica|5>
<strong|1.> Trova un'identità di Bézout per 30 e 18. Usala per decidere se una combinazione intera di questi due numeri può valere 7 oppure 12.

<strong|2.> Quanti divisori positivi ha 180? Calcola anche <math|gcd(180,48)> e <math|<math-up|mcm>(180,48)> spiegando la scelta degli esponenti.
</verifica>
