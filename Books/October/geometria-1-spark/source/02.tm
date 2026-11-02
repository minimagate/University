<chapter|Numeri complessi: operazioni, forma polare e radici>

<\inbreve>
Fra i numeri reali l'equazione <math|z<rsup|2>=-1> non ha soluzioni, perché nessun quadrato è negativo. In questo capitolo costruiamo un campo più grande, quello dei numeri complessi, in cui la soluzione c'è. Lo faremo con coppie di reali, e scopriremo che guardare queste coppie come punti del piano rende il prodotto e le radici sorprendentemente facili da capire.
</inbreve>

<section|Da una coppia reale a un numero complesso>

Un numero complesso è semplicemente una coppia di reali <math|(a,b)>, che scriviamo nella forma <math|a+ib>. Il simbolo <math|i> indica la coppia <math|(0,1)>, e ogni reale <math|a> viene identificato con la coppia <math|(a,0)>. Il numero <math|a> si chiama <strong|parte reale> e il numero <math|b> <strong|parte immaginaria>. Notiamo che anche la parte immaginaria è un numero reale, senza il fattore <math|i>. Due complessi sono uguali quando hanno uguali sia la parte reale sia quella immaginaria.

La somma si fa componente per componente:

<\equation*>
(a+ib)+(c+id)=(a+c)+i(b+d).
</equation*>

Per il prodotto ci lasciamo guidare da ciò che vorremmo ottenere. Vorremmo poter sviluppare le parentesi come al solito e poi sostituire <math|i<rsup|2>> con <math|-1>. Facendo così troveremmo <math|ac+iad+ibc+i<rsup|2>bd>, e questo suggerisce di definire

<\equation*>
(a+ib)(c+id)=(ac-bd)+i(ad+bc).
</equation*>

La definizione usa soltanto operazioni fra reali e dà come risultato un'altra coppia di reali, quindi non c'è nulla di misterioso. Se poniamo <math|a=c=0> e <math|b=d=1> otteniamo <math|i·i=-1>, cioè il numero che cercavamo. Ecco un esempio di entrambe le operazioni:

<\equation*>
(2+i)+(3-2i)=5-i,
</equation*>

<\equation*>
(2+i)(3-2i)=6-4i+3i-2i<rsup|2>=8-i.
</equation*>

Quando <math|b=d=0> le due operazioni diventano quelle usuali fra reali, e per questo possiamo pensare <math|ℝ> come una parte di <math|ℂ>. Il numero <math|0+i0> fa da zero, l'opposto di <math|a+ib> è <math|-a-ib>, e <math|1+i0> fa da unità per il prodotto.

Vogliamo ora mostrare che <math|ℂ> è un campo. Per la somma le proprietà associativa e commutativa si controllano su ciascuna componente, dove valgono perché valgono in <math|ℝ>. Anche il prodotto è commutativo, perché scambiando le due coppie le espressioni <math|ac-bd> e <math|ad+bc> non cambiano.

L'associatività del prodotto richiede un conto un po' più lungo. Prendiamo un terzo numero <math|e+if> e sviluppiamo sia <math|((a+ib)(c+id))(e+if)> sia <math|(a+ib)((c+id)(e+if))>. In entrambi i casi la parte reale risulta <math|ace-bde-adf-bcf> e la parte immaginaria <math|acf-bdf+ade+bce>. La distributività si verifica allo stesso modo, sviluppando un prodotto con una somma e usando le regole dei reali. L'unico ingrediente che ancora manca è l'inverso di un complesso non nullo, e per trovarlo ci conviene guardare il piano.

<section|Modulo e coniugato: costruire l'inverso>

Rappresentiamo <math|z=a+ib> come il punto <math|(a,b)> del piano. La sua distanza dall'origine si chiama <strong|modulo>:

<\equation*>
\|z\|=<sqrt|a<rsup|2>+b<rsup|2>>.
</equation*>

Il modulo è un reale non negativo, e vale zero soltanto quando <math|z=0>, perché una somma di due quadrati reali si annulla solo se entrambi sono nulli. Su un numero reale il modulo coincide con il valore assoluto.

Il <strong|coniugato> di <math|z> è <math|<wide|z|\<bar\>>=a-ib>, e nel piano corrisponde alla riflessione rispetto all'asse reale. Se riflettiamo due volte torniamo al punto di partenza, quindi coniugando due volte ritroviamo <math|z>. Un numero coincide con il proprio coniugato esattamente quando <math|b=0>, cioè quando è reale.

Il coniugio va d'accordo con le operazioni, nel senso che

<\equation*>
<wide|z+w|\<bar\>>=<wide|z|\<bar\>>+<wide|w|\<bar\>>,<space|2em><wide|zw|\<bar\>>=<wide|z|\<bar\>><wide|w|\<bar\>>.
</equation*>

Per verificarlo basta applicare le definizioni con <math|w=c+id>. Per la somma entrambi i membri valgono <math|(a+c)-i(b+d)>, e per il prodotto entrambi valgono <math|(ac-bd)-i(ad+bc)>.

Il fatto davvero utile è che cosa succede moltiplicando un numero per il suo coniugato:

<\equation*>
z<wide|z|\<bar\>>=(a+ib)(a-ib)=a<rsup|2>+b<rsup|2>=\|z\|<rsup|2>.
</equation*>

I termini immaginari si cancellano e resta un numero reale positivo, se <math|z≠0>. Ci troviamo quindi a un passo da 1, perché basta dividere per questo numero reale. In altre parole, il coniugato diviso per <math|\|z\|<rsup|2>> moltiplicato per <math|z> dà esattamente 1.

<\concetto|Inverso complesso>
Per <math|z≠0>,

<\equation*>
z<rsup|-1>=<frac|<wide|z|\<bar\>>|\|z\|<rsup|2>>=<frac|a-ib|a<rsup|2>+b<rsup|2>>.
</equation*>

Moltiplicando per <math|z> otteniamo <math|\|z\|<rsup|2>/\|z\|<rsup|2>=1>, e il denominatore non è nullo perché <math|z≠0>. Con l'inverso abbiamo tutte le regole: <math|ℂ> è un campo.
</concetto>

In pratica, per dividere <math|3-2i> per <math|1-i> moltiplichiamo per l'inverso del denominatore, che è <math|(1+i)/2>:

<\equation*>
<frac|3-2i|1-i>=<frac|(3-2i)(1+i)|2>=<frac|3+i-2i<rsup|2>|2>=<frac|5+i|2>.
</equation*>

Per controllare il risultato lo moltiplichiamo per <math|1-i>. Si ottiene <math|(5+i)(1-i)/2=(5-5i+i+1)/2=3-2i>, che è proprio il numero di partenza.

<section|Forma polare e significato del prodotto>

Un punto del piano diverso dall'origine si può indicare anche in un altro modo, dicendo quanto dista dall'origine e in quale direzione si trova. Chiamiamo <math|ρ=\|z\|> la distanza e <math|θ> l'angolo formato con il semiasse reale positivo, misurato in senso antiorario. Questo angolo si chiama <strong|argomento> di <math|z>. Le coordinate del punto sono <math|a=ρcosθ> e <math|b=ρsinθ>, e quindi

<\equation*>
z=ρ(cosθ+i·sinθ).
</equation*>

Angoli che differiscono di un numero intero di giri, cioè di <math|2kπ> con <math|k∈ℤ>, indicano la stessa direzione e quindi lo stesso punto. Per lo zero invece l'argomento non è definito, perché l'origine non sta in nessuna direzione particolare.

<figura|@IMG(piano-complesso)|Lo stesso numero si descrive con due coordinate oppure con modulo e argomento. Il coniugato cambia il segno della coordinata verticale.>

Trovare l'argomento richiede un po' di attenzione. Per <math|z=-1-i> il modulo è <math|<sqrt|2>>, ed entrambe le coordinate sono negative, quindi il punto sta nel terzo quadrante e un argomento è <math|θ=5π/4> (oppure, equivalentemente, <math|-3π/4>). Se ci fossimo fidati soltanto di <math|tanθ=b/a=1>, avremmo potuto confonderlo con <math|1+i>, che ha argomento <math|π/4> e la stessa tangente. Per questo, quando usiamo <math|arctan(b/a)>, controlliamo sempre il quadrante. Se <math|a=0> la tangente non è definita, e l'argomento è <math|π/2> per <math|b›0> e <math|-π/2> per <math|b‹0>.

La forma polare mostra tutta la sua forza nel prodotto. Prendiamo due numeri non nulli, <math|z=ρ(cosθ+i·sinθ)> e <math|w=λ(cosφ+i·sinφ)>, con <math|ρ,λ›0>. Applicando la definizione del prodotto, la parte reale di <math|zw/(ρλ)> risulta <math|cosθcosφ-sinθsinφ> e quella immaginaria <math|cosθsinφ+sinθcosφ>.

Queste due espressioni sono vecchie conoscenze, perché le formule di addizione della trigonometria le riconoscono come <math|cos(θ+φ)> e <math|sin(θ+φ)>. Perciò

<\equation*>
zw=ρλ(cos(θ+φ)+i·sin(θ+φ)).
</equation*>

Il risultato si ricorda in una frase: <strong|i moduli si moltiplicano e gli angoli si sommano.> In particolare <math|\|zw\|=\|z\|\|w\|>, e questo vale anche quando un fattore è zero. Moltiplicare per <math|i>, che ha modulo 1 e argomento <math|π/2>, significa ruotare di un quarto di giro senza cambiare la lunghezza, mentre moltiplicare per 2 raddoppia la lunghezza senza ruotare.

Se moltiplichiamo <math|z> per sé stesso <math|n> volte, con <math|n≥1>, il modulo viene moltiplicato per <math|ρ> a ogni passo e l'angolo cresce ogni volta di <math|θ>. Otteniamo così la <strong|formula di De Moivre>:

<\equation*>
z<rsup|n>=ρ<rsup|n>(cos(nθ)+i·sin(nθ)).
</equation*>

Questo ragionamento è in effetti una piccola induzione, perché la formula vale per <math|n=1> e ogni nuovo fattore <math|z> la fa passare da <math|n> a <math|n+1>. Talvolta scriveremo <math|e<rsup|iθ>> come abbreviazione di <math|cosθ+i·sinθ>. Per noi sarà solo una notazione comoda, che non richiede di studiare l'esponenziale complesso.

<section|Radici ennesime: perché sono più di una?>

Proviamo a risolvere <math|z<rsup|3>=-8>. Fra i reali troveremmo soltanto <math|-2>, ma fra i complessi le soluzioni sono di più, e la forma polare ci dice quante e dove sono. Scriviamo <math|z=ρ(cosθ+i·sinθ)>. Per De Moivre <math|z<rsup|3>> ha modulo <math|ρ<rsup|3>>, che deve essere uguale a 8, quindi <math|ρ=2>.

Per l'angolo dobbiamo essere più accorti. Un argomento di <math|-8> è <math|π>, ma vanno bene anche <math|π+2π>, <math|π+4π> e in generale <math|π+2kπ>. Imponiamo quindi <math|3θ=π+2kπ>, che dà

<\equation*>
θ=<frac|π|3>+<frac|2kπ|3>.
</equation*>

Per <math|k=0,1,2> troviamo tre angoli diversi, <math|π/3>, <math|π> e <math|5π/3>. Da <math|k=3> in poi ripassiamo sugli stessi angoli, perché abbiamo aggiunto un giro intero. Le soluzioni sono dunque

<\equation*>
1+i<sqrt|3>,<space|2em>-2,<space|2em>1-i<sqrt|3>.
</equation*>

Il passaggio decisivo è stato tenere conto di <math|2kπ> <em|prima> di dividere per 3. Un giro completo, diviso per 3, diventa un terzo di giro, e sono questi terzi di giro a produrre le radici nuove.

<\concetto|Radici ennesime di un complesso>
Sia <math|n≥1> intero. Se <math|w=R(cosφ+i·sinφ)≠0>, tutte le soluzioni di <math|z<rsup|n>=w> sono

<\equation*>
z<rsub|k>=<sqrt|R|n><around*|(|cos<around*|(|<frac|φ+2kπ|n>|)>+i·sin<around*|(|<frac|φ+2kπ|n>|)>|)>,
</equation*>

con <math|k=0,…,n-1>. Sono <math|n> soluzioni distinte, equidistanti in angolo sulla circonferenza di raggio <math|<sqrt|R|n>>. Se <math|w=0>, l'unica soluzione è <math|z=0>.
</concetto>

La formula si ottiene confrontando modulo e angolo in De Moivre, esattamente come abbiamo fatto per <math|-8>. Resta da capire perché la lista non contiene ripetizioni e perché non manca nulla. Due indici fra 0 e <math|n-1> danno lo stesso punto solo se i loro angoli differiscono di un numero intero di giri, cioè solo se la loro differenza è multipla di <math|n>, e questo accade solo quando sono uguali. D'altra parte, qualsiasi indice intero si riporta a uno fra 0 e <math|n-1> togliendo multipli di <math|n>, quindi la lista è completa.

Il caso <math|w=1> merita un nome. Le soluzioni di <math|z<rsup|n>=1> si chiamano <strong|radici dell'unità>, hanno modulo 1 e angoli <math|2kπ/n>. Le radici seste, per esempio, hanno angoli <math|0,π/3,2π/3,π,4π/3,5π/3>, e i loro valori sono <math|1>, <math|-1> e i quattro numeri <math|±1/2±i<sqrt|3>/2>, con i due segni scelti in modo indipendente.

<figura|@IMG(radici)|A sinistra le radici cubiche di <math|-8>; a destra le radici seste di 1. Scelta la prima radice, troviamo le altre avanzando di <math|2π/n>.>

La figura suggerisce un modo rapido di trovare tutte le radici. Se conosciamo una sola radice <math|z<rsub|0>> di un complesso non nullo <math|w>, ogni prodotto <math|z<rsub|0>u> con <math|u> radice ennesima dell'unità è ancora una radice, perché <math|(z<rsub|0>u)<rsup|n>=z<rsub|0><rsup|n>u<rsup|n>=w·1=w>. Questi prodotti sono <math|n> numeri distinti, e la formula polare ci dice che le radici sono esattamente <math|n>, quindi li abbiamo trovati tutti.

<\verifica|2>
<strong|2.1.> Calcola <math|(2+i)/(1+i)> e verifica il risultato moltiplicando per il denominatore.

<strong|2.2.> Trova tutte le soluzioni di <math|z<rsup|4>=1>. Poi trova quelle di <math|z<rsup|4>=-1>: spiega quale rotazione trasforma la prima figura nella seconda.
</verifica>
