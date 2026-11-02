<chapter|Equazioni diofantee>

<\inbreve>
Ora usiamo MCD e Bézout per risolvere equazioni nelle quali sono ammesse soltanto soluzioni intere. Impareremo a separare tre domande: esistono soluzioni? Come ne troviamo una? Come siamo sicuri di averle trovate tutte?
</inbreve>

<section|Che cosa cambia se le soluzioni devono essere intere?>

Cerchiamo di ottenere 15 combinando gruppi da 6 e gruppi da 9. Scriviamo

<\equation*>
6x+9y=15.
</equation*>

La coppia <math|(x,y)=(1,1)> funziona. Anche <math|(4,-1)> funziona: <math|24-9=15>. Il segno negativo è ammesso se stiamo cercando soluzioni intere; se il problema parla di oggetti da acquistare, dovremo invece aggiungere <math|x,y≥0>.

Una <strong|equazione diofantea> richiede soluzioni intere. Qui studiamo soprattutto le equazioni <strong|lineari in due incognite>, della forma <math|ax+by=c>, con coefficienti interi.

La richiesta di interezza cambia il problema. L'equazione <math|6x+9y=14> ha soluzioni reali, per esempio <math|(14/6,0)>, ma non ha soluzioni intere: il membro sinistro è sempre multiplo di 3, il destro no. Conviene verificare questo ostacolo prima di cercare una soluzione.

<section|Esistenza delle soluzioni: il criterio del MCD>

Poniamo <math|d=gcd(a,b)>, supponendo <math|a,b> non entrambi nulli. Dal capitolo precedente sappiamo esattamente quali numeri si possono scrivere come <math|ax+by>: i multipli di <math|d>.

<\concetto|Criterio per le diofantee lineari>
L'equazione <math|ax+by=c> ha soluzioni intere se e solo se

<\equation*>
gcd(a,b)∣c.
</equation*>
</concetto>

Ricostruiamo le due direzioni. Se una soluzione esiste, <math|d> divide <math|a> e <math|b>, quindi divide <math|ax+by=c>. Questa è la <strong|necessità>: una soluzione deve rispettare la condizione.

Se invece <math|d∣c>, scriviamo <math|c=kd>. Bézout fornisce <math|au+bv=d>. Moltiplichiamo per <math|k>:

<\equation*>
a(ku)+b(kv)=kd=c.
</equation*>

Abbiamo costruito una soluzione: <math|x<rsub|0>=ku>, <math|y<rsub|0>=kv>. Questa è la <strong|sufficienza>: la condizione basta davvero a garantire l'esistenza.

Per <math|6x+9y=15>, il MCD è 3 e <math|15=5·3>. Dall'identità <math|3=-6+9> otteniamo <math|15=-5·6+5·9>: quindi <math|(-5,5)> è una soluzione. La coppia più piccola <math|(1,1)> era visibile per tentativi; Bézout offre un metodo anche quando non la vediamo.

<section|Da una soluzione a tutte le soluzioni>

Trovare una coppia non chiude il problema. Vogliamo una descrizione che comprenda tutte le soluzioni e non ne aggiunga di false.

Riprendiamo <math|6x+9y=15> e dividiamo per il MCD 3:

<\equation*>
2x+3y=5.
</equation*>

Conosciamo <math|(1,1)>. Se <math|(x,y)> è un'altra soluzione, sottraiamo <math|2·1+3·1=5> dall'equazione:

<\equation*>
2(x-1)+3(y-1)=0,<space|1em><text|cioè><space|1em>2(x-1)=-3(y-1).
</equation*>

La parte destra è multipla di 3, quindi 3 divide <math|2(x-1)>. Poiché 3 e 2 sono coprimi, il lemma di Euclide dà <math|3∣(x-1)>. Esiste dunque un intero <math|t> con <math|x-1=3t>.

Sostituiamo: <math|2·3t=-3(y-1)>. Dividendo per <math|-3> otteniamo <math|y-1=-2t>. Tutte le soluzioni devono perciò avere la forma

<\equation*>
x=1+3t,<space|2em>y=1-2t,<space|2em>t∈ℤ.
</equation*>

Resta il controllo nella direzione opposta. Sostituendo queste espressioni troviamo <math|2(1+3t)+3(1-2t)=5>: i termini con <math|t> si cancellano. Quindi ogni intero <math|t> dà effettivamente una soluzione. Non abbiamo perso né aggiunto coppie.

Il parametro <math|t> conta i passi dalla soluzione iniziale: aumentarlo di 1 aumenta <math|x> di 3 e diminuisce <math|y> di 2. Il valore di <math|2x+3y> rimane uguale perché il guadagno <math|2·3> è compensato dalla perdita <math|3·2>.

La figura mostra lo stesso passo su una retta parallela: il termine noto è 9 anziché 5.

<figura|@IMG(reticolo)|Qui vediamo l'equazione <math|2x+3y=9>: i punti <math|(0,3)>, <math|(3,1)> e <math|(6,-1)> seguono lo stesso passo <math|(3,-2)>. Cambiare il termine noto sposta la retta; i coefficienti determinano il passo fra le soluzioni.>

<subsection|La formula generale e il suo motivo>

Per <math|ax+by=c> poniamo <math|d=gcd(a,b)>, <math|A=a/d> e <math|B=b/d>. I numeri <math|A,B> sono coprimi: un loro divisore comune maggiore di 1 produrrebbe un divisore comune di <math|a,b> maggiore di <math|d>.

Fissata una soluzione <math|(x<rsub|0>,y<rsub|0>)>, sottrarre due soluzioni dà

<\equation*>
A(x-x<rsub|0>)=-B(y-y<rsub|0>).
</equation*>

Se <math|B≠0>, il lemma di Euclide impone <math|B∣(x-x<rsub|0>)>. Scriviamo <math|x-x<rsub|0>=Bt>; sostituendo e dividendo per <math|B> troviamo <math|y-y<rsub|0>=-At>. Come nell'esempio, il controllo per sostituzione dimostra anche il viceversa.

Otteniamo così tutte le soluzioni:

<\equation*>
x=x<rsub|0>+<frac|b|d>t,<space|2em>y=y<rsub|0>-<frac|a|d>t,<space|2em>t∈ℤ.
</equation*>

Se <math|b=0> e <math|a≠0>, basta risolvere <math|ax=c>: quando possibile, <math|x> è fissato e <math|y> è un intero qualsiasi. La formula descrive anche questo caso, perché <math|a/d=±1>. Se <math|a=b=0>, il MCD non è definito secondo la nostra convenzione: per <math|c=0> ogni coppia funziona, per <math|c≠0> nessuna.

<section|Aggiungere vincoli: il problema diventa un intervallo>

Se cerchiamo soluzioni non negative di <math|6x+9y=15>, usiamo la parametrizzazione già trovata. Le condizioni diventano

<\equation*>
1+3t≥0,<space|2em>1-2t≥0.
</equation*>

La prima richiede <math|t≥-1/3>, quindi <math|t≥0> perché <math|t> è intero. La seconda richiede <math|t≤1/2>, quindi <math|t≤0>. L'unica possibilità è <math|t=0>: l'unica soluzione non negativa è <math|(1,1)>.

Ogni vincolo su <math|x,y> diventa così un vincolo sullo stesso parametro. Risolviamo le disuguaglianze, prendiamo la loro intersezione e conserviamo soltanto gli interi. Se dividiamo una disuguaglianza per un numero negativo, dobbiamo invertire il verso, come nel passaggio <math|-2t≥-1> che dà <math|t≤1/2>.

<section|Per proseguire: differenze di quadrati>

La parola «diofantea» non significa necessariamente «lineare». Per <math|x<rsup|2>-y<rsup|2>=15> serve un'altra idea: usare la scomposizione

<\equation*>
x<rsup|2>-y<rsup|2>=(x+y)(x-y).
</equation*>

<figura|@IMG(quadrati)|Per <math|x≥y≥0>, l'area rimasta dopo aver tolto il quadrato di lato <math|y> si ricompone in un rettangolo di lati <math|x+y> e <math|x-y>. L'identità algebrica vale per tutti gli interi.>

Poniamo <math|u=x+y>, <math|v=x-y>. L'equazione diventa <math|uv=15>, e sommando o sottraendo ricaviamo

<\equation*>
x=<frac|u+v|2>,<space|2em>y=<frac|u-v|2>.
</equation*>

Per ottenere interi, <math|u,v> devono avere la stessa parità. Per 15 tutte le coppie di fattori sono dispari. Le coppie positive <math|(15,1),(5,3),(3,5),(1,15)> danno <math|(8,7),(4,1),(4,-1),(8,-7)>. Le coppie di fattori negativi danno le quattro coppie opposte: in totale otto soluzioni.

Per <math|x<rsup|2>-y<rsup|2>=26>, invece, nessuna coppia di fattori ha la stessa parità: due dispari darebbero un prodotto dispari, due pari un multiplo di 4. Il numero 26 non è né l'uno né l'altro. Non ci sono soluzioni intere.

Lo stesso procedimento vale per ogni termine noto non nullo, prendendo tutti i divisori interi, anche negativi. Per termine noto zero si ha direttamente <math|x=y> oppure <math|x=-y>.

<subsection|In sintesi>

Per una <strong|diofantea lineare>, il MCD decide l'esistenza, Bézout costruisce una soluzione e la differenza fra due soluzioni ci permette di trovarle tutte. I vincoli si applicano soltanto dopo, al parametro. Per altre diofantee cerchiamo invece una trasformazione adatta, come il prodotto di due fattori nella differenza di quadrati.

<\verifica|6>
<strong|1.> Risolvi <math|4x+6y=14> negli interi e poi con <math|x,y≥0>. Puoi partire dalla soluzione <math|(2,1)>.

<strong|2.> Trova tutte le soluzioni intere di <math|x<rsup|2>-y<rsup|2>=8>. Spiega perché non puoi usare tutte le coppie di fattori senza controllarne la parità.
</verifica>

