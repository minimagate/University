<section|Insiemi, applicazioni e campi>

<strong|1.1.> Il quadrato manda sia 1 sia <math|-1> in 1: non è iniettivo su <math|ℝ>. È invece suriettivo sul codominio <math|[0,+∞)>: dato <math|y≥0>, il reale <math|x=<sqrt|y>> soddisfa <math|x<rsup|2>=y>. Restringiamo il dominio a <math|[0,+∞)>. Se <math|x<rsup|2>=x'<rsup|2>> con <math|x,x'≥0>, allora <math|(x-x')(x+x')=0>. Se <math|x+x'=0>, entrambi sono zero; altrimenti <math|x-x'=0>. In entrambi i casi <math|x=x'>. La restrizione è dunque biiettiva e la sua inversa è <math|g(y)=<sqrt|y>>. Controlliamo le due composizioni: <math|(<sqrt|y>)<rsup|2>=y> per <math|y≥0>, e <math|<sqrt|x<rsup|2>>=x> per <math|x≥0>. La seconda uguaglianza spiega perché abbiamo ristretto il dominio.

<strong|1.2.> Da <math|a=-a> sommiamo <math|a> ai due membri e otteniamo <math|2a=0>. Nei reali, 2 è non nullo: moltiplicando per <math|1/2> segue <math|a=0>. In <math|<math-up|F><rsub|2>> invece <math|1=-1>, perché <math|1+1=0>. Quindi <math|a=1> è un controesempio alla conclusione. Il passaggio che fallisce è la divisione per 2, che in questo campo è zero.

<section|Numeri complessi>

<strong|2.1.> Per rendere reale il denominatore usiamo il coniugato <math|1-i>:

<\equation*>
<frac|2+i|1+i>=<frac|(2+i)(1-i)|2>=<frac|2-2i+i-i<rsup|2>|2>=<frac|3-i|2>.
</equation*>

Verifichiamo nella direzione inversa: <math|((3-i)/2)(1+i)=(3+3i-i-i<rsup|2>)/2=(4+2i)/2=2+i>. Non basta cambiare il segno nel denominatore: il coniugato moltiplica anche il numeratore.

<strong|2.2.> Per <math|z<rsup|4>=1> il modulo è 1 e gli argomenti sono <math|kπ/2>, con <math|k=0,1,2,3>. Otteniamo <math|1,i,-1,-i>, vertici di un quadrato sugli assi. Per <math|z<rsup|4>=-1> gli argomenti sono <math|(π+2kπ)/4=π/4+kπ/2>. Il nuovo quadrato è ruotato di <math|π/4>, non di <math|π>: l'angolo del termine noto è stato diviso per 4. Le radici sono i quattro numeri <math|(±1±i)/<sqrt|2>>, con segni indipendenti. Il quadrato di ciascuno è <math|i> oppure <math|-i>, quindi la quarta potenza è <math|-1>. La formula generale assicura che la lista è completa.

<section|Polinomi e radici>

<strong|3.1.> Fattorizziamo il pezzo interno: <math|z<rsup|2>+1=(z-i)(z+i)>. Quindi il polinomio dato è <math|(z-i)<rsup|3>(z+i)<rsup|3>>. Ha due radici distinte, <math|i> e <math|-i>, entrambe di molteplicità 3; la somma delle molteplicità è 6, uguale al grado. Un polinomio reale che avesse radici <math|i>, <math|2i>, 1 dovrebbe avere anche <math|-i> e <math|-2i>. Sono cinque valori distinti, troppi per un polinomio di grado 3. La richiesta è impossibile.

<strong|3.2.> Poiché i coefficienti sono reali, a <math|2+i> deve accompagnarsi <math|2-i> con la stessa molteplicità 2. Le due radici esauriscono già il grado 4. Il prodotto dei loro fattori è <math|(z-(2+i))(z-(2-i))=z<rsup|2>-4z+5>. Dunque il polinomio cercato è

<\equation*>
P(z)=(z<rsup|2>-4z+5)<rsup|2>=z<rsup|4>-8z<rsup|3>+26z<rsup|2>-40z+25.
</equation*>

È monico (coefficiente direttivo 1), reale e di grado 4. La fattorizzazione mostra le due radici doppie; non resta spazio per altri fattori. Il requisito «monico» fissa il coefficiente e rende unico il polinomio.
