<section|Matrici, nucleo e immagine — capitolo 8>

<strong|8.1.> Il rango è la dimensione dell'immagine. Un sottospazio di <math|ℝ<rsup|3>> di dimensione 3 coincide con tutto <math|ℝ<rsup|3>>, quindi ogni <math|b> è raggiunto: tutti i sistemi <math|Ax=b> sono compatibili. Il dominio ha dimensione 5; rango–nullità dà <math|dim ker F<rsub|A>=5-3=2>. Il nucleo contiene vettori non nulli, perciò l'applicazione non è iniettiva. Ogni sistema ha una soluzione particolare più due parametri di libertà.

<strong|8.2.> Per trovare il nucleo scriviamo le tre equazioni di <math|Ax=0>. Sottraiamo quattro volte la prima dalla seconda: otteniamo <math|-3x<rsub|2>-6x<rsub|3>=0>, dunque <math|x<rsub|2>=-2x<rsub|3>>. La prima diventa <math|x<rsub|1>=x<rsub|3>>. La terza riga della matrice è due volte la seconda meno la prima, quindi non aggiunge un vincolo. Ne segue

<\equation*>
ker F<rsub|A>=<math-up|span>((1,-2,1)<rsup|T>).
</equation*>

La terza colonna è due volte la seconda meno la prima. Le prime due, <math|c<rsub|1>=(1,4,7)<rsup|T>> e <math|c<rsub|2>=(2,5,8)<rsup|T>>, sono indipendenti: se <math|ac<rsub|1>+bc<rsub|2>=0>, le prime due componenti impongono <math|a+2b=0>, <math|4a+5b=0>; sostituendo <math|a=-2b> ricaviamo <math|-3b=0>, poi <math|a=0>. Sono una base dell'immagine, che ha dimensione 2. Entrambe soddisfano <math|x-2y+z=0>: l'immagine coincide con quel piano, perché è un sottospazio di dimensione 2 contenuto in un piano di dimensione 2.

Le dimensioni sommano a <math|1+2=3>. Infine <math|A(1,0,0)<rsup|T>=c<rsub|1>>. Ogni soluzione cercata è quindi

<\equation*>
x=(1,0,0)<rsup|T>+t(1,-2,1)<rsup|T>,<space|1em>t∈ℝ.
</equation*>

Il controllo consiste in <math|A(1,-2,1)<rsup|T>=c<rsub|1>-2c<rsub|2>+c<rsub|3>=0>: il termine con il parametro non cambia il risultato.

<section|Gauss e sottospazi — capitolo 9>

<strong|9.1.> In prima posizione compare zero. Scambiamo le prime due righe: il sistema diventa <math|x<rsub|1>+x<rsub|2>=1>, <math|x<rsub|2>+x<rsub|3>=2>, <math|2x<rsub|1>+2x<rsub|2>=2>. Sottraendo due volte la prima dalla terza otteniamo <math|0=0>. Ci sono due pivot e tre incognite, quindi una variabile libera. Poniamo <math|x<rsub|3>=t>: la seconda dà <math|x<rsub|2>=2-t>, la prima <math|x<rsub|1>=t-1>. Pertanto

<\equation*>
x=(-1,2,0)<rsup|T>+t(1,-1,1)<rsup|T>,<space|1em>t∈ℝ.
</equation*>

Il primo vettore è una soluzione particolare; il secondo genera il nucleo. Nel sistema originale le tre espressioni diventano, rispettivamente, <math|(2-t)+t=2>, <math|(t-1)+(2-t)=1> e <math|2(t-1)+2(2-t)=2>.

<strong|9.2.> Per l'intersezione conviene usare equazioni: dal capitolo sappiamo che <math|U> ha equazione <math|x+y+z=0>. Aggiungiamo <math|x=z>, che descrive <math|W>. Ponendo <math|z=t>, otteniamo <math|x=t>, <math|y=-2t>. Dunque una base di <math|U∩W> è il solo vettore <math|(1,-2,1)<rsup|T>>.

Entrambi gli spazi sono piani: <math|U> ha i due generatori indipendenti dati, mentre <math|W=<math-up|span>((1,0,1)<rsup|T>,(0,1,0)<rsup|T>)>. Grassmann dà <math|dim(U+W)=2+2-1=3>, quindi <math|U+W=ℝ<rsup|3>>. Possiamo anche vederne una base: ai due generatori di <math|U> aggiungiamo <math|(0,1,0)<rsup|T>∈W>. Questo vettore non sta in <math|U>, perché la somma delle sue componenti è 1, e quindi completa i due generatori a una base dello spazio.

<section|Rango e invertibilità — capitolo 10>

<strong|10.1.> La matrice dei coefficienti ha due righe proporzionali non nulle, quindi rango 1. Nella matrice completa sottrarre due volte la prima riga dalla seconda dà la riga <math|(0,0\|h-2)>. Se <math|h≠2>, la matrice completa ha rango 2 e il sistema è incompatibile. Se <math|h=2>, i ranghi sono entrambi 1 e rimane soltanto <math|x+y=1>. Ponendo <math|y=t>, tutte le soluzioni sono <math|(x,y)=(1-t,t)>, <math|t∈ℝ>. C'è un parametro, come prevede <math|2-<math-up|rank>(A)=1>.

<strong|10.2.> Per eliminare l'1 sotto il primo pivot, sottraiamo la prima riga dalla seconda. Rimane la matrice con righe <math|(1,1)> e <math|(0,1)>. Ora sottraiamo la seconda dalla prima e arriviamo all'identità. Le due mosse sono

<\equation*>
E<rsub|1>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|-1>|<cell|1>>>>>,<space|2em>E<rsub|2>=<matrix|<tformat|<table|<row|<cell|1>|<cell|-1>>|<row|<cell|0>|<cell|1>>>>>.
</equation*>

Abbiamo <math|E<rsub|2>E<rsub|1>A=I>, perciò <math|A<rsup|-1>=E<rsub|2>E<rsub|1>>. Il prodotto dà

<\equation*>
A<rsup|-1>=<matrix|<tformat|<table|<row|<cell|2>|<cell|-1>>|<row|<cell|-1>|<cell|1>>>>>.
</equation*>

Nel prodotto <math|AA<rsup|-1>> le quattro entrate sono <math|2-1=1>, <math|-1+1=0>, <math|2-2=0>, <math|-1+2=1>. Nel prodotto <math|A<rsup|-1>A> sono <math|2-1=1>, <math|2-2=0>, <math|-1+1=0>, <math|-1+2=1>. Otteniamo l'identità in entrambi gli ordini, come richiede la definizione.
