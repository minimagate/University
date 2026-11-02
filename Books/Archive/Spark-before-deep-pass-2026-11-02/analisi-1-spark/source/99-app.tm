<appendix|Soluzioni ragionate>

Ogni sezione richiama un capitolo. Il numero 4.1 indica il primo esercizio della Verifica 4. Prima di leggere, prova a motivare la scelta del primo passaggio.

<subsection*|Capitolo 1 — Logica e insiemi>

<strong|1.1.> Indichiamo con <math|P(a,s,e)> la frase «nell'anno <math|a> lo studente <math|s> fallisce l'esame <math|e>». L'enunciato è <math|∀a∃s∀e,P(a,s,e)>. Negando dall'esterno otteniamo <math|∃a∀s∃e,¬P(a,s,e)>: esiste un anno in cui ogni studente supera almeno un esame, assumendo che l'alternativa sia superare o fallire. Non si richiede uno stesso esame superato da tutti: la scelta può dipendere dallo studente.

<strong|1.2.> Per formare un sottoinsieme di <math|{a,b}> decidiamo se prendere <math|a> e se prendere <math|b>. Otteniamo <math|𝒫({a,b})={∅,{a},{b},{a,b}}>, supponendo <math|a≠b>. La frase <math|∅∈{∅}> è vera perché il vuoto è l'unico elemento dell'insieme a destra. Anche <math|∅⊆{∅}> è vera, perché il vuoto è contenuto in ogni insieme. <math|{∅}⊆∅> è falsa: l'elemento <math|∅> del primo insieme non appartiene al secondo, che non ha elementi.

<subsection*|Capitolo 2 — Funzioni>

<strong|2.1.> L'equazione <math|y=3x-2> equivale a <math|x=(y+2)/3>. Per ogni <math|y∈ℝ> questo fornisce una partenza, quindi <math|f> è suriettiva. La partenza è unica, oppure direttamente <math|3x<rsub|1>-2=3x<rsub|2>-2> implica <math|x<rsub|1>=x<rsub|2>>: <math|f> è iniettiva. Dunque <math|f<rsup|-1>(y)=(y+2)/3>. Sostituendo si verifica che entrambe le composizioni sono identità.

<strong|2.2.> Su <math|[-1,2]> il quadrato assume il minimo 0 in un punto interno e il massimo 4 in 2; ogni valore intermedio viene raggiunto prendendo la radice non negativa, che sta in <math|[0,2]>. Quindi <math|q([-1,2])=[0,4]>, mentre sostituire soltanto gli estremi avrebbe suggerito erroneamente <math|[1,4]>. La controimmagine richiede <math|1≤x<rsup|2>≤4>, cioè <math|1≤\|x\|≤2>: otteniamo <math|[-2,-1]∪[1,2]>.

<subsection*|Capitolo 3 — Induzione>

<strong|3.1.> Per <math|n=1> entrambi i membri valgono 1. Supponiamo <math|1+⋯+n=n(n+1)/2>. Aggiungiamo il nuovo addendo <math|n+1>:

<\equation*>
1+⋯+n+(n+1)=<frac|n(n+1)|2>+(n+1)=<frac|(n+1)(n+2)|2>.
</equation*>

L'ipotesi è usata nella prima uguaglianza, dove sostituiamo la somma precedente. L'ultima espressione è la formula con indice <math|n+1>, quindi l'induzione conclude.

<strong|3.2.> Per <math|n=0> vale <math|1=1>. Per 1, 2 e 3 la proprietà è falsa: confrontiamo 1 con 2, 2 con 4 e 6 con 8. Per <math|n=4> vale <math|24≥16>. Da <math|n!≥2<rsup|n>> con <math|n≥4> segue

<\equation*>
(n+1)!=(n+1)n!≥(n+1)2<rsup|n>≥2·2<rsup|n>=2<rsup|n+1>.
</equation*>

L'ultimo confronto usa <math|n+1≥2>. La base 4 e il passo danno tutti i casi successivi. La risposta completa è <math|n=0> oppure <math|n≥4>: una base vera a 0 non attraversa da sola i tre casi falsi.

<subsection*|Capitolo 4 — Completezza ed estremi>

<strong|4.1.> Per <math|n≥1>, <math|1-1/n≥0>, e con <math|n=1> si ottiene 0. Quindi <math|min A=inf A=0>. Tutti gli elementi sono minori di 1, che è un maggiorante. Dato <math|ε›0>, la proprietà archimedea permette di scegliere <math|n›1/ε>, così <math|1-1/n›1-ε>. La caratterizzazione dà <math|sup A=1>. Il massimo non esiste, perché 1 non appartiene ad <math|A>.

<strong|4.2.> Poniamo <math|l=inf A>. Dalla proprietà <math|l≤a> per ogni <math|a∈A> segue <math|-a≤-l>: <math|-l> è un maggiorante di <math|-A>. Se <math|M> fosse un maggiorante più piccolo, avremmo <math|-a≤M> per ogni <math|a∈A>, cioè <math|-M≤a>. Ma <math|-M›l> sarebbe un minorante di <math|A> maggiore dell'infimo, impossibile. Dunque <math|sup(-A)=-l>.

<subsection*|Capitolo 5 — Grafici e funzioni elementari>

<strong|5.1.> Per <math|λ‹0> non ci sono soluzioni. Con <math|λ=0> otteniamo <math|x=±2>, quindi due. Per <math|λ›0>, le possibilità sono <math|x<rsup|2>=4+λ> e <math|x<rsup|2>=4-λ>. La prima dà sempre due soluzioni. La seconda ne dà due se <math|0‹λ‹4>, una se <math|λ=4>, nessuna se <math|λ›4>. Il numero totale è quindi, nell'ordine dei casi <math|λ‹0>, <math|λ=0>, <math|0‹λ‹4>, <math|λ=4>, <math|λ›4>: 0, 2, 4, 3, 2. Il caso <math|λ=0> va separato perché allora le due equazioni coincidono e non dobbiamo contare due volte le stesse soluzioni.

<strong|5.2.> Il dominio richiede <math|3x+1›0> e <math|x+5›0>, dunque <math|x›-1/3>. Il logaritmo è iniettivo sui positivi, quindi l'equazione equivale a <math|3x+1=x+5>. Otteniamo <math|x=2>, che appartiene al dominio; entrambi gli argomenti valgono 7. La verifica del dominio completa l'equivalenza.

<subsection*|Capitolo 6 — Trigonometria e inverse>

<strong|6.1.> Il seno di <math|5π/6> vale <math|1/2>; l'angolo con lo stesso seno nell'intervallo <math|[-π/2,π/2]> è <math|π/6>. Quindi <math|arcsin(sin(5π/6))=π/6>. Il coseno di <math|7π/4> vale <math|<sqrt|2>/2>; l'angolo del ramo <math|[0,π]> con quel coseno è <math|π/4>. Quindi <math|arccos(cos(7π/4))=π/4>.

<strong|6.2.> Prima occorre <math|t∈[-1,1]> perché l'arcocoseno sia definito. Posto <math|α=arccos t>, abbiamo <math|cos α=t> e <math|sin α=<sqrt|1-t<rsup|2>>>. La tangente esiste se <math|cos α≠0>, cioè <math|t≠0>. Pertanto il dominio è <math|[-1,0)∪(0,1]> e

<\equation*>
tan(arccos t)=<frac|<sqrt|1-t<rsup|2>>|t>.
</equation*>

Negli estremi <math|t=±1> il numeratore è zero e il denominatore non nullo: la formula restituisce correttamente 0. Per <math|t‹0> il rapporto è negativo, come la tangente nel secondo quadrante.

<subsection*|Capitolo 7 — Successioni e definizione di limite>

<strong|7.1.> Il limite proposto suggerisce di misurare la distanza da 1. Per <math|n≥0> otteniamo

<\equation*>
<around*|\||<frac|n|n+1>-1|\|>=<frac|1|n+1>.
</equation*>

Fissiamo <math|ε›0> e scegliamo un intero <math|N≥1/ε>. Se <math|n≥N>, allora <math|1/(n+1)≤ε>. Questo dimostra il limite con la definizione. Inoltre <math|n/(n+1)‹1> per ogni <math|n≥0>, quindi l'arrivo è da sinistra: <math|1<rsup|->>.

<strong|7.2.> Il termine alterno è sempre almeno <math|-2>, perciò <math|a<rsub|n>≥n-2→+∞>. Il confronto dimostra <math|a<rsub|n>→+∞>. La monotonia è una domanda diversa. Fra un indice pari e il dispari successivo troviamo

<\equation*>
a<rsub|2k>=2k+2,<space|2em>a<rsub|2k+1>=2k-1.
</equation*>

La successione scende di 3 in tutti questi passaggi, arbitrariamente avanti. Non è dunque definitivamente crescente, neppure in senso debole. Il fatto che le discese continuino non impedisce a tutti i termini di superare infine ogni soglia.

<subsection*|Capitolo 8 — Monotonia e algebra dei limiti>

<strong|8.1.> La ricorrenza suggerisce di mantenere il controllo <math|1≤a<rsub|n>≤2>. Vale per <math|n=1>. Se vale all'indice <math|n>, allora <math|3≤2+a<rsub|n>≤4>, dunque <math|1≤<sqrt|2+a<rsub|n>>≤2>. L'induzione dimostra la limitatezza e garantisce che tutti i termini siano definiti.

Per la crescita, il primo confronto è <math|a<rsub|2>=<sqrt|3>›a<rsub|1>>. Se <math|a<rsub|n>›a<rsub|n-1>>, la radice crescente dà <math|a<rsub|n+1>=<sqrt|2+a<rsub|n>>›<sqrt|2+a<rsub|n-1>>=a<rsub|n>>. Un'altra induzione dimostra la crescita stretta. Per il teorema delle monotone esiste un limite reale <math|L∈[1,2]>.

Per calcolarlo non occorre ancora usare la continuità della radice. I termini <math|a<rsub|n+1>> tendono allo stesso <math|L> perché spostare di un posto una coda non cambia il limite. Nell'identità <math|a<rsub|n+1><rsup|2>=2+a<rsub|n>> usiamo soltanto somma e prodotto: <math|L<rsup|2>=2+L>. La fattorizzazione <math|(L-2)(L+1)=0> dà <math|L=2> oppure <math|L=-1>. La condizione <math|L∈[1,2]> seleziona <math|L=2>. Non abbiamo dedotto l'esistenza del limite dalla sola equazione: l'abbiamo prima ottenuta con monotonia e limitatezza.

<strong|8.2.> Poiché <math|cos n≤1> e <math|n≥0>, vale <math|n<rsup|2>-n cos n≥n<rsup|2>-n=n(n-1)>. Per <math|n≥2>, il membro destro è almeno <math|n<rsup|2>/2>, che tende a <math|+∞>. Il confronto conclude. Non occorre conoscere un limite del coseno: basta una sua limitazione uniforme.

<subsection*|Capitolo 9 — Radici, rapporti e cancellazioni>

<strong|9.1.> Poniamo <math|b<rsub|n>=<binom|3n|n>=(3n)!/((2n)!n!)>. I termini sono positivi. Nel rapporto fra termini consecutivi i fattoriali si cancellano quasi del tutto:

<\equation*>
<frac|b<rsub|n+1>|b<rsub|n>>=<frac|(3n+3)(3n+2)(3n+1)|(2n+2)(2n+1)(n+1)>→<frac|27|4>.
</equation*>

Per leggere l'ultimo limite dividiamo numeratore e denominatore per <math|n<rsup|3>>: rimangono i prodotti dei coefficienti dominanti, <math|3·3·3> e <math|2·2·1>. Il teorema rapporto-radice dà <math|<sqrt|b<rsub|n>|n>→27/4>. Il criterio del rapporto avrebbe dato soltanto <math|b<rsub|n>→+∞>; qui serviva l'informazione più precisa sulla radice.

<strong|9.2.> Per <math|n≥7> il radicando è positivo, perché <math|n<rsup|2>-7n+2=n(n-7)+2≥2>. La radice è minore di <math|n>, quindi il risultato sarà negativo. Razionalizzando otteniamo

<\equation*>
<sqrt|n<rsup|2>-7n+2>-n=<frac|-7n+2|<sqrt|n<rsup|2>-7n+2>+n>=<frac|-7+2/n|<sqrt|1-7/n+2/n<rsup|2>>+1>→-<frac|7|2>.
</equation*>

Abbiamo diviso per <math|n›0> e usato la stima della radice vicino a 1 dimostrata nel capitolo. Il limite negativo conferma il confronto iniziale.

<subsection*|Capitolo 10 — Limiti di funzioni e limiti notevoli>

<strong|10.1.> Occorre che 2 sia punto di accumulazione da sinistra del dominio <math|D>: per ogni <math|δ›0>, l'insieme <math|D∩[2-δ,2)> è non vuoto. La definizione del limite richiesto è: per ogni <math|M∈ℝ> esiste <math|δ›0> tale che, per ogni <math|x∈D∩[2-δ,2)>, vale <math|f(x)≥M>.

Per la continuità di <math|f(x)=3x+1> in un qualunque <math|x<rsub|0>∈ℝ>, misuriamo direttamente la differenza: <math|\|f(x)-f(x<rsub|0>)\|=3\|x-x<rsub|0>\|>. Dato <math|ε›0>, scegliamo <math|δ=ε/3>. Per <math|\|x-x<rsub|0>\|≤δ> la distanza dei valori è <math|≤ε>, come richiesto.

<strong|10.2.> Nel primo limite gli argomenti piccoli sono <math|5x> e <math|2x>. Facciamoli comparire anche nei denominatori:

<\equation*>
<frac|tan(5x)|log(1+2x)>=<frac|tan(5x)|5x>·<frac|5|2>·<frac|2x|log(1+2x)>→1·<frac|5|2>·1=<frac|5|2>.
</equation*>

Tutte le funzioni sono definite e i denominatori sono non nulli per <math|x≠0> abbastanza vicino a zero. Nel secondo limite poniamo <math|y=x-3π/2>. Allora <math|y→0>, <math|2x-3π=2y> e la formula di addizione dà <math|cos(3π/2+y)=sin y>. Dunque

<\equation*>
<frac|cos x|2x-3π>=<frac|sin y|2y>→<frac|1|2>.
</equation*>

Il segno è positivo: a destra del centro, sia il seno del piccolo incremento sia il denominatore sono positivi.

<strong|10.3.> Per <math|g> basta <math|2+sin x≥1>. Quando <math|x›0>, otteniamo <math|g(x)≥x→+∞>, quindi <math|g(x)→+∞>.

Per <math|f> la stima corrispondente sarebbe soltanto <math|f(x)≥0>, insufficiente. Il fattore <math|1+sin x> si annulla ancora arbitrariamente avanti. Per <math|u<rsub|n>=πn> abbiamo <math|f(u<rsub|n>)=πn→+∞>; per <math|v<rsub|n>=3π/2+2πn> abbiamo <math|f(v<rsub|n>)=0>. Le due successioni di argomenti vanno entrambe a <math|+∞>, ma i valori hanno limiti diversi. Il limite di <math|f> non esiste.

<subsection*|Capitolo 11 · Simboli di Landau>

<strong|11.1.> Vicino a zero, <math|x<rsup|3>/x<rsup|2>=x→0>, quindi <math|x<rsup|3>=o(x<rsup|2>)>. Il rapporto opposto è <math|1/x>, che non tende a zero. Per <math|x→+∞> i ruoli si scambiano: <math|x<rsup|2>/x<rsup|3>=1/x→0>. Per <math|x sin(1/x)> il rapporto con <math|x> è <math|sin(1/x)>, limitato ma non convergente a zero: lungo <math|x<rsub|n>=1/(π/2+2πn)> vale 1, lungo <math|y<rsub|n>=1/(3π/2+2πn)> vale <math|-1>. Abbiamo dunque O grande, ma non o piccolo.

<strong|11.2.> L'argomento dell'esponenziale è <math|arctan(2x)=2x+o(x)>. Sostituendolo in <math|e<rsup|t>=1+t+o(t)> otteniamo <math|e<rsup|arctan(2x)>=1+2x+o(x)>. Lo sviluppo binomiale dà <math|(1+x)<rsup|1/3>=1+x/3+o(x)>. La differenza è <math|5x/3+o(x)>, mentre il denominatore è <math|5x-x+o(x)=4x+o(x)>. Dividendo per <math|x> resta un rapporto con limite <math|(5/3)/4=5/12>. I resti espliciti giustificano la sottrazione delle due quantità che tendono a 1.

<subsection*|Capitolo 12 · Derivate>

<strong|12.1.> Nell'esponenziale <math|f(0)=1> e <math|f<rprime|'>(0)=1>; la tangente è <math|y=1+x>. Per <math|\|x\|>, invece, il valore tende a zero da entrambi i lati: la funzione è continua in zero. Il rapporto incrementale è <math|\|h\|/h>, uguale a 1 da destra e <math|-1> da sinistra. La derivata non esiste. La continuità controlla il valore, la derivabilità richiede anche un'unica pendenza locale.

<strong|12.2.> Per <math|x›0> scriviamo <math|x<rsup|x>=e<rsup|x log x>>. Derivando prima l'esponente con il prodotto, troviamo <math|(x log x)<rprime|'>=log x+1>. Quindi <math|(x<rsup|x>)<rprime|'>=x<rsup|x>(log x+1)>.

Per l'altra funzione scriviamo <math|(sin x)<rsup|cos x>=e<rsup|cos x log(sin x)>>. L'esponente ha derivata <math|-sin x log(sin x)+cos<rsup|2>x/sin x>. Moltiplicando per l'esponenziale otteniamo

<\equation*>
[(sin x)<rsup|cos x>]<rprime|'>=(sin x)<rsup|cos x><around*|(|-sin x log(sin x)+<frac|cos<rsup|2>x|sin x>|)>.
</equation*>

La base deve essere positiva per definire la potenza reale attraverso il logaritmo e applicare queste regole su un intervallo aperto.

<subsection*|Capitolo 13 · De L'Hôpital e Taylor>

<strong|13.1.> Nella formula binomiale poniamo <math|a=1/2>. Il coefficiente quadratico è <math|a(a-1)/2=-1/8>. Dunque <math|<sqrt|1+x>=1+x/2-x<rsup|2>/8+o(x<rsup|2>)>. Sottraendo il termine costante e quello lineare resta <math|-x<rsup|2>/8+o(x<rsup|2>)>. Dividendo per <math|x<rsup|2>> il limite vale <math|-1/8>. Il dominio è rispettato perché <math|1+x›0> vicino a zero.

<strong|13.2.> Il rapporto delle derivate <math|1-sin x> non ha limite: quindi l'ipotesi necessaria per applicare il teorema non è soddisfatta e De L'Hôpital non dà una conclusione sul rapporto originale. Scrivendo invece <math|(x+cos x)/x=1+cos x/x>, osserviamo <math|\|cos x/x\|≤1/x→0> per <math|x→+∞>. Il limite è 1.

<subsection*|Capitolo 14 · Operazioni con gli sviluppi>

<strong|14.1.> Il fattore esterno complessivo è <math|n<rsup|3>> sul termine dell'arcotangente: serve un resto che, moltiplicato per <math|n<rsup|3>>, tenda a zero. Taylor all'ordine 3 dà

<\equation*>
arctan(1/n)=<frac|1|n>-<frac|1|3n<rsup|3>>+o(1/n<rsup|3>).
</equation*>

Quindi <math|n arctan(1/n)=1-1/(3n<rsup|2>)+o(1/n<rsup|2>)>. Dopo la sottrazione da 1 e la moltiplicazione per <math|n<rsup|2>> rimane <math|1/3+o(1)>. Il limite vale <math|1/3>. Non era necessario arrivare al grado 4.

<strong|14.2.> Prima riscriviamo la frazione in modo esatto:

<\equation*>
<frac|n<rsup|3>+5|n<rsup|3>-2>=1+<frac|7|n<rsup|3>-2>=1+o(1/n).
</equation*>

Per la radice usiamo l'esponenziale: <math|4<rsup|1/n>=e<rsup|(log4)/n>=1+(log4)/n+o(1/n)>. Il secondo termine si scosta da 1 alla scala <math|1/n>, mentre il primo alla scala <math|1/n<rsup|3>>. Sottraendo, la parte principale è <math|-(log4)/n>; il segno negativo corrisponde al fatto che, definitivamente, il secondo termine è maggiore.

<strong|14.3.> Il coefficiente quadratico di <math|(1+x)<rsup|1/3>> è <math|(1/3)(-2/3)/2=-1/9>. Sostituendo anche <math|-x> troviamo

<\equation*>
(1±x)<rsup|1/3>=1±<frac|x|3>-<frac|x<rsup|2>|9>+o(x<rsup|2>).
</equation*>

I termini lineari hanno segni opposti e si cancellano; quelli quadratici si sommano. Il numeratore è <math|-2x<rsup|2>/9+o(x<rsup|2>)>. Il denominatore è <math|x<rsup|2>/2+o(x<rsup|2>)>, perché <math|x<rsup|4>=o(x<rsup|2>)>. Il limite vale <math|(-2/9)/(1/2)=-4/9>.
