<appendix|Soluzioni ragionate>

Le soluzioni seguono l'ordine dei capitoli, e il numero 4.1 indica il primo esercizio della Verifica 4. Prima di leggere una soluzione conviene provare almeno a scegliere il primo passaggio e a spiegarsi perché lo si sceglie. Nelle soluzioni facciamo attenzione anche alle condizioni di dominio e al controllo degli errori, perché è lì che si nascondono gli sbagli più comuni.

<subsection*|Capitolo 1 — Logica e insiemi>

<strong|1.1.> Indichiamo con <math|P(a,s,e)> la frase «nell'anno <math|a> lo studente <math|s> fallisce l'esame <math|e>». L'enunciato diventa allora <math|∀a∃s∀e,P(a,s,e)>.

Neghiamo i quantificatori uno alla volta, partendo dall'esterno. «Per ogni anno» diventa «esiste un anno», «esiste uno studente» diventa «per ogni studente» e «tutti gli esami» diventa «esiste un esame», mentre il predicato viene negato. Otteniamo <math|∃a∀s∃e,¬P(a,s,e)>, cioè esiste un anno in cui ogni studente supera almeno un esame, se assumiamo che non fallire un esame significhi superarlo. Notiamo che l'esame superato può cambiare da uno studente all'altro, e quindi non serve un esame superato da tutti.

<strong|1.2.> Per formare un sottoinsieme di <math|{a,b}>, con <math|a≠b>, decidiamo se prendere <math|a> e se prendere <math|b>. Le quattro scelte danno <math|𝒫({a,b})={∅,{a},{b},{a,b}}>.

La frase <math|∅∈{∅}> è vera, perché il vuoto è l'unico elemento dell'insieme a destra. Anche <math|∅⊆{∅}> è vera, perché il vuoto è contenuto in ogni insieme. La frase <math|{∅}⊆∅> è invece falsa, perché il primo insieme ha un elemento, il vuoto, che non può appartenere a un insieme senza elementi.

<subsection*|Capitolo 2 — Funzioni>

<strong|2.1.> Per capire se ogni <math|y> viene raggiunto risolviamo <math|y=3x-2> rispetto a <math|x>, e troviamo <math|x=(y+2)/3>. Per ogni <math|y∈ℝ> questo dà un'entrata, quindi <math|f> è suriettiva. L'entrata è anche unica, perché l'equazione ha una sola soluzione. Possiamo verificarlo anche direttamente, perché <math|3x<rsub|1>-2=3x<rsub|2>-2> implica <math|x<rsub|1>=x<rsub|2>>, e quindi <math|f> è iniettiva.

L'inversa è dunque <math|f<rsup|-1>(y)=(y+2)/3>, e sostituendo si controlla che entrambe le composizioni danno l'identità.

<strong|2.2.> Sull'intervallo <math|[-1,2]> il quadrato raggiunge il valore minimo 0 in un punto interno, cioè in <math|x=0>, e il massimo 4 in <math|x=2>. Ogni valore intermedio fra 0 e 4 viene raggiunto, perché la sua radice non negativa sta in <math|[0,2]>. Quindi <math|q([-1,2])=[0,4]>. Se avessimo calcolato la funzione soltanto agli estremi avremmo trovato 1 e 4, e avremmo concluso erroneamente <math|[1,4]>, perdendo il minimo interno.

Per la controimmagine ci chiediamo quali entrate hanno quadrato compreso fra 1 e 4. Dobbiamo avere <math|1≤x<rsup|2>≤4>, cioè <math|1≤\|x\|≤2>, e la risposta è <math|[-2,-1]∪[1,2]>.

<subsection*|Capitolo 3 — Induzione>

<strong|3.1.> Per <math|n=1> entrambi i membri valgono 1. Supponiamo ora che <math|1+⋯+n=n(n+1)/2> e aggiungiamo il nuovo addendo <math|n+1>:

<\equation*>
1+⋯+n+(n+1)=<frac|n(n+1)|2>+(n+1)=<frac|(n+1)(n+2)|2>.
</equation*>

L'ipotesi induttiva entra nella prima uguaglianza, dove sostituiamo la somma fino a <math|n> con la sua formula. L'ultima espressione è la formula con <math|n+1> al posto di <math|n>, e l'induzione è conclusa.

<strong|3.2.> Cominciamo dai primi casi. Per <math|n=0> la disuguaglianza è <math|1≥1>, vera. Per 1, 2 e 3 è falsa, perché confrontiamo 1 con 2, 2 con 4 e 6 con 8. Per <math|n=4> torna vera, perché <math|24≥16>, e da qui proviamo a ripartire.

Supponiamo che <math|n!≥2<rsup|n>> per un certo <math|n≥4>. Nel fattoriale successivo separiamo il fattore nuovo e otteniamo

<\equation*>
(n+1)!=(n+1)n!≥(n+1)2<rsup|n>≥2·2<rsup|n>=2<rsup|n+1>,
</equation*>

dove l'ultimo confronto usa <math|n+1≥2>. La base 4 e il passo coprono tutti i casi successivi, e la risposta completa è <math|n=0> oppure <math|n≥4>. Questo esercizio mostra perché la scelta della base conta. Il caso <math|n=0> è vero, ma da solo non può propagarsi attraverso i tre casi falsi che lo seguono.

<subsection*|Capitolo 4 — Completezza ed estremi>

<strong|4.1.> Per <math|n≥1> abbiamo <math|1-1/n≥0>, e con <math|n=1> otteniamo 0. Lo zero è quindi un elemento dell'insieme ed è minore o uguale a tutti gli altri, cioè <math|min A=inf A=0>.

Tutti gli elementi sono minori di 1, che è quindi un maggiorante. Per vedere che è il più piccolo usiamo la caratterizzazione con <math|ε>. Dato <math|ε›0>, la proprietà archimedea ci permette di scegliere <math|n›1/ε>, e allora <math|1-1/n›1-ε>. Quindi <math|sup A=1>. Il massimo non esiste, perché 1 non appartiene ad <math|A>.

<strong|4.2.> Chiamiamo <math|l=inf A>. Poiché <math|l≤a> per ogni <math|a∈A>, cambiando segno otteniamo <math|-a≤-l>, e quindi <math|-l> è un maggiorante di <math|-A>.

Resta da mostrare che è il più piccolo. Supponiamo per assurdo che esista un maggiorante <math|M> di <math|-A> con <math|M‹-l>. Allora <math|-a≤M> per ogni <math|a∈A>, cioè <math|-M≤a>, e quindi <math|-M> sarebbe un minorante di <math|A>. Ma <math|-M›l>, e un minorante non può essere maggiore dell'infimo. Dunque <math|sup(-A)=-l=-inf A>.

<subsection*|Capitolo 5 — Grafici e funzioni elementari>

<strong|5.1.> Un valore assoluto non è mai negativo, quindi per <math|λ‹0> non ci sono soluzioni. Per <math|λ=0> dobbiamo avere <math|x<rsup|2>-4=0>, e le soluzioni sono due, <math|x=±2>.

Per <math|λ›0> la quantità dentro il modulo può valere <math|λ> oppure <math|-λ>, quindi dobbiamo risolvere le due equazioni

<\equation*>
x<rsup|2>=4+λ,<space|2em>x<rsup|2>=4-λ.
</equation*>

La prima ha sempre due soluzioni, perché <math|4+λ›0>. Nella seconda il numero a destra cambia segno in <math|λ=4>, e quindi le soluzioni sono due per <math|0‹λ‹4>, una per <math|λ=4> e nessuna per <math|λ›4>. In totale abbiamo quattro soluzioni per <math|0‹λ‹4>, tre per <math|λ=4> e due per <math|λ›4>. Mettendo insieme tutti i casi, al crescere di <math|λ> il numero di soluzioni è 0, 2, 4, 3, 2.

Il caso <math|λ=0> va tenuto separato perché lì le due equazioni coincidono, e contandole entrambe conteremmo due volte le stesse soluzioni.

<strong|5.2.> Prima il dominio. Gli argomenti dei logaritmi devono essere positivi, quindi <math|3x+1›0> e <math|x+5›0>, e insieme danno <math|x›-1/3>.

Il logaritmo è iniettivo sui positivi, quindi due logaritmi sono uguali solo se lo sono i loro argomenti, e l'equazione equivale a <math|3x+1=x+5>. Troviamo <math|x=2>, che appartiene al dominio, e infatti entrambi gli argomenti valgono 7. Senza il controllo del dominio non potremmo dire che le due equazioni sono equivalenti.

<subsection*|Capitolo 6 — Trigonometria e inverse>

<strong|6.1.> Il seno di <math|5π/6> vale <math|1/2>, ma <math|5π/6> non sta nell'intervallo <math|[-π/2,π/2]>. L'angolo di quell'intervallo che ha lo stesso seno è <math|π/6>, quindi <math|arcsin(sin(5π/6))=π/6>.

Allo stesso modo il coseno di <math|7π/4> vale <math|<sqrt|2>/2>, e l'angolo di <math|[0,π]> con quel coseno è <math|π/4>. Quindi <math|arccos(cos(7π/4))=π/4>.

<strong|6.2.> Perché l'arcocoseno sia definito serve <math|t∈[-1,1]>. Posto <math|α=arccos t>, sappiamo che <math|cos α=t> e, come nel capitolo, che <math|sin α=<sqrt|1-t<rsup|2>>>.

La tangente di <math|α> esiste quando <math|cos α≠0>, cioè quando <math|t≠0>. Il dominio è quindi <math|[-1,0)∪(0,1]>, e su questo dominio

<\equation*>
tan(arccos t)=<frac|<sqrt|1-t<rsup|2>>|t>.
</equation*>

Agli estremi <math|t=±1> il numeratore si annulla mentre il denominatore no, e la formula dà correttamente 0. Per <math|t‹0> il rapporto è negativo, come deve essere la tangente di un angolo del secondo quadrante.

<subsection*|Capitolo 7 — Successioni e definizione di limite>

<strong|7.1.> Il limite proposto è 1, quindi conviene calcolare la distanza da 1. Per <math|n≥0> otteniamo

<\equation*>
<around*|\||<frac|n|n+1>-1|\|>=<frac|1|n+1>.
</equation*>

Fissiamo <math|ε›0> e scegliamo un intero <math|N≥1/ε>. Per ogni <math|n≥N> abbiamo <math|1/(n+1)‹1/N≤ε>, e questo dimostra il limite con la definizione. Inoltre <math|n/(n+1)‹1> per ogni <math|n≥0>, quindi i termini arrivano da sinistra e possiamo scrivere <math|1<rsup|->>.

<strong|7.2.> Il termine alterno <math|2(-1)<rsup|n>> non è mai minore di <math|-2>, quindi <math|a<rsub|n>≥n-2>, che tende a <math|+∞>. Per confronto anche <math|a<rsub|n>→+∞>.

La monotonia è un'altra questione. Confrontando un indice pari con il dispari successivo troviamo

<\equation*>
a<rsub|2k>=2k+2,<space|2em>a<rsub|2k+1>=2k-1,
</equation*>

quindi in ciascuno di questi passaggi la successione scende di 3, e questo succede per quanto avanti andiamo. La successione non è dunque definitivamente crescente, neppure in senso debole. L'esempio mostra che una successione può superare qualsiasi quota pur continuando a fare qualche passo indietro.

<subsection*|Capitolo 8 — Monotonia e algebra dei limiti>

<strong|8.1.> La forma della ricorrenza suggerisce di dimostrare insieme che i termini sono definiti e che stanno fra 1 e 2. Per <math|n=1> il controllo <math|1≤a<rsub|n>≤2> è vero. Se vale all'indice <math|n>, allora <math|3≤2+a<rsub|n>≤4>, e prendendo la radice <math|1≤<sqrt|2+a<rsub|n>>≤2>. L'induzione dimostra quindi che la successione è limitata e che tutti i termini sono definiti.

Per la crescita, il primo confronto è <math|a<rsub|2>=<sqrt|3>›1=a<rsub|1>>. Se <math|a<rsub|n>›a<rsub|n-1>>, poiché la radice è crescente abbiamo <math|a<rsub|n+1>=<sqrt|2+a<rsub|n>>›<sqrt|2+a<rsub|n-1>>=a<rsub|n>>, e un'altra induzione dimostra la crescita stretta. Il teorema delle successioni monotone garantisce allora l'esistenza di un limite reale <math|L>, che sta in <math|[1,2]>.

Per calcolare <math|L> non abbiamo bisogno della continuità della radice. Anche i termini <math|a<rsub|n+1>> tendono a <math|L>, perché spostare la successione di un posto non cambia il limite. Nell'identità <math|a<rsub|n+1><rsup|2>=2+a<rsub|n>> compaiono solo somme e prodotti, quindi passando al limite otteniamo <math|L<rsup|2>=2+L>. La fattorizzazione <math|(L-2)(L+1)=0> dà <math|L=2> oppure <math|L=-1>, e la condizione <math|L∈[1,2]> lascia soltanto <math|L=2>.

Conviene notare l'ordine dei passaggi. L'equazione <math|L<rsup|2>=2+L> da sola non dimostra che il limite esiste, perché la abbiamo ottenuta supponendo che ci fosse. Prima l'esistenza, data da monotonia e limitatezza, e solo dopo il calcolo.

<strong|8.2.> Il coseno è al massimo 1 e <math|n≥0>, quindi <math|n cos n≤n> e

<\equation*>
n<rsup|2>-n cos n≥n<rsup|2>-n=n(n-1).
</equation*>

Per <math|n≥2> il membro destro è almeno <math|n<rsup|2>/2>, che tende a <math|+∞>, e il confronto conclude. Non abbiamo avuto bisogno di sapere nulla sul comportamento di <math|cos n>, ci è bastato sapere che resta fra <math|-1> e 1.

<subsection*|Capitolo 9 — Radici, rapporti e cancellazioni>

<strong|9.1.> Poniamo <math|b<rsub|n>=<binom|3n|n>=(3n)!/((2n)!n!)>, che è sempre positivo. Nel rapporto fra termini consecutivi scriviamo prima tutti i fattoriali:

<\equation*>
<frac|b<rsub|n+1>|b<rsub|n>>=<frac|(3n+3)!|(2n+2)!(n+1)!>·<frac|(2n)!n!|(3n)!>.
</equation*>

Molti fattori si semplificano. Il quoziente <math|(3n+3)!/(3n)!> lascia soltanto i tre fattori nuovi <math|(3n+3)(3n+2)(3n+1)>, e allo stesso modo al denominatore restano due fattori da <math|(2n+2)!/(2n)!> e uno da <math|(n+1)!/n!>. Quindi

<\equation*>
<frac|b<rsub|n+1>|b<rsub|n>>=<frac|(3n+3)(3n+2)(3n+1)|(2n+2)(2n+1)(n+1)>→<frac|27|4>.
</equation*>

Per vedere l'ultimo limite basta dividere numeratore e denominatore per <math|n<rsup|3>>, e restano i prodotti dei coefficienti dominanti, <math|3·3·3=27> e <math|2·2·1=4>. Il teorema che collega rapporto e radice dà allora <math|<sqrt|b<rsub|n>|n>→27/4>. Il criterio del rapporto ci avrebbe detto soltanto che <math|b<rsub|n>→+∞>, mentre qui ci serviva l'informazione più precisa sulla radice.

<strong|9.2.> Per <math|n≥7> il radicando è positivo, perché <math|n<rsup|2>-7n+2=n(n-7)+2≥2>. La radice di <math|n<rsup|2>-7n+2> è più piccola di <math|n>, quindi ci aspettiamo un risultato negativo. Razionalizzando otteniamo

<\equation*>
<sqrt|n<rsup|2>-7n+2>-n=<frac|-7n+2|<sqrt|n<rsup|2>-7n+2>+n>=<frac|-7+2/n|<sqrt|1-7/n+2/n<rsup|2>>+1>→-<frac|7|2>,
</equation*>

dove abbiamo diviso per <math|n›0> e usato la stima della radice vicino a 1 dimostrata nel capitolo. Il segno negativo conferma la previsione.

<subsection*|Capitolo 10 — Limiti di funzioni e limiti notevoli>

<strong|10.1.> Perché il limite da sinistra abbia senso, 2 deve essere un punto di accumulazione da sinistra del dominio <math|D>, cioè per ogni <math|δ›0> l'insieme <math|D∩[2-δ,2)> deve essere non vuoto. Con questa ipotesi, <math|lim<rsub|x→2<rsup|->>f(x)=+∞> significa che per ogni <math|M∈ℝ> esiste <math|δ›0> tale che <math|f(x)≥M> per ogni <math|x∈D∩[2-δ,2)>.

Per la continuità di <math|f(x)=3x+1> in un punto qualsiasi <math|x<rsub|0>∈ℝ> calcoliamo direttamente la distanza fra i valori, <math|\|f(x)-f(x<rsub|0>)\|=3\|x-x<rsub|0>\|>. Dato <math|ε›0>, scegliamo <math|δ=ε/3>. Se <math|\|x-x<rsub|0>\|≤δ>, la distanza fra i valori non supera <math|ε>, come richiesto.

<strong|10.2.> Nel primo limite gli argomenti piccoli sono <math|5x> e <math|2x>, e vogliamo farli comparire anche nei denominatori dei limiti notevoli:

<\equation*>
<frac|tan(5x)|log(1+2x)>=<frac|tan(5x)|5x>·<frac|5|2>·<frac|2x|log(1+2x)>→1·<frac|5|2>·1=<frac|5|2>.
</equation*>

Tutte le funzioni sono definite e i denominatori sono diversi da zero per <math|x≠0> abbastanza vicino a zero.

Nel secondo limite l'argomento tende a <math|3π/2>, non a zero, quindi spostiamo il centro ponendo <math|y=x-3π/2>. Allora <math|y→0>, <math|2x-3π=2y> e la formula di addizione dà <math|cos(3π/2+y)=sin y>. Dunque

<\equation*>
<frac|cos x|2x-3π>=<frac|sin y|2y>→<frac|1|2>.
</equation*>

Il segno positivo è coerente con quello che succede a destra di <math|3π/2>, dove sia <math|sin y> sia il denominatore sono positivi.

<strong|10.3.> Per <math|g> basta osservare che <math|2+sin x≥1>. Quando <math|x›0> otteniamo <math|g(x)≥x>, e quindi <math|g(x)→+∞>.

Per <math|f> la stessa idea darebbe soltanto <math|f(x)≥0>, che non basta, perché il fattore <math|1+sin x> torna a zero per quanto avanti andiamo. Proviamo allora con due successioni di argomenti. Lungo <math|u<rsub|n>=πn> il seno vale zero e <math|f(u<rsub|n>)=πn→+∞>, mentre lungo <math|v<rsub|n>=3π/2+2πn> il seno vale <math|-1> e <math|f(v<rsub|n>)=0>. Entrambe le successioni tendono a <math|+∞>, ma i valori hanno limiti diversi, quindi il limite di <math|f> non esiste.

<subsection*|Capitolo 11 — Simboli di Landau>

<strong|11.1.> Vicino a zero <math|x<rsup|3>/x<rsup|2>=x→0>, quindi <math|x<rsup|3>=o(x<rsup|2>)>, mentre il rapporto opposto <math|1/x> non tende a zero. Per <math|x→+∞> i ruoli si scambiano, perché <math|x<rsup|2>/x<rsup|3>=1/x→0>, e quindi <math|x<rsup|2>=o(x<rsup|3>)>.

Per <math|x sin(1/x)> il rapporto con <math|x> è <math|sin(1/x)>, che è limitato ma non tende a zero. Lungo <math|x<rsub|n>=1/(π/2+2πn)> vale 1, e lungo <math|y<rsub|n>=1/(3π/2+2πn)> vale <math|-1>. La funzione è quindi <math|O(x)>, ma non <math|o(x)>.

<strong|11.2.> Al numeratore le due funzioni tendono entrambe a 1, quindi le costanti si cancellano e dobbiamo guardare i termini lineari. L'argomento dell'esponenziale è <math|arctan(2x)=2x+o(x)>, e sostituendolo in <math|e<rsup|t>=1+t+o(t)> otteniamo <math|e<rsup|arctan(2x)>=1+2x+o(x)>. Lo sviluppo binomiale dà <math|(1+x)<rsup|1/3>=1+x/3+o(x)>. La differenza è quindi <math|5x/3+o(x)>, mentre il denominatore è <math|5x-x+o(x)=4x+o(x)>.

Dividendo numeratore e denominatore per <math|x> resta un rapporto che tende a <math|(5/3)/4=5/12>. Sono stati i resti espliciti a permetterci di sottrarre con sicurezza due quantità che tendono entrambe a 1.

<subsection*|Capitolo 12 — Derivate>

<strong|12.1.> Per l'esponenziale <math|f(0)=1> e <math|f<rprime|'>(0)=1>, quindi la tangente in zero è <math|y=1+x>.

La funzione <math|\|x\|> si comporta in modo diverso. È continua in zero, perché i suoi valori tendono a zero da entrambi i lati, ma il suo rapporto incrementale è <math|\|h\|/h>, che vale 1 da destra e <math|-1> da sinistra, e quindi la derivata non esiste. Continuità e derivabilità non coincidono. La prima controlla soltanto i valori, mentre la seconda chiede anche che ci sia un'unica pendenza.

<strong|12.2.> Per <math|x›0> scriviamo <math|x<rsup|x>=e<rsup|x log x>>. Derivando l'esponente con la regola del prodotto troviamo <math|(x log x)<rprime|'>=log x+1>, e la regola della catena dà <math|(x<rsup|x>)<rprime|'>=x<rsup|x>(log x+1)>.

Per l'altra funzione scriviamo <math|(sin x)<rsup|cos x>=e<rsup|cos x log(sin x)>>. L'esponente ha derivata <math|-sin x log(sin x)+cos<rsup|2>x/sin x>, e moltiplicando per l'esponenziale otteniamo

<\equation*>
[(sin x)<rsup|cos x>]<rprime|'>=(sin x)<rsup|cos x><around*|(|-sin x log(sin x)+<frac|cos<rsup|2>x|sin x>|)>.
</equation*>

La condizione sulla base serve perché la potenza reale è definita attraverso il logaritmo, che richiede una base positiva, e perché le regole di derivazione si applicano su un intervallo aperto dove la base resta positiva.

<subsection*|Capitolo 13 — De L'Hôpital e Taylor>

<strong|13.1.> Usiamo la formula binomiale con <math|a=1/2>. Il coefficiente quadratico è <math|a(a-1)/2=-1/8>, quindi

<\equation*>
<sqrt|1+x>=1+<frac|x|2>-<frac|x<rsup|2>|8>+o(x<rsup|2>).
</equation*>

Togliendo il termine costante e quello lineare resta <math|-x<rsup|2>/8+o(x<rsup|2>)>, e dividendo per <math|x<rsup|2>> il limite vale <math|-1/8>. Il dominio non crea problemi, perché vicino a zero <math|1+x›0>.

<strong|13.2.> Il rapporto delle derivate <math|1-sin x> non ha limite. Manca quindi un'ipotesi del teorema, e De L'Hôpital non dice nulla sul rapporto di partenza, né che ha limite né che non lo ha.

Basta però riscrivere la frazione come <math|(x+cos x)/x=1+cos x/x>. Poiché <math|\|cos x/x\|≤1/x→0> per <math|x→+∞>, il limite vale 1.

<subsection*|Capitolo 14 — Operazioni con gli sviluppi>

<strong|14.1.> Per scegliere l'ordine guardiamo i fattori esterni. L'arcotangente è moltiplicata per <math|n>, e poi tutto è moltiplicato per <math|n<rsup|2>>, quindi ci serve un resto che, moltiplicato per <math|n<rsup|3>>, tenda ancora a zero. Taylor all'ordine 3 dà

<\equation*>
arctan(1/n)=<frac|1|n>-<frac|1|3n<rsup|3>>+o(1/n<rsup|3>),
</equation*>

e quindi <math|n arctan(1/n)=1-1/(3n<rsup|2>)+o(1/n<rsup|2>)>. Sottraendo da 1 e moltiplicando per <math|n<rsup|2>> resta <math|1/3+o(1)>, e il limite vale <math|1/3>. Non serviva arrivare al grado 4.

<strong|14.2.> Per la frazione possiamo fare un conto esatto,

<\equation*>
<frac|n<rsup|3>+5|n<rsup|3>-2>=1+<frac|7|n<rsup|3>-2>=1+o(1/n),
</equation*>

mentre per la radice usiamo l'esponenziale, <math|4<rsup|1/n>=e<rsup|(log 4)/n>=1+(log 4)/n+o(1/n)>.

Il secondo termine si allontana da 1 alla scala <math|1/n>, il primo alla scala molto più piccola <math|1/n<rsup|3>>. È quindi la radice a discostarsi da 1 più lentamente, e nella differenza la parte principale è <math|-(log 4)/n>. Il segno meno corrisponde al fatto che, definitivamente, il secondo termine è il più grande dei due.

<strong|14.3.> Il coefficiente quadratico di <math|(1+x)<rsup|1/3>> è <math|(1/3)(-2/3)/2=-1/9>, e sostituendo anche <math|-x> al posto di <math|x> troviamo

<\equation*>
(1±x)<rsup|1/3>=1±<frac|x|3>-<frac|x<rsup|2>|9>+o(x<rsup|2>).
</equation*>

Nella somma i termini lineari, con segni opposti, si cancellano, mentre quelli quadratici si sommano, e il numeratore diventa <math|-2x<rsup|2>/9+o(x<rsup|2>)>. Il denominatore è <math|x<rsup|2>/2+o(x<rsup|2>)>, perché <math|x<rsup|4>=o(x<rsup|2>)>. Il limite vale quindi <math|(-2/9)/(1/2)=-4/9>.
