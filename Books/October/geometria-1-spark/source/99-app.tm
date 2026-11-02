<appendix|Soluzioni ragionate>

Prova a scegliere un primo passo prima di leggere. Le soluzioni motivano le scelte, svolgono i passaggi e controllano il risultato. I numeri richiamano il capitolo e l'esercizio.

<section|Insiemi, applicazioni e campi>

<strong|1.1.> Il quadrato manda sia 1 sia <math|-1> in 1: non è iniettivo su <math|ℝ>.

È invece suriettivo sul codominio <math|[0,+∞)>: dato <math|y≥0>, il reale <math|x=<sqrt|y>> soddisfa <math|x<rsup|2>=y>.

Restringiamo il dominio a <math|[0,+∞)>. Se <math|x<rsup|2>=x'<rsup|2>> con <math|x,x'≥0>, allora <math|(x-x')(x+x')=0>. Se <math|x+x'=0>, entrambi sono zero; altrimenti <math|x-x'=0>. In entrambi i casi <math|x=x'>.

La restrizione è dunque biiettiva e la sua inversa è <math|g(y)=<sqrt|y>>. Controlliamo le due composizioni: <math|(<sqrt|y>)<rsup|2>=y> per <math|y≥0>, e <math|<sqrt|x<rsup|2>>=x> per <math|x≥0>. La seconda uguaglianza spiega perché abbiamo ristretto il dominio.

<strong|1.2.> Da <math|a=-a> sommiamo <math|a> ai due membri e otteniamo <math|2a=0>. Nei reali, 2 è non nullo: moltiplicando per <math|1/2> segue <math|a=0>.

In <math|<math-up|F><rsub|2>> invece <math|1=-1>, perché <math|1+1=0>. Quindi <math|a=1> è un controesempio alla conclusione. Il passaggio che fallisce è la divisione per 2, che in questo campo è zero.

<section|Numeri complessi>

<strong|2.1.> Per rendere reale il denominatore usiamo il coniugato <math|1-i>:

<\equation*>
<frac|2+i|1+i>=<frac|(2+i)(1-i)|2>=<frac|2-2i+i-i<rsup|2>|2>=<frac|3-i|2>.
</equation*>

Verifichiamo nella direzione inversa: <math|((3-i)/2)(1+i)=(3+3i-i-i<rsup|2>)/2=(4+2i)/2=2+i>. Non basta cambiare il segno nel denominatore: il coniugato moltiplica anche il numeratore.

<strong|2.2.> Per <math|z<rsup|4>=1> il modulo è 1 e gli argomenti sono <math|kπ/2>, con <math|k=0,1,2,3>. Otteniamo <math|1,i,-1,-i>, vertici di un quadrato sugli assi.

Per <math|z<rsup|4>=-1> gli argomenti sono <math|(π+2kπ)/4=π/4+kπ/2>. Il nuovo quadrato è ruotato di <math|π/4>, non di <math|π>: l'angolo del termine noto è stato diviso per 4.

Le radici sono i quattro numeri <math|(±1±i)/<sqrt|2>>, con segni indipendenti. Il quadrato di ciascuno è <math|i> oppure <math|-i>, quindi la quarta potenza è <math|-1>. La formula generale assicura che la lista è completa.

<section|Polinomi e radici>

<strong|3.1.> Fattorizziamo il pezzo interno: <math|z<rsup|2>+1=(z-i)(z+i)>. Quindi il polinomio dato è <math|(z-i)<rsup|3>(z+i)<rsup|3>>. Ha due radici distinte, <math|i> e <math|-i>, entrambe di molteplicità 3; la somma delle molteplicità è 6, uguale al grado.

Un polinomio reale che avesse radici <math|i>, <math|2i>, 1 dovrebbe avere anche <math|-i> e <math|-2i>. Sono cinque valori distinti, troppi per un polinomio di grado 3. La richiesta è impossibile.

<strong|3.2.> Poiché i coefficienti sono reali, a <math|2+i> deve accompagnarsi <math|2-i> con la stessa molteplicità 2. Le due radici esauriscono già il grado 4.

Il prodotto dei loro fattori è <math|(z-(2+i))(z-(2-i))=z<rsup|2>-4z+5>. Dunque il polinomio cercato è

<\equation*>
P(z)=(z<rsup|2>-4z+5)<rsup|2>=z<rsup|4>-8z<rsup|3>+26z<rsup|2>-40z+25.
</equation*>

È monico (coefficiente direttivo 1), reale e di grado 4. La fattorizzazione mostra le due radici doppie; non resta spazio per altri fattori. Il requisito «monico» fissa il coefficiente e rende unico il polinomio.

<section|Spazi vettoriali e sottospazi>

<strong|4.1.> La valutazione nel punto 1 rispetta le due operazioni: <math|(p+q)(1)=p(1)+q(1)> e <math|(αp)(1)=αp(1)>. Se <math|p(1)=q(1)=0>, anche la somma vale zero in 1; così ogni multiplo. Il polinomio nullo appartiene all'insieme. I tre controlli dimostrano che è un sottospazio.

L'insieme con <math|p(1)=2> non contiene il polinomio nullo, quindi non è un sottospazio. Per esempio contiene il polinomio costante 2, ma non il suo multiplo per zero.

<strong|4.2.> Isoliamo <math|z=-x-y> e lasciamo liberi <math|x=s,y=t>. Ogni soluzione si scrive

<\equation*>
(s,t,-s-t)=s(1,0,-1)+t(0,1,-1).
</equation*>

Viceversa, questa espressione ha sempre somma delle tre componenti zero, quindi non produce vettori estranei a <math|H>. Per <math|s=t=1> otteniamo <math|(1,1,-2)>, che appartiene a <math|H>. Il controllo diretto <math|1+1-2=0> conferma il risultato.

<section|Span, indipendenza e basi>

<strong|5.1.> Il secondo vettore è il doppio del primo. Ogni combinazione è

<\equation*>
α(1,2)+β(2,4)=(α+2β)(1,2).
</equation*>

Lo span è quindi la retta <math|{t(1,2):t∈ℝ}>.

La relazione <math|2(1,2)-(2,4)=0> è non banale, dunque i vettori sono dipendenti.

Per il vettore richiesto abbiamo, per esempio, <math|(3,6)=3(1,2)+0(2,4)> e <math|(3,6)=1(1,2)+1(2,4)>. La dipendenza permette proprio queste scritture diverse.

<strong|5.2.> Cerchiamo <math|α,β> con <math|α(1,1)+β(1,-1)=(5,-1)>. Le componenti impongono <math|α+β=5> e <math|α-β=-1>. Sommandole troviamo <math|2α=4>, quindi <math|α=2> e <math|β=3>.

Le coordinate sono <math|(2,3)>; ricostruendo, <math|2(1,1)+3(1,-1)=(5,-1)>.

Una famiglia contenente zero ha la relazione <math|1·0=0>, con coefficienti nulli sugli altri vettori: non è indipendente, e quindi non è una base.

<section|Dimensione e completamento>

<strong|6.1.> Dal teorema del fattore <math|p(2)=0> equivale a <math|p=(X-2)q>, con <math|q> di grado al più 1, incluso zero. Scriviamo <math|q=a+bX>. Allora

<\equation*>
p=a(X-2)+bX(X-2).
</equation*>

Quindi <math|(X-2,X(X-2))> genera <math|W>.

Per l'indipendenza, nella relazione <math|a(X-2)+bX(X-2)=0> il coefficiente di <math|X<rsup|2>> è <math|b>, che deve essere zero. Rimane <math|a(X-2)=0>, il cui coefficiente di <math|X> è <math|a>, dunque anch'esso è zero. La famiglia è una base di due elementi: <math|dim W=2>.

<strong|6.2.> Possiamo aggiungere <math|e<rsub|2>=(0,1)>. Da <math|α(2,3)+β(0,1)=(0,0)> la prima componente dà <math|2α=0>, quindi <math|α=0>. La seconda dà allora <math|β=0>. I due vettori sono indipendenti e sono tanti quanti la dimensione 2 del piano, quindi formano una base.

Quattro vettori di <math|ℝ<rsup|3>> sono invece più della dimensione: se fossero indipendenti, il lemma di scambio imporrebbe <math|4≤3>, impossibile. Dunque sono sempre dipendenti.

<section|Somme e formula di Grassmann>

<strong|7.1.> Scegliamo <math|W=<math-up|span>((1,-1))>. Le due rette sono distinte e il sistema <math|α(1,1)=β(1,-1)> dà <math|α=β> e <math|α=-β>, quindi <math|α=β=0>: l'intersezione è nulla.

I due vettori formano la base studiata nel capitolo 5 e generano il piano. Abbiamo quindi <math|ℝ<rsup|2>=U⊕W>. La scomposizione è

<\equation*>
(3,1)=2(1,1)+1(1,-1)=(2,2)+(1,-1).
</equation*>

È unica perché la differenza fra due primi addendi dovrebbe stare nell'intersezione, che contiene soltanto zero.

<strong|7.2.> Poniamo <math|q=dim(U∩W)>. Grassmann dà <math|dim(U+W)=6-q>. La somma è contenuta in <math|ℝ<rsup|4>>, perciò <math|6-q≤4> e <math|q≥2>. L'intersezione è contenuta in ciascuno spazio di dimensione 3, quindi <math|q≤3>. I soli valori possibili sono 2 e 3.

 Per 2 scegliamo <math|U=<math-up|span>(e<rsub|1>,e<rsub|2>,e<rsub|3>)> e <math|W=<math-up|span>(e<rsub|1>,e<rsub|2>,e<rsub|4>)>: l'intersezione è <math|<math-up|span>(e<rsub|1>,e<rsub|2>)>.

Per 3 basta scegliere <math|U=W=<math-up|span>(e<rsub|1>,e<rsub|2>,e<rsub|3>)>. I due esempi realizzano tutti i valori consentiti.

<section|Matrici, nucleo e immagine>

<strong|8.1.> Il rango è la dimensione dell'immagine. Un sottospazio di <math|ℝ<rsup|3>> di dimensione 3 coincide con tutto <math|ℝ<rsup|3>>, quindi ogni <math|b> è raggiunto: tutti i sistemi <math|Ax=b> sono compatibili.

Il dominio ha dimensione 5; rango–nullità dà <math|dim ker F<rsub|A>=5-3=2>. Il nucleo contiene vettori non nulli, perciò l'applicazione non è iniettiva. Ogni sistema ha una soluzione particolare più due parametri di libertà.

<strong|8.2.> Per trovare il nucleo scriviamo le tre equazioni di <math|Ax=0>. Sottraiamo quattro volte la prima dalla seconda: otteniamo <math|-3x<rsub|2>-6x<rsub|3>=0>, dunque <math|x<rsub|2>=-2x<rsub|3>>. La prima diventa <math|x<rsub|1>=x<rsub|3>>.

La terza riga della matrice è due volte la seconda meno la prima, quindi non aggiunge un vincolo. Ne segue

<\equation*>
ker F<rsub|A>=<math-up|span>((1,-2,1)<rsup|T>).
</equation*>

La terza colonna è due volte la seconda meno la prima.

Le prime due, <math|c<rsub|1>=(1,4,7)<rsup|T>> e <math|c<rsub|2>=(2,5,8)<rsup|T>>, sono indipendenti: se <math|ac<rsub|1>+bc<rsub|2>=0>, le prime due componenti impongono <math|a+2b=0>, <math|4a+5b=0>; sostituendo <math|a=-2b> ricaviamo <math|-3b=0>, poi <math|a=0>.

Sono una base dell'immagine, che ha dimensione 2.

Entrambe soddisfano <math|x-2y+z=0>: l'immagine coincide con quel piano, perché è un sottospazio di dimensione 2 contenuto in un piano di dimensione 2.

Le dimensioni sommano a <math|1+2=3>. Infine <math|A(1,0,0)<rsup|T>=c<rsub|1>>. Ogni soluzione cercata è quindi

<\equation*>
x=(1,0,0)<rsup|T>+t(1,-2,1)<rsup|T>,<space|1em>t∈ℝ.
</equation*>

Il controllo consiste in <math|A(1,-2,1)<rsup|T>=c<rsub|1>-2c<rsub|2>+c<rsub|3>=0>: il termine con il parametro non cambia il risultato.

<section|Gauss e sottospazi>

<strong|9.1.> In prima posizione compare zero. Scambiamo le prime due righe: il sistema diventa <math|x<rsub|1>+x<rsub|2>=1>, <math|x<rsub|2>+x<rsub|3>=2>, <math|2x<rsub|1>+2x<rsub|2>=2>.

Sottraendo due volte la prima dalla terza otteniamo <math|0=0>. Ci sono due pivot e tre incognite, quindi una variabile libera.

Poniamo <math|x<rsub|3>=t>: la seconda dà <math|x<rsub|2>=2-t>, la prima <math|x<rsub|1>=t-1>. Pertanto

<\equation*>
x=(-1,2,0)<rsup|T>+t(1,-1,1)<rsup|T>,<space|1em>t∈ℝ.
</equation*>

Il primo vettore è una soluzione particolare; il secondo genera il nucleo. Nel sistema originale le tre espressioni diventano, rispettivamente, <math|(2-t)+t=2>, <math|(t-1)+(2-t)=1> e <math|2(t-1)+2(2-t)=2>.

<strong|9.2.> Per l'intersezione conviene usare equazioni: dal capitolo sappiamo che <math|U> ha equazione <math|x+y+z=0>. Aggiungiamo <math|x=z>, che descrive <math|W>. Ponendo <math|z=t>, otteniamo <math|x=t>, <math|y=-2t>. Dunque una base di <math|U∩W> è il solo vettore <math|(1,-2,1)<rsup|T>>.

Entrambi gli spazi sono piani: <math|U> ha i due generatori indipendenti dati, mentre <math|W=<math-up|span>((1,0,1)<rsup|T>,(0,1,0)<rsup|T>)>.

Grassmann dà <math|dim(U+W)=2+2-1=3>, quindi <math|U+W=ℝ<rsup|3>>.

Possiamo anche vederne una base: ai due generatori di <math|U> aggiungiamo <math|(0,1,0)<rsup|T>∈W>. Questo vettore non sta in <math|U>, perché la somma delle sue componenti è 1, e quindi completa i due generatori a una base dello spazio.

<section|Rango e invertibilità>

<strong|10.1.> La matrice dei coefficienti ha due righe proporzionali non nulle, quindi rango 1.

Nella matrice completa sottrarre due volte la prima riga dalla seconda dà la riga <math|(0,0\|h-2)>. Se <math|h≠2>, la matrice completa ha rango 2 e il sistema è incompatibile.

Se <math|h=2>, i ranghi sono entrambi 1 e rimane soltanto <math|x+y=1>. Ponendo <math|y=t>, tutte le soluzioni sono <math|(x,y)=(1-t,t)>, <math|t∈ℝ>. C'è un parametro, come prevede <math|2-<math-up|rank>(A)=1>.

<strong|10.2.> Per eliminare l'1 sotto il primo pivot, sottraiamo la prima riga dalla seconda. Rimane la matrice con righe <math|(1,1)> e <math|(0,1)>.

Ora sottraiamo la seconda dalla prima e arriviamo all'identità. Le due mosse sono

<\equation*>
E<rsub|1>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|-1>|<cell|1>>>>>,<space|2em>E<rsub|2>=<matrix|<tformat|<table|<row|<cell|1>|<cell|-1>>|<row|<cell|0>|<cell|1>>>>>.
</equation*>

Abbiamo <math|E<rsub|2>E<rsub|1>A=I>, perciò <math|A<rsup|-1>=E<rsub|2>E<rsub|1>>. Il prodotto dà

<\equation*>
A<rsup|-1>=<matrix|<tformat|<table|<row|<cell|2>|<cell|-1>>|<row|<cell|-1>|<cell|1>>>>>.
</equation*>

Nel prodotto <math|AA<rsup|-1>> le quattro entrate sono <math|2-1=1>, <math|-1+1=0>, <math|2-2=0>, <math|-1+2=1>.

Nel prodotto <math|A<rsup|-1>A> sono <math|2-1=1>, <math|2-2=0>, <math|-1+1=0>, <math|-1+2=1>. Otteniamo l'identità in entrambi gli ordini, come richiede la definizione.
