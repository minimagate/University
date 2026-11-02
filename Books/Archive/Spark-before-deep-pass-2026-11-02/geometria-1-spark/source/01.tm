<chapter|Insiemi, applicazioni e campi>

Vogliamo descrivere oggetti diversi con un linguaggio comune. Un punto del piano è una coppia di numeri; una funzione associa numeri ad altri numeri; più avanti una matrice assocerà vettori a vettori. Cominciamo dalle parole che rendono precise queste descrizioni.

<section|Insiemi e uguaglianza: guardare gli elementi>

Prendiamo <math|X={1,2,3}> e <math|Y={2,3,4}>. Il simbolo <math|2∈X> significa che 2 appartiene a <math|X>; <math|4∉X> dice che 4 non vi appartiene. L'<strong|intersezione> <math|X∩Y={2,3}> raccoglie gli elementi comuni; l'<strong|unione> <math|X∪Y={1,2,3,4}> quelli presenti in almeno uno dei due insiemi. «Oppure» comprende anche il caso in cui un elemento stia in entrambi. L'insieme senza elementi si indica con <math|∅>.

Scriviamo <math|A⊆B> quando ogni elemento di <math|A> appartiene a <math|B>. L'inclusione permette l'uguaglianza. Per mostrare <math|A⊆B> non basta controllare alcuni esempi: prendiamo un elemento qualsiasi di <math|A> e mostriamo che appartiene a <math|B>. Per provare <math|A=B> facciamo questo lavoro nelle due direzioni.

Per esempio, per tre insiemi vale

<\equation*>
X∩(Y∪Z)=(X∩Y)∪(X∩Z).
</equation*>

Perché? A sinistra chiediamo di stare in <math|X> e, inoltre, in <math|Y> oppure in <math|Z>. Se un elemento soddisfa queste richieste, sta in <math|X∩Y> oppure in <math|X∩Z>: appartiene al membro destro. Viceversa, un elemento del membro destro sta in una di queste due intersezioni; in entrambi i casi sta in <math|X> e in almeno uno fra <math|Y,Z>. Appartiene quindi al membro sinistro. Abbiamo provato entrambe le inclusioni.

<figura|@IMG(distributiva)|Le due espressioni selezionano la stessa zona. La dimostrazione spiega perché questo accade per qualsiasi insieme, anche quando non possiamo disegnarlo.>

Vale anche <math|X∪(Y∩Z)=(X∪Y)∩(X∪Z)>. Se un elemento sta in <math|X>, soddisfa entrambi i requisiti a destra. Se non sta in <math|X>, a sinistra deve stare sia in <math|Y> sia in <math|Z>, esattamente come a destra.

Il <strong|prodotto cartesiano> <math|X×Y> contiene le coppie ordinate <math|(x,y)> con <math|x∈X> e <math|y∈Y>. L'ordine conta: <math|(1,2)≠(2,1)>. Il piano <math|ℝ<rsup|2>=ℝ×ℝ> è l'insieme delle coppie reali; lo spazio <math|ℝ<rsup|3>> quello delle terne. La coppia <math|((x,y),z)> e la terna <math|(x,y,z)> hanno forme diverse, ma le identifichiamo mediante la corrispondenza che toglie le parentesi interne.

<section|Applicazioni, iniettività e suriettività>

Consideriamo <math|f:ℝ→ℝ>, <math|f(x)=x<rsup|2>>. A ogni reale assegna un unico reale. L'insieme di partenza è il <strong|dominio>, quello dichiarato all'arrivo è il <strong|codominio>. I valori effettivamente raggiunti formano l'<strong|immagine>, qui <math|[0,+∞)>. Codominio e immagine possono dunque essere diversi.

<\concetto|Applicazione>
Un'applicazione <math|f:X→Y> assegna a ogni <math|x∈X> uno e un solo elemento <math|f(x)∈Y>. Dominio, codominio e assegnazione fanno parte della definizione.
</concetto>

Il <strong|grafico> è l'insieme delle coppie <math|(x,f(x))> nel prodotto <math|X×Y>. Una relazione <math|Γ⊆X×Y> è il grafico di una funzione precisamente quando contiene, per ogni <math|x∈X>, una sola coppia con prima voce <math|x>. Il simbolo <math|∀> significa «per ogni», <math|∃> «esiste», <math|∃!> «esiste uno e un solo»: la richiesta è <math|∀x∈X<space|0.5em>∃!y∈Y> con <math|(x,y)∈Γ>.

Una funzione è <strong|iniettiva> quando non confonde elementi diversi: <math|f(x)=f(x')> implica <math|x=x'>. Non lo è se troviamo due elementi distinti con la stessa immagine. Il quadrato su <math|ℝ> non è iniettivo, perché <math|f(1)=f(-1)>.

È <strong|suriettiva> quando raggiunge ogni elemento del codominio: per ogni <math|y∈Y> esiste almeno un <math|x∈X> con <math|f(x)=y>. Il quadrato <math|ℝ→ℝ> non è suriettivo: non raggiunge <math|-1>. Se cambiamo il codominio in <math|[0,+∞)>, diventa suriettivo; restringendo anche il dominio a <math|[0,+∞)>, diventa iniettivo. Una funzione insieme iniettiva e suriettiva si dice <strong|biiettiva>.

<figura|@IMG(funzioni,0.95)|Ogni elemento del dominio deve avere una sola freccia in uscita. L'iniettività riguarda le frecce che arrivano allo stesso punto; la suriettività richiede di raggiungere tutti i punti del codominio.>

<section|Composizione e inversa: tornare al punto di partenza>

Se <math|f:X→Y> e <math|g:Y→Z>, la <strong|composizione> <math|g∘f> applica prima <math|f>, poi <math|g>: <math|(g∘f)(x)=g(f(x))>. Le parentesi non cambiano il risultato di tre applicazioni compatibili, perché entrambe le composizioni danno <math|h(g(f(x)))>. L'<strong|identità> <math|<math-up|id><rsub|X>> lascia fermo ogni elemento di <math|X>.

Per <math|f:ℝ→ℝ>, <math|f(x)=2x+1>, possiamo recuperare <math|x> da <math|y>: sottraiamo 1 e dividiamo per 2. La funzione <math|g(y)=(y-1)/2> soddisfa <math|g(f(x))=x> e <math|f(g(y))=y>. Si chiama <strong|inversa> di <math|f> e si indica con <math|f<rsup|-1>>: qui l'esponente non significa reciproco del valore.

In generale, se <math|f> è biiettiva, per definire <math|f<rsup|-1>(y)> cerchiamo l'elemento <math|x> con <math|f(x)=y>. La suriettività assicura che esista; l'iniettività che sia unico. Questa scelta definisce una funzione e dà le due identità

<\equation*>
f<rsup|-1>∘f=<math-up|id><rsub|X>,<space|2em>f∘f<rsup|-1>=<math-up|id><rsub|Y>.
</equation*>

Viceversa, se una funzione <math|g> soddisfa entrambe le identità, <math|f(x)=f(x')> dà <math|g(f(x))=g(f(x'))>, dunque <math|x=x'>; inoltre ogni <math|y> è <math|f(g(y))>, dunque è raggiunto. Le due identità caratterizzano quindi l'invertibilità. L'inversa è unica: se anche <math|h> è inversa, <math|g=g∘(f∘h)=(g∘f)∘h=h>.

<section|Campi: quali regole servono per calcolare?>

L'equazione <math|2x=1> ha soluzione nei razionali, ma non negli interi. La possibilità di dividere dipende dunque dall'insieme in cui lavoriamo. Un'<strong|operazione interna> su <math|K> è una funzione <math|K×K→K>: combina due elementi e rimane in <math|K>.

<\concetto|Campo>
Un campo <math|K> possiede due operazioni interne, somma e prodotto, con elementi <math|0≠1>, e soddisfa le seguenti regole per tutti i suoi elementi.

<\itemize>


<item>La somma è associativa e commutativa: <math|(a+b)+c=a+(b+c)> e <math|a+b=b+a>. Lo zero è neutro, <math|a+0=a>; ogni <math|a> ha un opposto <math|-a> con <math|a+(-a)=0>.


<item>Il prodotto è associativo e commutativo: <math|(ab)c=a(bc)> e <math|ab=ba>. L'unità è neutra, <math|a·1=a>; ogni <math|a≠0> ha un inverso <math|a<rsup|-1>> con <math|aa<rsup|-1>=1>.


<item>Vale la distributività: <math|a(b+c)=ab+ac>. Per commutatività vale anche <math|(a+b)c=ac+bc>.
</itemize>
</concetto>

La somma con queste proprietà forma quello che si chiama un <strong|gruppo abeliano>, cioè commutativo. Lo stesso vale per il prodotto sugli elementi non nulli. Sono campi <math|ℚ> e <math|ℝ>; <math|ℤ> non lo è perché manca, per esempio, l'inverso di 2. Nel prossimo capitolo costruiremo <math|ℂ>.

Queste regole permettono di dimostrare le proprietà del calcolo, senza dipendere da come sono fatti gli elementi. Per esempio, da <math|a+b=a+c> sommiamo <math|-a> ai due membri e otteniamo <math|b=c>: è la cancellazione nella somma.

Gli elementi richiesti dagli assiomi sono unici. Se <math|e,e'> sono entrambi neutri della somma, la somma <math|e+e'> vale <math|e'> perché <math|e> è neutro e vale <math|e> perché <math|e'> è neutro: perciò coincidono. Se <math|a+b=a+c=0>, la cancellazione dà <math|b=c>, dunque l'opposto è unico. Se <math|ab=ac=1>, abbiamo

<\equation*>
b=b·1=b(ac)=(ba)c=1·c=c:
</equation*>

anche l'inverso è unico. L'unità moltiplicativa è unica con lo stesso ragionamento usato per il neutro additivo.

Dimostriamo inoltre <math|a·0=0>. La distributività dà <math|a·0=a(0+0)=a·0+a·0>; cancellando un addendo otteniamo il risultato. Lo zero non può avere inverso perché ogni suo prodotto è zero e <math|0≠1>. Se <math|ab=0> e <math|a≠0>, moltiplicando per <math|a<rsup|-1>> ricaviamo <math|b=0>. È la <strong|legge di annullamento del prodotto>: un prodotto nullo ha almeno un fattore nullo.

<section|Un campo piccolo: due elementi>

Separiamo i numeri interi in pari e dispari. La somma di due dispari è pari; il prodotto di due dispari è dispari. Indichiamo queste due possibilità con 0 e 1. Otteniamo il campo <math|<math-up|F><rsub|2>={0,1}>, con

<\equation*>
0+0=0,<space|1em>0+1=1+0=1,<space|1em>1+1=0,
</equation*>

<\equation*>
0·0=0·1=1·0=0,<space|2em>1·1=1.
</equation*>

Le proprietà associative e distributive discendono da quelle delle operazioni sugli interi, passando alla parità. Entrambi gli elementi hanno un opposto (ognuno è opposto di sé stesso); l'unico elemento non nullo è 1, inverso di sé stesso. Sono soddisfatti tutti gli assiomi.

In questo campo <math|2=1+1=0>. Perciò da <math|2a=0> non possiamo concludere <math|a=0>, né dividere per 2. Negli spazi vettoriali il campo degli scalari andrà sempre dichiarato.

<\verifica|1>
<strong|1.1.> Studia iniettività e suriettività di <math|f:ℝ→[0,+∞)>, <math|f(x)=x<rsup|2>>. Trova una restrizione del dominio che la renda biiettiva e scrivine l'inversa.

<strong|1.2.> Nei reali, da <math|a=-a> segue <math|a=0>. Spiega il passaggio e decidi se la conclusione vale anche in <math|<math-up|F><rsub|2>>.
</verifica>
