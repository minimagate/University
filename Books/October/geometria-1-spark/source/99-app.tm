<appendix|Soluzioni ragionate>

Prima di leggere una soluzione, prova almeno a scegliere il primo passo e a chiederti perché proprio quello. Le soluzioni che seguono spiegano le scelte, svolgono i passaggi e controllano sempre il risultato. Ogni numero richiama il capitolo e l'esercizio corrispondenti.

<section|Insiemi, applicazioni e campi>

<strong|1.1.> Il quadrato manda sia 1 sia <math|-1> nello stesso valore 1, quindi su <math|ℝ> non è iniettivo. È invece suriettivo sul codominio <math|[0,+∞)>, perché per ogni <math|y≥0> il numero <math|x=<sqrt|y>> soddisfa <math|x<rsup|2>=y>.

Per renderlo iniettivo restringiamo il dominio a <math|[0,+∞)>. Se <math|x<rsup|2>=x'<rsup|2>> con <math|x,x'≥0>, allora <math|(x-x')(x+x')=0>. Se <math|x+x'=0>, due numeri non negativi con somma nulla sono entrambi zero; altrimenti deve essere <math|x-x'=0>. In tutti e due i casi <math|x=x'>.

La restrizione è quindi biiettiva, e la sua inversa è <math|g(y)=<sqrt|y>>. Controlliamo le due composizioni. Da una parte <math|(<sqrt|y>)<rsup|2>=y> per ogni <math|y≥0>, dall'altra <math|<sqrt|x<rsup|2>>=x> per ogni <math|x≥0>. Questa seconda uguaglianza sarebbe falsa per <math|x‹0>, ed è il motivo per cui abbiamo ristretto il dominio.

<strong|1.2.> Partendo da <math|a=-a> sommiamo <math|a> a entrambi i membri e otteniamo <math|2a=0>. Nei reali il numero 2 non è nullo, quindi possiamo moltiplicare per <math|1/2> e concludere <math|a=0>.

In <math|<math-up|F><rsub|2>> la conclusione non vale. Lì <math|1+1=0>, cioè <math|1=-1>, e quindi <math|a=1> soddisfa <math|a=-a> senza essere zero. Il passaggio che si rompe è la divisione per 2, perché in questo campo 2 è uguale a zero.

<section|Numeri complessi>

<strong|2.1.> Per rendere reale il denominatore moltiplichiamo numeratore e denominatore per il coniugato <math|1-i>:

<\equation*>
<frac|2+i|1+i>=<frac|(2+i)(1-i)|2>=<frac|2-2i+i-i<rsup|2>|2>=<frac|3-i|2>.
</equation*>

Per verificare moltiplichiamo il risultato per il denominatore, ottenendo <math|((3-i)/2)(1+i)=(3+3i-i-i<rsup|2>)/2=(4+2i)/2=2+i>, che è il numeratore di partenza. Notiamo che non basta cambiare il segno di <math|i> nel denominatore, perché il coniugato va moltiplicato anche per il numeratore.

<strong|2.2.> Per <math|z<rsup|4>=1> le radici hanno modulo 1 e argomenti <math|kπ/2>, con <math|k=0,1,2,3>. Sono quindi <math|1,i,-1,-i>, i vertici di un quadrato con i vertici sugli assi.

Per <math|z<rsup|4>=-1> il modulo è ancora 1, ma l'argomento di partenza è <math|π>, e gli argomenti delle radici sono <math|(π+2kπ)/4=π/4+kπ/2>. Il quadrato è lo stesso di prima ruotato di <math|π/4>, e non di <math|π>, perché l'angolo del termine noto viene diviso per 4.

Le radici sono i quattro numeri <math|(±1±i)/<sqrt|2>>, con i due segni scelti in modo indipendente. Per controllarle basta osservare che il quadrato di ciascuno è <math|i> oppure <math|-i>, e quindi la quarta potenza è <math|-1>. La formula generale ci assicura che non ce ne sono altre.

<section|Polinomi e radici>

<strong|3.1.> Cominciamo fattorizzando il polinomio dentro la parentesi, <math|z<rsup|2>+1=(z-i)(z+i)>. Il polinomio dato è allora <math|(z-i)<rsup|3>(z+i)<rsup|3>>, che ha due radici distinte, <math|i> e <math|-i>, entrambe di molteplicità 3. La somma delle molteplicità è 6, uguale al grado, come deve essere.

Per la seconda domanda usiamo la simmetria dei polinomi reali. Se un polinomio reale avesse le radici <math|i>, <math|2i> e 1, dovrebbe avere anche le coniugate <math|-i> e <math|-2i>. Avrebbe quindi almeno cinque radici distinte, troppe per un polinomio di grado 3, e la richiesta è impossibile.

<strong|3.2.> Poiché i coefficienti devono essere reali, insieme a <math|2+i> deve comparire la coniugata <math|2-i>, con la stessa molteplicità 2. Queste due radici doppie occupano già tutto il grado 4, quindi non c'è posto per altre radici. Il prodotto dei due fattori lineari è <math|(z-(2+i))(z-(2-i))=z<rsup|2>-4z+5>, e il polinomio cercato è

<\equation*>
P(z)=(z<rsup|2>-4z+5)<rsup|2>=z<rsup|4>-8z<rsup|3>+26z<rsup|2>-40z+25.
</equation*>

È reale, ha grado 4 e coefficiente direttivo 1. Le radici sono determinate, e la richiesta che il polinomio sia monico fissa anche la costante davanti, quindi il polinomio è unico.

<section|Spazi vettoriali e sottospazi>

<strong|4.1.> La valutazione nel punto 1 rispetta entrambe le operazioni, perché <math|(p+q)(1)=p(1)+q(1)> e <math|(αp)(1)=αp(1)>. Se <math|p(1)=q(1)=0>, anche la somma vale zero in 1, e lo stesso vale per ogni multiplo. Il polinomio nullo appartiene all'insieme, quindi i tre controlli del criterio sono superati e l'insieme è un sottospazio.

L'insieme dei polinomi con <math|p(1)=2> invece non contiene il polinomio nullo, e quindi non è un sottospazio. Contiene per esempio il polinomio costante 2, ma non il suo multiplo per zero.

<strong|4.2.> L'equazione ci permette di ricavare <math|z=-x-y>, lasciando liberi <math|x=s> e <math|y=t>. Ogni vettore di <math|H> si scrive allora come

<\equation*>
(s,t,-s-t)=s(1,0,-1)+t(0,1,-1).
</equation*>

Questa formula non produce vettori estranei, perché la somma delle tre componenti è sempre zero. Con <math|s=t=1> otteniamo <math|(1,1,-2)>, che quindi appartiene a <math|H>, e il controllo diretto <math|1+1-2=0> lo conferma.

<section|Span, indipendenza e basi>

<strong|5.1.> Il secondo vettore è il doppio del primo, quindi ogni combinazione è un multiplo di <math|(1,2)>:

<\equation*>
α(1,2)+β(2,4)=(α+2β)(1,2).
</equation*>

Lo span è la retta <math|{t(1,2):t∈ℝ}>. I due vettori sono dipendenti, perché la relazione <math|2(1,2)-(2,4)=0> ha coefficienti non nulli. È questa dipendenza a permettere scritture diverse dello stesso vettore, per esempio <math|(3,6)=3(1,2)+0(2,4)> e <math|(3,6)=1(1,2)+1(2,4)>.

<strong|5.2.> Cerchiamo <math|α,β> con <math|α(1,1)+β(1,-1)=(5,-1)>, cioè <math|α+β=5> e <math|α-β=-1>. Sommando le due equazioni troviamo <math|2α=4>, quindi <math|α=2> e <math|β=3>. Le coordinate sono <math|(2,3)>, e infatti <math|2(1,1)+3(1,-1)=(5,-1)>.

Una famiglia che contiene il vettore nullo non può mai essere una base. Basta prendere coefficiente 1 per lo zero e coefficiente 0 per tutti gli altri vettori per ottenere una relazione non banale, quindi la famiglia non è indipendente.

<section|Dimensione e completamento>

<strong|6.1.> Per il teorema del fattore, la condizione <math|p(2)=0> equivale a scrivere <math|p=(X-2)q> con <math|q> di grado al più 1, zero compreso. Se poniamo <math|q=a+bX>, otteniamo

<\equation*>
p=a(X-2)+bX(X-2),
</equation*>

e quindi <math|X-2> e <math|X(X-2)> generano <math|W>. Sono anche indipendenti. In una relazione <math|a(X-2)+bX(X-2)=0> il coefficiente di <math|X<rsup|2>> è <math|b>, che deve quindi essere zero, e poi in <math|a(X-2)=0> il coefficiente di <math|X> è <math|a>, che deve essere zero anch'esso. La famiglia è una base con due elementi, e <math|dim W=2>.

<strong|6.2.> Proviamo ad aggiungere <math|e<rsub|2>=(0,1)>. In una relazione <math|α(2,3)+β(0,1)=(0,0)> la prima componente dà <math|2α=0>, cioè <math|α=0>, e la seconda dà allora <math|β=0>. I due vettori sono indipendenti e sono tanti quanto la dimensione del piano, quindi formano una base.

Quattro vettori di <math|ℝ<rsup|3>> sono invece più della dimensione. Se fossero indipendenti, il lemma di scambio darebbe <math|4≤3>, il che è impossibile, quindi sono sempre dipendenti.

<section|Somme e formula di Grassmann>

<strong|7.1.> Come supplementare scegliamo <math|W=<math-up|span>((1,-1))>. Le due rette sono distinte, e il sistema <math|α(1,1)=β(1,-1)> impone sia <math|α=β> sia <math|α=-β>, quindi <math|α=β=0> e l'intersezione è nulla. I due vettori formano inoltre la base già studiata nel capitolo 5, quindi generano il piano e <math|ℝ<rsup|2>=U⊕W>. La scomposizione richiesta è

<\equation*>
(3,1)=2(1,1)+1(1,-1)=(2,2)+(1,-1).
</equation*>

È unica perché la differenza fra due possibili primi addendi dovrebbe stare nell'intersezione, che contiene soltanto lo zero.

<strong|7.2.> Chiamiamo <math|q> la dimensione dell'intersezione. Grassmann dà <math|dim(U+W)=3+3-q=6-q>. La somma sta dentro <math|ℝ<rsup|4>>, quindi <math|6-q≤4>, cioè <math|q≥2>. D'altra parte l'intersezione è contenuta in ciascuno dei due sottospazi, che hanno dimensione 3, quindi <math|q≤3>. I soli valori possibili sono 2 e 3, e si presentano entrambi. Per avere <math|q=2> scegliamo <math|U=<math-up|span>(e<rsub|1>,e<rsub|2>,e<rsub|3>)> e <math|W=<math-up|span>(e<rsub|1>,e<rsub|2>,e<rsub|4>)>, la cui intersezione è <math|<math-up|span>(e<rsub|1>,e<rsub|2>)>. Per avere <math|q=3> basta prendere <math|U=W=<math-up|span>(e<rsub|1>,e<rsub|2>,e<rsub|3>)>.

<section|Matrici, nucleo e immagine>

<strong|8.1.> Il rango è la dimensione dell'immagine, che è un sottospazio di <math|ℝ<rsup|3>>. Un sottospazio di dimensione 3 di <math|ℝ<rsup|3>> è tutto lo spazio, quindi ogni <math|b> viene raggiunto e tutti i sistemi <math|Ax=b> sono compatibili.

Lo spazio di partenza ha dimensione 5, e rango–nullità dà <math|dim ker F<rsub|A>=5-3=2>. Il nucleo contiene quindi vettori non nulli, e l'applicazione non è iniettiva. Ogni sistema ha una soluzione particolare a cui si aggiungono due parametri liberi.

<strong|8.2.> Per il nucleo scriviamo le tre equazioni di <math|Ax=0> e seguiamo il suggerimento. Sottraendo quattro volte la prima dalla seconda otteniamo <math|-3x<rsub|2>-6x<rsub|3>=0>, cioè <math|x<rsub|2>=-2x<rsub|3>>. Sostituendo nella prima, <math|x<rsub|1>=-2x<rsub|2>-3x<rsub|3>=x<rsub|3>>. La terza riga della matrice è due volte la seconda meno la prima, quindi la terza equazione è conseguenza delle altre due e non aggiunge vincoli. Ne segue

<\equation*>
ker F<rsub|A>=<math-up|span>((1,-2,1)<rsup|T>).
</equation*>

Per l'immagine guardiamo le colonne. La terza è due volte la seconda meno la prima, mentre le prime due, <math|c<rsub|1>=(1,4,7)<rsup|T>> e <math|c<rsub|2>=(2,5,8)<rsup|T>>, sono indipendenti. Se <math|ac<rsub|1>+bc<rsub|2>=0>, le prime due componenti danno <math|a+2b=0> e <math|4a+5b=0>, e sostituendo <math|a=-2b> nella seconda troviamo <math|-3b=0>, quindi <math|b=0> e poi <math|a=0>. Le due colonne formano una base dell'immagine, che ha dimensione 2. Entrambe soddisfano <math|x-2y+z=0>, e poiché l'immagine è un sottospazio di dimensione 2 contenuto in questo piano, coincide con esso. Le dimensioni di nucleo e immagine sommano a <math|1+2=3>, come prevede il teorema.

Infine <math|A(1,0,0)<rsup|T>=c<rsub|1>=(1,4,7)<rsup|T>>, quindi <math|ξ> è davvero una soluzione particolare, e tutte le soluzioni sono

<\equation*>
x=(1,0,0)<rsup|T>+t(1,-2,1)<rsup|T>,<space|1em>t∈ℝ.
</equation*>

Per controllare basta vedere che <math|A(1,-2,1)<rsup|T>=c<rsub|1>-2c<rsub|2>+c<rsub|3>=0>, cioè che il termine con il parametro non cambia il risultato.

<section|Gauss e sottospazi>

<strong|9.1.> La prima entrata della matrice è zero, quindi conviene scambiare le prime due righe. Il sistema diventa <math|x<rsub|1>+x<rsub|2>=1>, <math|x<rsub|2>+x<rsub|3>=2> e <math|2x<rsub|1>+2x<rsub|2>=2>. Sottraendo due volte la prima equazione dalla terza otteniamo <math|0=0>. Restano due pivot per tre incognite, quindi una variabile libera.

Poniamo <math|x<rsub|3>=t>. La seconda equazione dà <math|x<rsub|2>=2-t>, e la prima <math|x<rsub|1>=1-x<rsub|2>=t-1>. Tutte le soluzioni sono quindi

<\equation*>
x=(-1,2,0)<rsup|T>+t(1,-1,1)<rsup|T>,<space|1em>t∈ℝ,
</equation*>

dove il primo vettore è una soluzione particolare e il secondo genera il nucleo. Nel sistema originale le tre espressioni diventano <math|(2-t)+t=2>, <math|(t-1)+(2-t)=1> e <math|2(t-1)+2(2-t)=2>, tutte corrette.

<strong|9.2.> Per l'intersezione conviene avere le equazioni di entrambi gli spazi. Dal capitolo sappiamo che <math|U> è il piano <math|x+y+z=0>, e <math|W> è descritto da <math|x=z>. Imponendo le due equazioni insieme e ponendo <math|z=t> troviamo <math|x=t> e <math|y=-2t>, quindi l'intersezione è la retta con base <math|(1,-2,1)<rsup|T>>.

Per la somma conviene invece ragionare sulle dimensioni. Entrambi gli spazi sono piani, perché <math|U> ha due generatori indipendenti e <math|W=<math-up|span>((1,0,1)<rsup|T>,(0,1,0)<rsup|T>)>. Grassmann dà <math|dim(U+W)=2+2-1=3>, quindi <math|U+W=ℝ<rsup|3>>. Possiamo anche costruirne una base esplicita. Ai due generatori di <math|U> aggiungiamo <math|(0,1,0)<rsup|T>∈W>, che non sta in <math|U> perché la somma delle sue componenti è 1, e così completiamo una base di tutto lo spazio.

<section|Rango e invertibilità>

<strong|10.1.> Le due righe della matrice dei coefficienti sono proporzionali e non nulle, quindi il suo rango è 1. Nella matrice completa, sottraendo due volte la prima riga dalla seconda otteniamo la riga <math|(0,0\|h-2)>. Se <math|h≠2> questa riga ha un pivot nell'ultima colonna, la matrice completa ha rango 2 e il sistema è incompatibile.

Se <math|h=2> i due ranghi valgono entrambi 1, e resta soltanto l'equazione <math|x+y=1>. Ponendo <math|y=t>, tutte le soluzioni sono <math|(x,y)=(1-t,t)> con <math|t∈ℝ>. C'è un parametro, esattamente come prevede il conto <math|2-<math-up|rank>(A)=1>.

<strong|10.2.> Per eliminare l'1 sotto il primo pivot sottraiamo la prima riga dalla seconda, e otteniamo la matrice con righe <math|(1,1)> e <math|(0,1)>. Poi sottraiamo la seconda riga dalla prima e arriviamo all'identità. Le due mosse corrispondono alle matrici elementari

<\equation*>
E<rsub|1>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|-1>|<cell|1>>>>>,<space|2em>E<rsub|2>=<matrix|<tformat|<table|<row|<cell|1>|<cell|-1>>|<row|<cell|0>|<cell|1>>>>>.
</equation*>

Poiché <math|E<rsub|2>E<rsub|1>A=I>, l'inversa è <math|A<rsup|-1>=E<rsub|2>E<rsub|1>>, e facendo il prodotto troviamo

<\equation*>
A<rsup|-1>=<matrix|<tformat|<table|<row|<cell|2>|<cell|-1>>|<row|<cell|-1>|<cell|1>>>>>.
</equation*>

Verifichiamo in entrambi gli ordini. Nel prodotto <math|AA<rsup|-1>> le quattro entrate sono <math|2-1=1>, <math|-1+1=0>, <math|2-2=0> e <math|-1+2=1>. Nel prodotto <math|A<rsup|-1>A> sono <math|2-1=1>, <math|2-2=0>, <math|-1+1=0> e <math|-1+2=1>. In entrambi i casi otteniamo l'identità, come richiede la definizione di inversa.
