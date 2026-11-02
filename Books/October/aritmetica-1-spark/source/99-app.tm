<appendix|Soluzioni ragionate>

Ogni sezione richiama un capitolo. Prova prima a impostare il problema; poi confronta il tuo ragionamento con la soluzione. Il numero 4.1, per esempio, indica il primo esercizio del capitolo 4.

<subsection*|Capitolo 1 — Il linguaggio matematico e l'induzione>

<strong|1.1.> Per <math|n=1> la formula è <math|1=1·2/2>. Supponiamo che valga all'indice <math|n>: <math|1+⋯+n=n(n+1)/2>. Aggiungendo l'ultimo termine della somma nuova otteniamo

<\equation*>
1+⋯+n+(n+1)=<frac|n(n+1)|2>+(n+1)=<frac|(n+1)(n+2)|2>.
</equation*>

Questa è la formula all'indice <math|n+1>. Base e passo dimostrano la tesi per ogni <math|n≥1>.

<strong|1.2.> Partendo da 0 e aggiungendo 2 si raggiungono soltanto <math|0,2,4,6,…>. Il passo dimostra la proprietà all'indice <math|n+2>, mentre per l'induzione su tutti i naturali servirebbe passare da <math|n> a <math|n+1>. Si può applicare correttamente l'induzione a <math|Q(k)>: «<math|2k> è pari». La conclusione riguarda tutti gli interi della forma <math|2k>, senza affermare che ogni naturale abbia quella forma.

<subsection*|Capitolo 2 — Funzioni e conteggio>

<strong|2.1.> Le funzioni totali sono <math|3<rsup|4>=81>. Per ciascuno dei tre valori di arrivo, le funzioni che lo evitano sono <math|2<rsup|4>=16>: sottraiamo <math|3·16>. Ma una funzione costante evita due valori ed è stata sottratta due volte; aggiungiamo le tre funzioni costanti, una per ogni coppia di valori evitati. Non ci sono funzioni che evitano tutti i valori, perché il dominio non è vuoto. Il totale è

<\equation*>
81-3·16+3·1=36.
</equation*>

<strong|2.2.> Assegniamo prima un'unità a ciascuna variabile: poniamo <math|u=x-1>, <math|v=y-1>, <math|w=z-1>. La nuova equazione è <math|u+v+w=4>, con variabili non negative. Stelle e sbarre dà <math|<binom|6|2>=15> soluzioni. Dividere sempre per 6 non funziona perché il numero degli ordinamenti non è uniforme: <math|(1,2,4)> ha sei ordinamenti distinti, mentre <math|(1,1,5)> ne ha soltanto tre. Le due terne non vengono contate lo stesso numero di volte.

<subsection*|Capitolo 3 — Successioni e ricorrenze>

<strong|3.1.> Le radici caratteristiche sono 1 e 2. Cerchiamo <math|a<rsub|n>=A+B2<rsup|n>>. I dati iniziali impongono <math|A+B=5> e <math|A+2B=7>. Sottraendo troviamo <math|B=2>, quindi <math|A=3>. La formula è <math|a<rsub|n>=3+2<rsup|n+1>>. Soddisfa la ricorrenza, essendo combinazione delle due soluzioni caratteristiche, e parte da 5, 7; per unicità è la successione richiesta. Il termine successivo è 11, sia dalla formula sia dal calcolo <math|3·7-2·5>.

<strong|3.2.> Con <math|T<rsub|0>=T<rsub|1>=1>, la ricorrenza dà <math|T<rsub|2>=2>, <math|T<rsub|3>=3>, <math|T<rsub|4>=5>, <math|T<rsub|5>=8>, <math|T<rsub|6>=13>. Per il secondo conteggio, le coppie orizzontali possono essere 0, 1, 2 o 3. I contributi sono rispettivamente <math|<binom|6|0>=1>, <math|<binom|5|1>=5>, <math|<binom|4|2>=6>, <math|<binom|3|3>=1>. La somma è <math|1+5+6+1=13>.

<subsection*|Capitolo 4 — Divisione, MCD e algoritmo di Euclide>

<strong|4.1.> Il multiplo di 6 immediatamente precedente a <math|-29> è <math|-30>. Dunque <math|-29=(-5)·6+1>: quoziente <math|-5>, resto 1. Il resto è non negativo e minore di 6, quindi la divisione rispetta entrambe le condizioni.

<strong|4.2.> Le divisioni sono <math|84=2·30+24>, <math|30=1·24+6>, <math|24=4·6+0>. L'ultimo resto non nullo è 6, perciò <math|gcd(84,30)=6>. Dopo la prima divisione sappiamo soltanto che il MCD cercato coincide con <math|gcd(30,24)>: il primo resto 24 non divide 30, quindi non è ancora il MCD.

<subsection*|Capitolo 5 — Bézout e fattorizzazione in primi>

<strong|5.1.> Euclide dà <math|30=18+12>, <math|18=12+6>, <math|12=2·6>. Risalendo, <math|6=18-12=18-(30-18)=2·18-30>. Ogni combinazione intera di 30 e 18 è multipla del MCD 6. Perciò 7 è impossibile; 12 è possibile, e moltiplicando l'identità per 2 troviamo <math|12=4·18-2·30>.

<strong|5.2.> La fattorizzazione è <math|180=2<rsup|2>3<rsup|2>5>. I divisori positivi sono <math|(2+1)(2+1)(1+1)=18>. Scriviamo anche <math|48=2<rsup|4>3>. Per il MCD scegliamo gli esponenti minori, includendo esponente zero per 5: otteniamo <math|2<rsup|2>3=12>. Per il mcm scegliamo i maggiori: <math|2<rsup|4>3<rsup|2>5=720>. Il controllo <math|12·720=180·48> conferma il risultato.

<subsection*|Capitolo 6 — Equazioni diofantee>

<strong|6.1.> Il MCD di 4 e 6 è 2 e divide 14. Dividiamo per 2: <math|2x+3y=7>. Dalla soluzione <math|(2,1)> otteniamo tutte le altre con il passo <math|(3,-2)>:

<\equation*>
x=2+3t,<space|2em>y=1-2t,<space|2em>t∈ℤ.
</equation*>

La non negatività chiede <math|t≥-2/3> e <math|t≤1/2>. L'unico intero nell'intervallo è 0, quindi l'unica soluzione non negativa è <math|(2,1)>.

<strong|6.2.> Poniamo <math|u=x+y>, <math|v=x-y>. Serve <math|uv=8>, con <math|u,v> della stessa parità. Le coppie <math|(1,8)> e <math|(8,1)> non vanno bene; quelle positive ammesse sono <math|(2,4),(4,2)>. Danno rispettivamente <math|(x,y)=(3,-1),(3,1)>. Le coppie negative <math|(-2,-4),(-4,-2)> danno <math|(-3,1),(-3,-1)>. Queste sono tutte le quattro soluzioni. Senza il controllo di parità avremmo incluso coordinate non intere.

<subsection*|Capitolo 7 — Congruenze e classi>

<strong|7.1.> Tre rappresentanti sono <math|-2,5,12>. Il rappresentante fra 0 e 6 è 5, dato che <math|-2=(-1)·7+5>. Per le operazioni riduciamo prima: <math|[12]<rsub|7>=[5]<rsub|7>> e <math|[17]<rsub|7>=[3]<rsub|7>>. Quindi la somma è <math|[8]<rsub|7>=[1]<rsub|7>> e il prodotto è <math|[15]<rsub|7>=[1]<rsub|7>>. Somma e prodotto danno qui la stessa classe, pur essendo operazioni diverse.

<strong|7.2.> La prima regola è ben definita: se <math|a≡b<pmod|5>>, anche <math|a+1≡b+1<pmod|5>>, perché la differenza resta <math|a-b>. La seconda non lo è: i rappresentanti 0 e 5 indicano la stessa classe, ma produrrebbero gli interi distinti 1 e 6. Il codominio conta: nel primo caso il risultato è una classe, nel secondo è un intero.

<subsection*|Capitolo 8 — Congruenze lineari e teorema cinese>

<strong|8.1.> Il numero 5 è inverso di sé stesso modulo 12, perché <math|5·5=25≡1<pmod|12>>. Per <math|8x≡4<pmod|12>> il MCD è 4 e divide il termine noto. Dividendo coefficiente, termine noto e modulo per 4 otteniamo <math|2x≡1<pmod|3>>. L'inverso di 2 modulo 3 è 2, dunque <math|x≡2<pmod|3>>. Nel modulo iniziale 12 le quattro classi sono quelle di <math|2,5,8,11>.

<strong|8.2.> Il MCD dei moduli è 3 e divide <math|5-2=3>, quindi il sistema è compatibile. Scriviamo <math|x=2+6k> e sostituiamo: <math|6k≡3<pmod|9>>. Dividendo per 3 otteniamo <math|2k≡1<pmod|3>>, quindi <math|k≡2<pmod|3>>. Ne segue <math|x=14+18t>, cioè <math|x≡14<pmod|18>>. Il periodo è <math|<math-up|mcm>(6,9)=18>. Con secondo resto 4, il MCD 3 non divide <math|4-2=2>: nessuna soluzione.

<subsection*|Capitolo 9 — Gruppi, anelli e campi>

<strong|9.1.> L'insieme delle classi non nulle modulo 5 forma un gruppo con il prodotto. Sono tutte unità perché 5 è primo. Il neutro è <math|[1]>; gli inversi sono <math|[1]<rsup|-1>=[1]>, <math|[2]<rsup|-1>=[3]>, <math|[3]<rsup|-1>=[2]> e <math|[4]<rsup|-1>=[4]>. Controlliamo i prodotti: <math|2·3=6≡1> e <math|4·4=16≡1<pmod|5>>. La chiusura segue anche dall'annullamento del prodotto: due classi non nulle non possono dare zero in un campo. Aggiungendo <math|[0]> mancherebbe il suo inverso: nessun prodotto con zero può dare <math|[1]>.

<strong|9.2.> Se <math|[a]<rsub|6>=[b]<rsub|6>>, la differenza <math|a-b> è un multiplo di 6 e quindi di 3: <math|[a]<rsub|3>=[b]<rsub|3>>. La funzione è ben definita. Inoltre <math|f([a]+[b])=[a+b]<rsub|3>=f([a])+f([b])>; analogamente <math|f([a][b])=[ab]<rsub|3>=f([a])f([b])>, e <math|f([1]<rsub|6>)=[1]<rsub|3>>. È un omomorfismo unitario. Non è un isomorfismo: <math|[0]<rsub|6>> e <math|[3]<rsub|6>> sono distinte, ma hanno la stessa immagine <math|[0]<rsub|3>>. Dunque non è iniettiva.

<subsection*|Capitolo 10 — Sottogruppi e cicli>

<strong|10.1.> I multipli successivi di <math|[8]> sono <math|[0],[8],[4],[0],…>. Il generato è <math|<around|{|[0],[4],[8]|}>> e l'ordine di <math|[8]> è 3: né uno né due passi danno zero, mentre <math|3·8=24≡0<pmod|12>>. La differenza di due multipli di <math|[8]> è ancora un multiplo di <math|[8]>: <math|r[8]-s[8]=(r-s)[8]>. Questo verifica il criterio additivo del sottogruppo per tutti gli elementi, senza dover provare separatamente ogni coppia.

<strong|10.2.> I cicli sono disgiunti, quindi possiamo calcolare le potenze separatamente. Il quadrato di <math|(1 2 3)> è <math|(1 3 2)>, quello di <math|(4 5)> è l'identità. Dunque <math|ρ<rsup|2>=(1 3 2)>. Per invertire ciascun ciclo percorriamo le frecce al contrario: <math|ρ<rsup|-1>=(1 3 2)(4 5)>. Una potenza di <math|ρ> è l'identità se e solo se entrambi i cicli sono tornati alla partenza: l'esponente deve essere multiplo di 3 e di 2. Il minimo positivo è <math|<math-up|mcm>(3,2)=6>, che è l'ordine cercato.

<subsection*|Capitolo 11 — Potenze e decimali>

<strong|11.1.> Le potenze di 2 modulo 7 sono <math|1,2,4,1,…>. Il primo ritorno a 1 ha esponente 3. Il resto 4 compare all'esponente 2, perciò <math|x≡2<pmod|3>>. Per <math|x∈ℕ> possiamo scrivere <math|x=2+3k> con <math|k≥0>. Non ci sono altri esponenti perché ogni esponente ha uno dei tre resti 0,1,2 modulo l'ordine, e solo il resto 2 produce 4.

<strong|11.2.> La frazione <math|7/80> è ridotta, e <math|80=2<rsup|4>·5>. Non rimangono fattori diversi da 2 e 5, quindi il decimale termina dopo quattro cifre: <math|7/80=875/10000=0,0875>. Per <math|x=0,2<wide|7|\<bar\>>> abbiamo <math|10x=2,777…> e <math|100x=27,777…>. Sottraendo, <math|90x=25>, dunque <math|x=25/90=5/18>. La moltiplicazione per 10 elimina la cifra iniziale; quella per 100 sposta anche una copia del periodo.

<subsection*|Capitolo 12 — Quadratiche e potenze prime>

<strong|12.1.> Modulo 5, <math|x<rsup|2>≡4> ha le radici 2 e 3. Sopra 2 scriviamo <math|x=2+5h>: <math|x<rsup|2>-4=20h+25h<rsup|2>>. La divisibilità per 25 richiede <math|4h≡0<pmod|5>>, dunque <math|h≡0> e <math|x≡2<pmod|25>>. Sopra 3, <math|x=3+5h> dà <math|x<rsup|2>-4=5+30h+25h<rsup|2>>. La condizione è <math|1+h≡0<pmod|5>>, dunque <math|h≡4> e <math|x≡23<pmod|25>>. Queste sono tutte le radici; il controllo dà <math|23<rsup|2>=529=21·25+4>.

<strong|12.2.> Modulo 3 le radici sono 1 e 2; modulo 4 sono 1 e 3, come si controlla sui quattro resti. Le quattro combinazioni di condizioni corrispondono, per il teorema cinese, a quattro classi distinte modulo 12. Tra i resti <math|0,…,11>, le radici sono <math|1,5,7,11>. Infatti sono i quattro numeri dispari non divisibili per 3; ciascuno ha quadrato congruo a 1 sia modulo 4 sia modulo 3. Le quattro radici sono possibili perché il modulo è composto: non stiamo lavorando in un campo.

