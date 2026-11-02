<appendix|Soluzioni ragionate>

Le soluzioni seguono l'ordine dei capitoli, e il numero 4.1, per esempio, indica il primo esercizio del capitolo 4. Prima di leggerle prova a impostare il problema da solo, anche solo scegliendo il primo passo. Confrontare il tuo tentativo con il ragionamento scritto qui insegna molto più che leggere la risposta.

<subsection*|Capitolo 1 — Il linguaggio matematico e l'induzione>

<strong|1.1.> La base è <math|n=1>, dove la formula dice <math|1=1·2/2>, che è vero. Per il passo supponiamo che <math|1+⋯+n=n(n+1)/2> e guardiamo la somma fino a <math|n+1>. Come suggerito, separiamo l'ultimo addendo e usiamo l'ipotesi per gli altri:

<\equation*>
1+⋯+n+(n+1)=<frac|n(n+1)|2>+(n+1)=<frac|(n+1)(n+2)|2>.
</equation*>

L'ultimo passaggio raccoglie il fattore comune <math|n+1>, e il risultato è proprio la formula con <math|n+1> al posto di <math|n>. Base e passo insieme dimostrano la formula per ogni <math|n≥1>.

<strong|1.2.> Partendo da 0 e aggiungendo ogni volta 2, il ragionamento raggiunge soltanto <math|0,2,4,6,…>, e dei numeri dispari non dice nulla. Il problema è che il passo porta da <math|n> a <math|n+2>, mentre per coprire tutti i naturali servirebbe un passo da <math|n> a <math|n+1>. Il ragionamento si può comunque salvare cambiando la proprietà, cioè facendo l'induzione su <math|Q(k)>: «<math|2k> è pari». In questo modo dimostriamo correttamente che tutti i numeri della forma <math|2k> sono pari, senza pretendere che ogni naturale abbia quella forma.

<subsection*|Capitolo 2 — Funzioni e conteggio>

<strong|2.1.> Partiamo da tutte le funzioni da quattro elementi a tre, che sono <math|3<rsup|4>=81>. Fissato uno dei tre valori di arrivo, le funzioni che lo evitano sono <math|2<rsup|4>=16>, e le togliamo per ciascun valore, cioè togliamo <math|3·16>. Così però abbiamo esagerato, perché una funzione costante evita due valori e l'abbiamo tolta due volte. Rimettiamo quindi le tre funzioni costanti, una per ogni coppia di valori evitati. Nessuna funzione evita tutti e tre i valori, perché il dominio non è vuoto, e il totale è

<\equation*>
81-3·16+3·1=36.
</equation*>

<strong|2.2.> Per avere variabili positive diamo prima un'unità a ciascuna, ponendo <math|u=x-1>, <math|v=y-1> e <math|w=z-1>. L'equazione diventa <math|u+v+w=4> con variabili non negative, e il metodo delle stelle e sbarre dà <math|<binom|6|2>=15> soluzioni. Dividere per <math|3!=6> per contare le terne senza ordine sarebbe sbagliato, perché non tutte le terne hanno lo stesso numero di ordinamenti. La terna <math|(1,2,4)> si può ordinare in sei modi diversi, mentre <math|(1,1,5)> soltanto in tre, e quindi la divisione per 6 tratterebbe in modo uguale terne che compaiono un numero diverso di volte.

<subsection*|Capitolo 3 — Successioni e ricorrenze>

<strong|3.1.> La regola è la stessa del capitolo, quindi le radici caratteristiche sono ancora 1 e 2 e cerchiamo <math|a<rsub|n>=A+B2<rsup|n>>. Cambiano soltanto i dati iniziali, che ora impongono <math|A+B=5> e <math|A+2B=7>. Sottraendo troviamo <math|B=2> e quindi <math|A=3>, cioè <math|a<rsub|n>=3+2<rsup|n+1>>. Questa formula rispetta la ricorrenza, perché combina due soluzioni caratteristiche, e parte da 5 e 7, quindi per l'unicità è la successione cercata. Come ulteriore controllo, il termine successivo vale 11 sia con la formula sia con la regola, <math|3·7-2·5=11>.

<strong|3.2.> Con la ricorrenza, partendo da <math|T<rsub|0>=T<rsub|1>=1>, troviamo successivamente <math|T<rsub|2>=2>, <math|T<rsub|3>=3>, <math|T<rsub|4>=5>, <math|T<rsub|5>=8> e infine <math|T<rsub|6>=13>. Per il secondo conteggio distinguiamo quante coppie orizzontali compaiono, che possono essere 0, 1, 2 o 3. I contributi sono rispettivamente <math|<binom|6|0>=1>, <math|<binom|5|1>=5>, <math|<binom|4|2>=6> e <math|<binom|3|3>=1>, e la loro somma è di nuovo 13.

<subsection*|Capitolo 4 — Divisione, MCD e algoritmo di Euclide>

<strong|4.1.> Il numero <math|-29> cade fra <math|-30> e <math|-24>, due multipli consecutivi di 6. Il resto si misura a partire dal multiplo più basso, quindi <math|-29=(-5)·6+1>, con quoziente <math|-5> e resto 1. Il resto è non negativo e minore di 6, come richiede la divisione euclidea.

<strong|4.2.> Le divisioni sono <math|84=2·30+24>, poi <math|30=1·24+6> e infine <math|24=4·6+0>. L'ultimo resto non nullo è 6, e quindi <math|gcd(84,30)=6>. Fermarsi alla prima divisione non basta, perché ci dice soltanto che il MCD cercato è uguale a <math|gcd(30,24)>. Il resto 24 non divide 30, e quindi non può essere il MCD.

<subsection*|Capitolo 5 — Bézout e fattorizzazione in primi>

<strong|5.1.> Euclide dà <math|30=18+12>, poi <math|18=12+6> e infine <math|12=2·6>, quindi il MCD è 6. Risalendo troviamo <math|6=18-12=18-(30-18)=2·18-30>. Ogni combinazione intera di 30 e 18 è un multiplo di 6, e per questo non potrà mai valere 7. Il 12, invece, è un multiplo di 6, e moltiplicando l'identità per 2 lo otteniamo esplicitamente: <math|12=4·18-2·30>.

<strong|5.2.> La fattorizzazione è <math|180=2<rsup|2>3<rsup|2>5>, quindi i divisori positivi sono <math|(2+1)(2+1)(1+1)=18>. Scriviamo anche <math|48=2<rsup|4>3>. Per il MCD prendiamo per ogni primo l'esponente minore, dando esponente zero al 5 che in 48 manca, e otteniamo <math|2<rsup|2>3=12>. Per il mcm prendiamo invece gli esponenti maggiori, e otteniamo <math|2<rsup|4>3<rsup|2>5=720>. La relazione fra MCD e mcm ci offre un controllo, perché <math|12·720=8640=180·48>.

<subsection*|Capitolo 6 — Equazioni diofantee>

<strong|6.1.> Il MCD di 4 e 6 è 2, che divide 14, quindi le soluzioni esistono. Dividendo per 2 otteniamo <math|2x+3y=7>, e a partire dalla soluzione <math|(2,1)> troviamo tutte le altre spostandoci a passi di <math|(3,-2)>:

<\equation*>
x=2+3t,<space|2em>y=1-2t,<space|2em>t∈ℤ.
</equation*>

Chiedere <math|x,y≥0> significa chiedere <math|t≥-2/3> e <math|t≤1/2>. L'unico intero fra questi due limiti è 0, e quindi l'unica soluzione non negativa è <math|(2,1)>.

<strong|6.2.> Poniamo <math|u=x+y> e <math|v=x-y>, così che l'equazione diventi <math|uv=8>, con <math|u> e <math|v> della stessa parità perché <math|x> e <math|y> siano interi. Le coppie <math|(1,8)> e <math|(8,1)> vanno quindi scartate, e fra quelle positive restano <math|(2,4)> e <math|(4,2)>, che danno <math|(x,y)=(3,-1)> e <math|(3,1)>. Le coppie negative <math|(-2,-4)> e <math|(-4,-2)> danno <math|(-3,1)> e <math|(-3,-1)>, e queste quattro sono tutte le soluzioni. Senza il controllo della parità, con <math|(1,8)> avremmo ottenuto <math|x=9/2>, che non è intero.

<subsection*|Capitolo 7 — Congruenze e classi>

<strong|7.1.> Tre rappresentanti di <math|[-2]<rsub|7>> sono <math|-2>, <math|5> e <math|12>, e quello fra 0 e 6 è 5, perché <math|-2=(-1)·7+5>. Per fare i conti conviene ridurre subito, scrivendo <math|[12]<rsub|7>=[5]<rsub|7>> e <math|[17]<rsub|7>=[3]<rsub|7>>. La somma è allora <math|[8]<rsub|7>=[1]<rsub|7>> e il prodotto è <math|[15]<rsub|7>=[1]<rsub|7>>. Che somma e prodotto diano la stessa classe è soltanto una coincidenza di questo esempio.

<strong|7.2.> La prima regola è ben definita. Se <math|a≡b<pmod|5>>, anche <math|a+1≡b+1<pmod|5>>, perché la differenza è ancora <math|a-b>, e quindi rappresentanti diversi della stessa classe danno la stessa classe come risultato. La seconda regola, invece, non è ben definita, perché 0 e 5 rappresentano la stessa classe ma produrrebbero gli interi 1 e 6, che sono diversi. La differenza sta tutta nel risultato. Nel primo caso è una classe, che non distingue 1 da 6, mentre nel secondo è un intero, che li distingue.

<subsection*|Capitolo 8 — Congruenze lineari e teorema cinese>

<strong|8.1.> Il numero 5 è l'inverso di sé stesso modulo 12, perché <math|5·5=25≡1<pmod|12>>. Per <math|8x≡4<pmod|12>> il MCD di 8 e 12 è 4, che divide il termine noto, quindi le soluzioni esistono. Dividendo coefficiente, termine noto e modulo per 4 otteniamo <math|2x≡1<pmod|3>>, e siccome l'inverso di 2 modulo 3 è 2 troviamo <math|x≡2<pmod|3>>. Questa è un'unica classe nel modulo ridotto, che nel modulo iniziale 12 corrisponde alle quattro classi di <math|2,5,8,11>.

<strong|8.2.> Il MCD dei moduli è 3 e divide la differenza dei resti <math|5-2=3>, quindi il sistema è compatibile. Scriviamo <math|x=2+6k> e sostituiamo nella seconda condizione, ottenendo <math|6k≡3<pmod|9>>. Dividendo per 3 arriviamo a <math|2k≡1<pmod|3>>, cioè <math|k≡2<pmod|3>>, e quindi <math|x=14+18t>, ovvero <math|x≡14<pmod|18>>. Il periodo è <math|<math-up|mcm>(6,9)=18>, come previsto. Se il secondo resto fosse 4, il MCD 3 non dividerebbe <math|4-2=2>, e il sistema non avrebbe soluzioni.

<subsection*|Capitolo 9 — Gruppi, anelli e campi>

<strong|9.1.> Le classi non nulle modulo 5 formano un gruppo con il prodotto, perché 5 è primo e quindi sono tutte unità. Il neutro è <math|[1]>, e gli inversi sono <math|[1]<rsup|-1>=[1]>, <math|[2]<rsup|-1>=[3]>, <math|[3]<rsup|-1>=[2]> e <math|[4]<rsup|-1>=[4]>, come confermano i prodotti <math|2·3=6≡1> e <math|4·4=16≡1<pmod|5>>. Il prodotto non ci fa uscire dall'insieme, perché in un campo due classi non nulle non possono avere prodotto zero. Aggiungendo <math|[0]> il gruppo si romperebbe, perché nessun prodotto per zero può dare <math|[1]>, e quindi <math|[0]> resterebbe senza inverso.

<strong|9.2.> Se <math|[a]<rsub|6>=[b]<rsub|6>>, la differenza <math|a-b> è un multiplo di 6, e quindi anche di 3, cioè <math|[a]<rsub|3>=[b]<rsub|3>>, e la funzione è ben definita. Rispetta la somma, perché <math|f([a]+[b])=[a+b]<rsub|3>=f([a])+f([b])>, e allo stesso modo il prodotto, <math|f([a][b])=[ab]<rsub|3>=f([a])f([b])>, e manda <math|[1]<rsub|6>> in <math|[1]<rsub|3>>. È quindi un omomorfismo di anelli unitari. Non è però un isomorfismo, perché le classi distinte <math|[0]<rsub|6>> e <math|[3]<rsub|6>> hanno la stessa immagine <math|[0]<rsub|3>>, e la funzione non è iniettiva.

<subsection*|Capitolo 10 — Sottogruppi e cicli>

<strong|10.1.> Sommando ripetutamente <math|[8]> troviamo <math|[0],[8],[4],[0],…>, quindi il generato è <math|<around|{|[0],[4],[8]|}>>. L'ordine di <math|[8]> è 3, perché uno o due passi non riportano a zero, mentre <math|3·8=24≡0<pmod|12>>. Il generato è chiuso rispetto alla sottrazione perché la differenza di due multipli di <math|[8]> è ancora un multiplo, <math|r[8]-s[8]=(r-s)[8]>. Questo verifica il criterio additivo del sottogruppo per tutte le coppie in una volta sola.

<strong|10.2.> I due cicli sono disgiunti, quindi commutano e possiamo calcolare le potenze separatamente. Il quadrato di <math|(1 2 3)> è <math|(1 3 2)>, mentre il quadrato di <math|(4 5)> è l'identità, e quindi <math|ρ<rsup|2>=(1 3 2)>. Per l'inverso basta percorrere ogni ciclo al contrario, e si ottiene <math|ρ<rsup|-1>=(1 3 2)(4 5)>. Una potenza di <math|ρ> è l'identità soltanto se entrambi i cicli sono tornati al punto di partenza, cioè se l'esponente è un multiplo sia di 3 sia di 2. Il più piccolo esponente positivo con questa proprietà è <math|<math-up|mcm>(3,2)=6>, che è l'ordine di <math|ρ>.

<subsection*|Capitolo 11 — Potenze e decimali>

<strong|11.1.> Le potenze di 2 modulo 7 sono <math|1,2,4,1,…>, quindi il primo ritorno a 1 avviene all'esponente 3 e l'ordine è 3. Il valore 4 compare all'esponente 2, e le soluzioni sono quindi gli esponenti <math|x≡2<pmod|3>>, cioè, fra i naturali, <math|x=2+3k> con <math|k≥0>. Non ce ne sono altre, perché ogni esponente ha resto 0, 1 o 2 nella divisione per l'ordine, e soltanto il resto 2 dà 4.

<strong|11.2.> La frazione <math|7/80> è già ridotta, e <math|80=2<rsup|4>·5>. Nel denominatore compaiono soltanto i fattori 2 e 5, quindi il decimale termina, e la lunghezza è il massimo degli esponenti, cioè quattro cifre: infatti <math|7/80=875/10000=0,0875>. Per <math|x=0,2<wide|7|\<bar\>>> scriviamo <math|10x=2,777…> e <math|100x=27,777…>. Moltiplicando per 10 abbiamo superato la cifra iniziale, e moltiplicando per 100 abbiamo spostato anche una copia del periodo. Sottraendo, le code si cancellano e resta <math|90x=25>, cioè <math|x=25/90=5/18>.

<subsection*|Capitolo 12 — Quadratiche e potenze prime>

<strong|12.1.> Modulo 5 la congruenza <math|x<rsup|2>≡4> ha le radici 2 e 3. Partendo da 2 scriviamo <math|x=2+5h>, e allora <math|x<rsup|2>-4=20h+25h<rsup|2>>. Perché questo sia multiplo di 25 serve <math|4h≡0<pmod|5>>, cioè <math|h≡0>, e la radice resta <math|x≡2<pmod|25>>. Partendo da 3 scriviamo <math|x=3+5h>, e allora <math|x<rsup|2>-4=5+30h+25h<rsup|2>>. Dividendo per 5 la condizione diventa <math|1+h≡0<pmod|5>>, cioè <math|h≡4>, e la radice è <math|x≡23<pmod|25>>. Abbiamo esaminato tutte le radici modulo 5, quindi le soluzioni sono esattamente 2 e 23, e il controllo dà <math|23<rsup|2>=529=21·25+4>.

<strong|12.2.> Modulo 3 le radici di <math|x<rsup|2>≡1> sono 1 e 2, e modulo 4, provando i quattro resti, sono 1 e 3. Per il teorema cinese, ciascuna delle quattro combinazioni di una radice modulo 3 e una modulo 4 corrisponde a una classe diversa modulo 12, e fra i resti da 0 a 11 queste classi sono <math|1,5,7,11>. Sono i quattro numeri dispari non divisibili per 3, e ciascuno ha quadrato congruo a 1 sia modulo 4 sia modulo 3. Quattro radici per un quadrato sono possibili perché 12 è composto, e modulo 12 non lavoriamo in un campo.
