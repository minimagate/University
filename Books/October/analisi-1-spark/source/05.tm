<chapter|Funzioni elementari e lettura dei grafici>

<\inbreve>
Un buon grafico risponde a molte domande con un'occhiata. Quante soluzioni ha un'equazione, quali valori raggiunge una funzione, dove una curva sta sopra un'altra. Per fidarci di quello che vediamo, però, dobbiamo collegare il disegno alle definizioni, e lo facciamo con potenze, radici, valore assoluto, esponenziali e logaritmi. Lungo la strada scopriremo come il supremo ci permette di costruire davvero la radice di 2.
</inbreve>

<section|Simmetrie, periodicità e monotonia>

Alcune funzioni hanno grafici con simmetrie evidenti, e riconoscerle dimezza il lavoro. Una funzione è <strong|pari> se il suo dominio è simmetrico rispetto a 0 e <math|f(-x)=f(x)>, e allora il grafico è simmetrico rispetto all'asse verticale. È <strong|dispari> se il dominio è simmetrico e <math|f(-x)=-f(x)>, e in questo caso il grafico è simmetrico rispetto all'origine. Il quadrato è pari e il cubo è dispari. Una funzione dispari definita in 0 deve valere 0 in quel punto, perché <math|f(0)=-f(0)>.

Altre funzioni si ripetono. Una funzione su <math|ℝ> è <strong|periodica> se esiste <math|T›0> con <math|f(x+T)=f(x)> per ogni <math|x>, e il suo grafico si riproduce identico dopo una traslazione di <math|T>. Se <math|T> è un periodo lo sono anche <math|2T>, <math|3T> e così via, e quando esiste un periodo positivo più piccolo di tutti lo chiamiamo periodo minimo. Se il dominio non è tutto <math|ℝ>, chiediamo anche che spostandoci di <math|±T> si resti dentro il dominio.

La <strong|monotonia> descrive invece come cambia l'uscita quando l'entrata cresce. Prendiamo <math|x‹y> nel dominio. La funzione è debolmente crescente se <math|f(x)≤f(y)> e strettamente crescente se <math|f(x)‹f(y)>, mentre è debolmente decrescente se <math|f(x)≥f(y)> e strettamente decrescente se <math|f(x)›f(y)>. Conviene sempre dire «debolmente» o «strettamente», perché le due proprietà hanno conseguenze diverse.

Una funzione strettamente monotona, infatti, è iniettiva. Due entrate diverse sono ordinate in un verso o nell'altro, e quindi le loro uscite sono ordinate allo stesso modo e non possono coincidere. Una funzione solo debolmente monotona può invece avere tratti costanti. La stretta monotonia ci permette anche di passare da <math|f(u)‹f(v)> a <math|u‹v> e viceversa, con il verso rovesciato se la funzione è decrescente, purché gli argomenti stiano nel dominio considerato.

<section|Potenze, radici e completezza>

Per un intero <math|k≥1>, la potenza <math|x<rsup|k>> è il prodotto di <math|k> fattori uguali a <math|x>. Se <math|k> è pari, la funzione è pari, scende sulla semiretta negativa, sale su quella positiva e ha immagine <math|[0,+∞)>. Se <math|k> è dispari, la funzione è dispari, cresce strettamente su tutto <math|ℝ> e assume tutti i valori reali.

Questa differenza decide come si invertono. Una potenza dispari è già biettiva su <math|ℝ>, e la sua inversa è la radice dispari, definita per ogni reale. Una potenza pari va invece ristretta alla semiretta non negativa, e così la radice di indice pari dà sempre un numero non negativo. Per questo

<\equation*>
<sqrt|x<rsup|2>>=\|x\|,<space|2em><sqrt|x<rsup|2k>|2k>=\|x\|<space|1em>(k≥1),
</equation*>

mentre per una radice dispari il segno sopravvive, e per esempio <math|<sqrt|-27|3>=-3>. Graficamente, una funzione e la sua inversa si scambiano le coordinate, perché se <math|(a,b)> sta sul primo grafico, <math|(b,a)> sta sul secondo. I due grafici sono quindi l'uno il riflesso dell'altro rispetto alla retta <math|y=x>.

<subsection|Costruire la radice di 2: scegliere il passo giusto>

Finora abbiamo dato per scontato che le radici esistano. Vediamo come la completezza lo garantisce nel caso più semplice. Raccogliamo tutti i numeri non negativi il cui quadrato non supera 2:

<\equation*>
A={x∈ℝ:x≥0,x<rsup|2>≤2}.
</equation*>

L'insieme contiene 1 ed è maggiorato da 2, perché un numero maggiore di 2 ha quadrato maggiore di 4. Esiste quindi il supremo <math|c=sup A>, con <math|1≤c≤2>. Vogliamo dimostrare che <math|c<rsup|2>=2>. L'idea è che, se il quadrato fosse più piccolo o più grande di 2, potremmo spostare un po' <math|c> e contraddire il fatto che è la barriera migliore.

Supponiamo prima <math|c<rsup|2>‹2>, e chiamiamo <math|d=2-c<rsup|2>›0> il margine che resta sotto 2. Vorremmo fare un piccolo passo <math|h›0> verso destra senza che il quadrato superi 2. Per capire quanto possiamo spingerci, calcoliamo di quanto aumenta il quadrato:

<\equation*>
(c+h)<rsup|2>-c<rsup|2>=2ch+h<rsup|2>.
</equation*>

Questo aumento dipende da <math|h> in modo complicato, quindi lo stimiamo con qualcosa di più semplice. Se ci limitiamo a <math|h‹1> abbiamo <math|h<rsup|2>≤h>, e poiché <math|c≤2> abbiamo anche <math|2ch≤4h>. Allora l'aumento non supera <math|5h>, e per restare sotto 2 basta chiedere <math|5h‹d>. Scegliamo quindi un qualsiasi <math|h> con <math|0‹h‹min(1,d/5)>, e otteniamo

<\equation*>
(c+h)<rsup|2>≤c<rsup|2>+5h‹c<rsup|2>+d=2.
</equation*>

Il numero <math|c+h> appartiene dunque ad <math|A>, ma è più grande di <math|c>, che doveva essere un maggiorante di <math|A>. È impossibile, quindi il quadrato di <math|c> non può stare sotto 2.

Supponiamo ora <math|c<rsup|2>›2>, e chiamiamo <math|d=c<rsup|2>-2›0> il margine dall'altra parte. Questa volta cerchiamo una barriera più bassa <math|c-h> che resti positiva e abbia ancora quadrato maggiore di 2, così da stare ancora sopra tutto l'insieme. Poiché <math|c≥1>, per avere <math|c-h›0> basta <math|h‹1/2>. Il quadrato diminuisce di

<\equation*>
c<rsup|2>-(c-h)<rsup|2>=2ch-h<rsup|2>≤2ch≤4h,
</equation*>

e se chiediamo anche <math|4h‹d> la diminuzione non basta a farlo scendere fino a 2. Con <math|0‹h‹min(1/2,d/4)> troviamo infatti

<\equation*>
(c-h)<rsup|2>≥c<rsup|2>-4h›c<rsup|2>-d=2.
</equation*>

Ogni <math|x∈A> soddisfa allora <math|x<rsup|2>≤2‹(c-h)<rsup|2>>, e poiché i due numeri sono non negativi ne segue <math|x‹c-h>. Così <math|c-h> sarebbe un maggiorante più piccolo del supremo, un'altra contraddizione.

Resta una sola possibilità, <math|c<rsup|2>=2>, e il numero <math|c> è unico perché il quadrato è strettamente crescente sui non negativi. Le altre radici si costruiscono nello stesso modo. La completezza fornisce il candidato, e la fattorizzazione della differenza di potenze permette di stimare quanto cambia una potenza quando spostiamo un po' la base.

<section|Valore assoluto e trasformazioni>

Il valore assoluto <math|\|x\|> vale <math|x> per <math|x≥0> e <math|-x> per <math|x‹0>, e misura la distanza di <math|x> da 0. Allo stesso modo <math|\|x-a\|> misura la distanza da <math|a>, e la disuguaglianza <math|\|x-a\|‹r>, con <math|r›0>, dice che <math|x> sta a meno di <math|r> da <math|a>, cioè che <math|a-r‹x‹a+r>. Questa traduzione fra distanze e intervalli sarà il linguaggio di base dei limiti.

Useremo spesso anche la disuguaglianza triangolare <math|\|u+v\|≤\|u\|+\|v\|>. Per ricavarla basta sommare membro a membro <math|-\|u\|≤u≤\|u\|> e <math|-\|v\|≤v≤\|v\|>.

Per capire come una formula trasforma un grafico, il modo più sicuro è seguire un suo punto. Supponiamo che <math|f(a)=b>. Il grafico di <math|f(x)+c> passa per <math|(a,b+c)>, quindi è lo stesso grafico spostato in verticale di <math|c>. Il grafico di <math|f(x-c)>, invece, passa per <math|(a+c,b)>, perché per avere <math|x-c=a> dobbiamo prendere <math|x=a+c>. Il grafico si sposta quindi a destra di <math|c>, e non a sinistra come il segno meno potrebbe far pensare.

Con lo stesso ragionamento si vede che <math|f(-x)> riflette il grafico rispetto all'asse verticale e <math|-f(x)> rispetto all'asse orizzontale. Il valore assoluto agisce in due modi diversi a seconda di dove lo mettiamo. In <math|\|f(x)\|> le parti del grafico che stanno sotto l'asse orizzontale vengono ribaltate verso l'alto. In <math|f(\|x\|)> teniamo il ramo destro del grafico e lo ricopiamo a sinistra, ottenendo una funzione pari.

<figura|@IMG(trasformazioni)|Una trasformazione esterna cambia l'uscita; una trasformazione interna cambia il punto in cui leggiamo la funzione.>

<section|Equazioni, disequazioni, immagine e controimmagine>

Risolvere <math|f(x)=λ> significa tagliare il grafico con la retta orizzontale <math|y=λ> e leggere le ascisse dei punti d'incontro. In questa immagine l'iniettività dice che ogni retta orizzontale incontra il grafico al massimo una volta, e la suriettività che lo incontra almeno una volta per ogni livello dell'insieme di arrivo. Per una disequazione come <math|f(x)≤λ> raccogliamo invece le ascisse dei punti che stanno sotto la retta o su di essa.

Per esempio, l'equazione <math|(x-3)<rsup|2>=λ> non ha soluzioni se <math|λ‹0>, ne ha una sola se <math|λ=0> e due se <math|λ›0>, cioè <math|3±<sqrt|λ>>. Basta pensare a una parabola con il vertice in <math|(3,0)> e a una retta orizzontale che sale.

<\guidato|Confrontare una radice e una retta>
Risolviamo <math|<sqrt|x+6>›x>. La radice esiste solo per <math|x≥-6>, quindi partiamo da questa condizione.

Viene la tentazione di elevare subito al quadrato, ma è un'operazione sicura solo quando entrambi i membri sono non negativi. Separiamo quindi i casi secondo il segno di <math|x>. Per <math|-6≤x‹0> la disuguaglianza è vera senza fare conti, perché la radice non è mai negativa mentre il membro destro lo è.

Per <math|x≥0> entrambi i membri sono non negativi, e allora elevare al quadrato dà una disuguaglianza equivalente:

<\equation*>
x+6›x<rsup|2>⇔(x-3)(x+2)‹0.
</equation*>

Insieme alla condizione <math|x≥0> questo dà <math|0≤x‹3>. Unendo i due casi otteniamo la soluzione <math|[-6,3)>. Se avessimo elevato al quadrato senza separare i casi avremmo rischiato di introdurre soluzioni estranee.
</guidato>

<figura|@IMG(radice-retta)|Il punto con ascissa <math|-2> appartiene al ramo negativo della parabola completa, ma quel ramo non fa parte della radice principale.>

Anche immagine e controimmagine si leggono sul grafico, in direzioni opposte. Per l'immagine di un intervallo partiamo dall'asse orizzontale e raccogliamo tutte le altezze toccate dal grafico sopra quell'intervallo. Per la controimmagine partiamo dalle altezze e raccogliamo tutte le ascisse ammesse che le producono.

Prendiamo <math|f(x)=\|x<rsup|2>-4\|> sull'intervallo <math|[1,4]>. Muovendoci da 1 a 4 il grafico scende da 3 a 0, che raggiunge in <math|x=2>, e poi sale fino a 12. Quindi <math|f([1,4])=[0,12]>. Se avessimo calcolato la funzione soltanto agli estremi avremmo trovato 3 e 12, perdendo il minimo che sta all'interno.

Per la controimmagine <math|f<rsup|-1>([-2,1])> la parte negativa dell'intervallo non conta, perché <math|f> non è mai negativa. Dobbiamo quindi risolvere <math|\|x<rsup|2>-4\|≤1>, cioè <math|3≤x<rsup|2>≤5>, e la risposta è <math|[-<sqrt|5>,-<sqrt|3>]∪[<sqrt|3>,<sqrt|5>]>.

<section|Esponenziale e logaritmo: le proprietà che useremo>

Esponenziali e logaritmi compaiono in molti esercizi del corso, quindi richiamiamo qui le loro proprietà. Per <math|a›0> le potenze con esponente razionale si definiscono con le radici e, per esponenti negativi, con i reciproci. Per passare a un esponente reale qualsiasi, quando <math|a›1>, si può usare ancora la completezza e porre

<\equation*>
a<rsup|x>=sup{a<rsup|q>:q∈ℚ,q≤x}.
</equation*>

L'idea è che le potenze razionali con esponente sempre più vicino a <math|x> si avvicinano a un valore, e il supremo lo individua. Giustificare tutti i dettagli di questa costruzione richiederebbe però altre dimostrazioni, quindi qui assumiamo le proprietà fondamentali. Per <math|a›1> valgono <math|a<rsup|x+y>=a<rsup|x>a<rsup|y>> e <math|a<rsup|0>=1>, la funzione è strettamente crescente e la sua immagine è <math|(0,+∞)>. Per <math|0‹a‹1> poniamo <math|a<rsup|x>=(1/a)<rsup|-x>>, e otteniamo una funzione strettamente decrescente. Per <math|a=1> la funzione è costante.

Quando <math|a≠1> l'esponenziale è quindi biettivo da <math|ℝ> a <math|(0,+∞)>, e la sua inversa è il <strong|logaritmo in base <math|a>>. Dire <math|log<rsub|a>x=y> significa dire <math|a<rsup|y>=x>, e questo ha senso soltanto per <math|x›0>. Dalle proprietà delle potenze seguono le regole, valide per argomenti positivi,

<\equation*>
log<rsub|a>(uv)=log<rsub|a>u+log<rsub|a>v,<space|1em>log<rsub|a>(u<rsup|r>)=r log<rsub|a>u.
</equation*>

Scriveremo semplicemente <math|log x> per il logaritmo in base <math|e>, il numero che costruiremo con le successioni. Continuità e limiti di queste funzioni li studieremo dopo aver definito i limiti.

<\verifica|5>
<strong|1.> Quante soluzioni ha <math|\|x<rsup|2>-4\|=λ> al variare del reale <math|λ>? Considera separatamente <math|λ=0> e <math|λ=4>.

<strong|2.> Risolvi <math|log(3x+1)=log(x+5)>, dichiarando prima il dominio. Spiega quale proprietà permette di uguagliare gli argomenti.
</verifica>
