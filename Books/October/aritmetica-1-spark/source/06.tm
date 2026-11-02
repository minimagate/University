<chapter|Equazioni diofantee>

<\inbreve>
Un'equazione come <math|6x+9y=15> ha infinite soluzioni reali, ma se chiediamo che <math|x> e <math|y> siano interi il problema cambia volto. A volte di soluzioni non ce ne sono affatto, altre volte ce ne sono infinite, disposte con una regolarità precisa. Con il MCD e l'identità di Bézout sapremo dire quando esistono, come trovarne una e come essere sicuri di averle trovate tutte.
</inbreve>

<section|Che cosa cambia se le soluzioni devono essere intere?>

Vogliamo ottenere 15 mettendo insieme gruppi da 6 e gruppi da 9, cioè risolvere

<\equation*>
6x+9y=15.
</equation*>

Qualche tentativo porta presto alla coppia <math|(x,y)=(1,1)>, ma anche <math|(4,-1)> funziona, perché <math|24-9=15>. Il segno negativo è accettabile se cerchiamo soltanto soluzioni intere. Se invece <math|x> e <math|y> contano oggetti da comprare, dovremo aggiungere le condizioni <math|x,y≥0>.

Un'equazione in cui si cercano soltanto soluzioni intere si chiama <strong|equazione diofantea>. In questo capitolo ci occupiamo soprattutto di quelle <strong|lineari in due incognite>, della forma <math|ax+by=c> con coefficienti interi.

Chiedere soluzioni intere può rendere un'equazione impossibile. L'equazione <math|6x+9y=14> ha soluzioni reali, come <math|(14/6,0)>, ma nessuna soluzione intera. Comunque scegliamo <math|x> e <math|y> interi, infatti, il membro sinistro è un multiplo di 3, mentre 14 non lo è. Prima di metterci a cercare una soluzione conviene quindi controllare che non ci sia un ostacolo di questo tipo.

<section|Esistenza delle soluzioni: il criterio del MCD>

Sia <math|d=gcd(a,b)>, con <math|a,b> non entrambi nulli. Il capitolo precedente ci ha già detto quali numeri si possono scrivere nella forma <math|ax+by>, cioè esattamente i multipli di <math|d>. Tradotto nel linguaggio delle equazioni, questo diventa un criterio.

<\concetto|Criterio per le diofantee lineari>
L'equazione <math|ax+by=c> ha soluzioni intere se e solo se

<\equation*>
gcd(a,b)∣c.
</equation*>
</concetto>

Vale la pena ripercorrere le due direzioni. Se una soluzione esiste, <math|d> divide sia <math|a> sia <math|b>, e quindi divide anche <math|ax+by>, che è uguale a <math|c>. La condizione è dunque <strong|necessaria>.

Viceversa, supponiamo che <math|d∣c> e scriviamo <math|c=kd>. Bézout ci dà due interi con <math|au+bv=d>, e moltiplicando per <math|k> otteniamo

<\equation*>
a(ku)+b(kv)=kd=c.
</equation*>

La coppia <math|x<rsub|0>=ku>, <math|y<rsub|0>=kv> è una soluzione, e così la condizione è anche <strong|sufficiente>. La dimostrazione, oltre a garantire l'esistenza, ci dice come costruire la soluzione.

Torniamo a <math|6x+9y=15>. Il MCD è 3 e <math|15=5·3>, quindi le soluzioni esistono. Dall'identità <math|3=-6+9>, moltiplicando per 5, otteniamo <math|15=-5·6+5·9>, cioè la soluzione <math|(-5,5)>. È meno elegante di <math|(1,1)>, che avevamo trovato a occhio, ma il metodo funziona anche quando a occhio non vediamo niente.

<section|Da una soluzione a tutte le soluzioni>

Avere una soluzione non chiude il problema. Vogliamo una descrizione che contenga tutte le soluzioni, senza dimenticarne nessuna e senza aggiungerne di false.

Ripartiamo da <math|6x+9y=15> e dividiamo tutto per il MCD 3, ottenendo l'equazione equivalente

<\equation*>
2x+3y=5.
</equation*>

Sappiamo che <math|(1,1)> è una soluzione. Se <math|(x,y)> è un'altra soluzione, possiamo confrontarla con questa sottraendo l'uguaglianza <math|2·1+3·1=5>:

<\equation*>
2(x-1)+3(y-1)=0,<space|1em><text|cioè><space|1em>2(x-1)=-3(y-1).
</equation*>

Il membro destro è un multiplo di 3, quindi 3 divide <math|2(x-1)>. Siccome 3 e 2 sono coprimi, il lemma di Euclide ci permette di togliere il fattore 2 e concludere che <math|3∣(x-1)>. Esiste dunque un intero <math|t> con <math|x-1=3t>.

Mettendo questa informazione nell'uguaglianza troviamo <math|2·3t=-3(y-1)>, e dividendo per <math|-3> otteniamo <math|y-1=-2t>. Ogni soluzione deve quindi avere la forma

<\equation*>
x=1+3t,<space|2em>y=1-2t,<space|2em>t∈ℤ.
</equation*>

Per non aver aggiunto coppie false resta da controllare il viceversa, cioè che ogni <math|t> dia davvero una soluzione. Sostituendo, <math|2(1+3t)+3(1-2t)=5>, perché i termini con <math|t> si cancellano. La descrizione è quindi completa ed esatta.

Il parametro <math|t> ha un significato concreto. Aumentarlo di 1 fa crescere <math|x> di 3 e scendere <math|y> di 2, e il valore di <math|2x+3y> non cambia, perché il guadagno <math|2·3> è compensato esattamente dalla perdita <math|3·2>. Le soluzioni sono punti a passo regolare su una retta.

<figura|@IMG(reticolo)|Qui vediamo l'equazione <math|2x+3y=9>: i punti <math|(0,3)>, <math|(3,1)> e <math|(6,-1)> seguono lo stesso passo <math|(3,-2)>. Cambiare il termine noto sposta la retta; i coefficienti determinano il passo fra le soluzioni.>

La figura mostra lo stesso fenomeno per la retta parallela <math|2x+3y=9>. Cambiando il termine noto la retta si sposta, ma il passo fra una soluzione e la successiva resta lo stesso, perché dipende soltanto dai coefficienti.

<subsection|La formula generale e il suo motivo>

Il ragionamento si estende a ogni equazione <math|ax+by=c> che abbia soluzioni. Poniamo <math|d=gcd(a,b)>, <math|A=a/d> e <math|B=b/d>. I numeri <math|A> e <math|B> sono coprimi, perché un loro divisore comune maggiore di 1, moltiplicato per <math|d>, darebbe un divisore comune di <math|a> e <math|b> più grande del MCD.

Fissiamo una soluzione <math|(x<rsub|0>,y<rsub|0>)>. Sottraendola da un'altra soluzione e dividendo per <math|d> otteniamo

<\equation*>
A(x-x<rsub|0>)=-B(y-y<rsub|0>).
</equation*>

Se <math|B≠0>, il lemma di Euclide dice che <math|B∣(x-x<rsub|0>)>. Scrivendo <math|x-x<rsub|0>=Bt> e sostituendo, dopo aver diviso per <math|B> troviamo <math|y-y<rsub|0>=-At>. Come nell'esempio, la sostituzione diretta mostra che ogni <math|t> dà una soluzione, e quindi le soluzioni sono tutte e sole

<\equation*>
x=x<rsub|0>+<frac|b|d>t,<space|2em>y=y<rsub|0>-<frac|a|d>t,<space|2em>t∈ℤ.
</equation*>

Restano i casi degeneri. Se <math|b=0> e <math|a≠0> l'equazione è semplicemente <math|ax=c>. Quando ha soluzione, <math|x> è fissato e <math|y> può essere un intero qualsiasi, e la formula lo descrive correttamente, perché in questo caso <math|a/d=±1>. Se infine <math|a=b=0> il MCD non è definito, ma la situazione è chiara: per <math|c=0> ogni coppia va bene, per <math|c≠0> nessuna.

<section|Aggiungere vincoli: il problema diventa un intervallo>

Supponiamo ora di volere soluzioni non negative di <math|6x+9y=15>. Non serve ricominciare da capo, perché la parametrizzazione che abbiamo trovato contiene già tutte le soluzioni, e dobbiamo solo capire per quali <math|t> entrambe le coordinate sono non negative:

<\equation*>
1+3t≥0,<space|2em>1-2t≥0.
</equation*>

La prima condizione dà <math|t≥-1/3>, e siccome <math|t> è intero questo significa <math|t≥0>. La seconda dà <math|t≤1/2>, cioè <math|t≤0>. Resta soltanto <math|t=0>, e l'unica soluzione non negativa è <math|(1,1)>.

Il metodo è sempre lo stesso. Ogni vincolo su <math|x> e <math|y> diventa un vincolo sul parametro, e basta risolvere le disuguaglianze, intersecarle e tenere gli interi. Bisogna solo ricordare che, dividendo una disuguaglianza per un numero negativo, il verso si inverte, come quando da <math|-2t≥-1> siamo passati a <math|t≤1/2>.

<section|Per proseguire: differenze di quadrati>

Le equazioni diofantee non sono tutte lineari. Per <math|x<rsup|2>-y<rsup|2>=15> serve un'idea diversa, e la suggerisce la scomposizione

<\equation*>
x<rsup|2>-y<rsup|2>=(x+y)(x-y).
</equation*>

<figura|@IMG(quadrati)|Per <math|x≥y≥0>, l'area rimasta dopo aver tolto il quadrato di lato <math|y> si ricompone in un rettangolo di lati <math|x+y> e <math|x-y>. L'identità algebrica vale per tutti gli interi.>

Se chiamiamo <math|u=x+y> e <math|v=x-y>, l'equazione diventa <math|uv=15>, e la domanda si sposta sui modi di scrivere 15 come prodotto di due interi. Da <math|u> e <math|v> si torna poi a <math|x> e <math|y> sommando e sottraendo:

<\equation*>
x=<frac|u+v|2>,<space|2em>y=<frac|u-v|2>.
</equation*>

Perché <math|x> e <math|y> siano interi, <math|u> e <math|v> devono avere la stessa parità. Per 15 questo non è un problema, perché tutti i suoi fattori sono dispari. Le coppie positive <math|(15,1),(5,3),(3,5),(1,15)> danno le soluzioni <math|(8,7),(4,1),(4,-1),(8,-7)>, e le coppie di fattori negativi danno le quattro soluzioni opposte, per un totale di otto.

Con <math|x<rsup|2>-y<rsup|2>=26> la parità blocca tutto. Due fattori dispari darebbero un prodotto dispari, e due fattori pari darebbero un multiplo di 4, ma 26 è pari e non è multiplo di 4. Non ci sono quindi soluzioni intere.

Lo stesso procedimento funziona per ogni termine noto diverso da zero, purché si considerino tutti i divisori interi, anche quelli negativi. Se il termine noto è zero la scomposizione risponde subito, perché il prodotto si annulla solo per <math|x=y> oppure <math|x=-y>.

<subsection|In sintesi>

Per una <strong|diofantea lineare> il MCD decide se le soluzioni esistono, Bézout ne costruisce una e il confronto fra due soluzioni le rivela tutte, a passo regolare. Gli eventuali vincoli si impongono soltanto alla fine, sul parametro. Per altri tipi di equazioni conviene cercare una trasformazione adatta, come il prodotto di due fattori nella differenza di quadrati.

<\verifica|6>
<strong|1.> Risolvi <math|4x+6y=14> negli interi e poi con <math|x,y≥0>. Puoi partire dalla soluzione <math|(2,1)>.

<strong|2.> Trova tutte le soluzioni intere di <math|x<rsup|2>-y<rsup|2>=8>. Spiega perché non puoi usare tutte le coppie di fattori senza controllarne la parità.
</verifica>
