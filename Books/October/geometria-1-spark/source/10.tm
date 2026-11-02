<chapter|Rango, Rouché–Capelli e matrici elementari>

<\inbreve>
Quali informazioni conserva Gauss mentre cambia le righe? Dal nucleo e dall'immagine sappiamo già che cosa misura il rango. Ora lo leggeremo nei pivot e collegheremo compatibilità, righe, colonne e invertibilità.
</inbreve>

<section|Rouché–Capelli: quando esistono soluzioni>

Prendiamo due colonne che generano un piano. Se aggiungiamo un vettore del piano, non otteniamo nuove direzioni; se ne aggiungiamo uno fuori, lo spazio generato cresce. È la domanda già incontrata per <math|Ax=b>: possiamo costruire <math|b> con le colonne che abbiamo?

Per esempio, le colonne <math|(1,0,0)<rsup|T>> e <math|(0,1,0)<rsup|T>> generano il piano <math|z=0>. Aggiungere <math|b=(2,3,0)<rsup|T>> lascia il rango uguale a 2: i coefficienti 2 e 3 risolvono il sistema. Aggiungere <math|b=(0,0,1)<rsup|T>> porta invece il rango a 3: nessuna combinazione delle colonne iniziali può produrre la terza componente 1.

<\concetto|Teorema di Rouché–Capelli>
Per <math|A∈M<rsub|m,n>(K)> e <math|b∈K<rsup|m>>, il sistema <math|Ax=b> è compatibile se e solo se

<\equation*>
<math-up|rank>(A)=<math-up|rank>(A\|b).
</equation*>
</concetto>

Scriviamo <math|U> per lo span delle colonne di <math|A> e <math|U'> per quello delle colonne di <math|(A\|b)>. Abbiamo sempre <math|U⊆U'>.

Se il sistema è compatibile, <math|b∈U>: sostituendo a <math|b> una sua combinazione delle colonne, ogni combinazione in <math|U'> diventa una combinazione in <math|U>. Quindi <math|U'=U> e i ranghi coincidono.

Viceversa, se i ranghi coincidono, <math|U,U'> sono sottospazi di dimensione finita uguale, con <math|U⊆U'>. Per il risultato del capitolo 6, sono uguali. In particolare <math|b∈U'> appartiene a <math|U>, quindi è una combinazione delle colonne di <math|A>. Il sistema è compatibile.

<figura|@IMG(rouche,0.9)|Il sistema è compatibile quando aggiungere <math|b> lascia invariata la dimensione dello spazio delle colonne. Nel caso illustrato il rango resta 2 se <math|b> è nel piano; sale a 3 se ne esce.>

Il criterio decide l'esistenza. Per l'unicità serve anche il nucleo: se il rango comune è <math|r>, un sistema compatibile ha <math|n-r> parametri liberi, perché <math|dim ker F<rsub|A>=n-r>. Le informazioni lavorano insieme: prima confrontiamo i ranghi, poi sottraiamo dal numero delle incognite.

<section|Perché il rango è il numero di pivot>

Cominciamo con una riduzione concreta. Le mosse <math|R<rsub|2>←R<rsub|2>-2R<rsub|1>>, <math|R<rsub|3>←R<rsub|3>-R<rsub|1>> e poi <math|R<rsub|3>←R<rsub|3>-R<rsub|2>> portano da <math|A> a <math|S>:

<\equation*>
A=<matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|3>>|<row|<cell|2>|<cell|5>|<cell|7>>|<row|<cell|1>|<cell|3>|<cell|4>>>>>,<space|2em>S=<matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|3>>|<row|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>.
</equation*>

In <math|S> i pivot sono nelle colonne 1 e 2. Le due colonne <math|S<rsub|1>=(1,0,0)<rsup|T>> e <math|S<rsub|2>=(2,1,0)<rsup|T>> sono indipendenti. Nella relazione <math|αS<rsub|1>+βS<rsub|2>=0> leggiamo prima la seconda componente: dà <math|β=0>. La prima dà poi <math|α=0>.

La terza colonna è <math|S<rsub|3>=S<rsub|1>+S<rsub|2>>. Le prime due formano dunque una base dello spazio delle colonne: il rango è 2, come il numero dei pivot.

<subsection|Perché le colonne pivot sono indipendenti>

Prendiamo ora una matrice <math|S> già a scala, con <math|k> righe non nulle e pivot nelle colonne <math|j<rsub|1>‹⋯‹j<rsub|k>>. Le sue colonne pivot sono indipendenti. Ripetiamo la lettura dal basso fatta nell'esempio.

Per vederlo, supponiamo una loro combinazione nulla e guardiamo la riga <math|k>: le prime <math|k-1> colonne pivot hanno lì zero, mentre l'ultima ha il pivot <math|p<rsub|k>≠0>. Il coefficiente dell'ultima colonna deve essere zero. Nella riga <math|k-1> resta allora soltanto il penultimo coefficiente moltiplicato per il suo pivot: anch'esso è zero. Risalendo li annulliamo tutti.

<subsection|Perché bastano e perché il rango si conserva>

Tutte le colonne di <math|S> hanno zero nelle componenti dalla <math|k+1> in poi. Stanno quindi nel sottospazio <math|<math-up|span>(e<rsub|1>,…,e<rsub|k>)>, di dimensione <math|k>.

Le <math|k> colonne pivot, indipendenti in quello spazio, ne formano una base. Generano perciò tutte le altre colonne. Abbiamo dimostrato <math|<math-up|rank>(S)=k>. Se <math|S=0>, lo spazio delle colonne è nullo e il risultato vale con <math|k=0>.

Rimane il punto delicato: perché il rango della matrice iniziale <math|A> è lo stesso? Le operazioni di riga possono cambiare lo span delle colonne; non possiamo dire che gli spazi siano uguali.

Possiamo però usare qualcosa che sappiamo restare uguale: le soluzioni del sistema omogeneo. Se Gauss porta <math|A> in <math|S>, allora <math|ker F<rsub|A>=ker F<rsub|S>>. Il teorema rango–nullità dà

<\equation*>
n-<math-up|rank>(A)=dim ker F<rsub|A>=dim ker F<rsub|S>=n-<math-up|rank>(S).
</equation*>

Sottraendo, i ranghi coincidono. Dunque <strong|il rango di una matrice è il numero dei pivot di qualunque sua forma a scala>. La dimostrazione non ha usato l'uguaglianza tra rango per righe e per colonne: la dimostreremo adesso.

<section|Rango per righe e rango per colonne>

In una matrice <math|m×n> le righe sono vettori di <math|K<rsup|n>>, le colonne di <math|K<rsup|m>>. I loro span possono vivere in spazi diversi. Eppure hanno la stessa dimensione.

Riguardiamo la matrice <math|S> appena calcolata. Le righe non nulle sono <math|r<rsub|1>=(1,2,3)> e <math|r<rsub|2>=(0,1,1)>. Se <math|αr<rsub|1>+βr<rsub|2>=0>, la prima componente dà <math|α=0>; la seconda dà poi <math|β=0>.

Per le colonne avevamo letto dal basso; per le righe cominciamo da sinistra. Otteniamo in entrambi i casi due vettori indipendenti.

Passiamo ora a una qualunque forma a scala <math|S>. Abbiamo appena dimostrato che lo spazio delle colonne ha dimensione <math|k>.

Anche le <math|k> righe non nulle sono indipendenti: in una combinazione nulla, la colonna del primo pivot obbliga il coefficiente della prima riga a essere zero. Nella colonna del secondo pivot, tolto quel primo contributo, deve annullarsi il secondo coefficiente. Proseguendo si annullano tutti.

Queste righe generano lo spazio delle righe, quindi anche il rango per righe di <math|S> è <math|k>.

Le operazioni di riga conservano lo span delle righe, come dimostrato nel capitolo 9; conservano il rango per colonne, come appena dimostrato mediante il nucleo. Tornando ad <math|A>, entrambi i ranghi rimangono <math|k>. È provata l'uguaglianza.

Ne seguono due fatti utili: <math|<math-up|rank>(A)≤min(m,n)> e <math|<math-up|rank>(A<rsup|T>)=<math-up|rank>(A)>. Il primo viene dal numero massimo di vettori indipendenti e dalla dimensione degli ambienti; il secondo perché trasporre scambia righe e colonne.

<subsection|Quali colonne conservare nella matrice iniziale?>

Nel nostro esempio <math|A<rsub|3>=A<rsub|1>+A<rsub|2>>, esattamente come per <math|S>. Le due colonne iniziali <math|A<rsub|1>=(1,2,1)<rsup|T>> e <math|A<rsub|2>=(2,5,3)<rsup|T>> sono indipendenti: le prime due componenti di una relazione nulla danno <math|α+2β=0> e <math|2α+5β=0>, da cui <math|β=α=0>. Sono quindi una base dello spazio delle colonne di <math|A>.

Abbiamo scelto le colonne 1 e 2 in <math|S>, poi abbiamo preso le colonne con gli stessi indici in <math|A>. Ecco la giustificazione generale. Gli indici delle colonne pivot della forma a scala scelgono una base fra le colonne <em|originali>.

Infatti <math|Ac=0⇔Sc=0> per ogni colonna di coefficienti <math|c>: tutte le relazioni lineari tra le colonne si conservano. Le colonne pivot di <math|S> sono indipendenti e ogni altra colonna è una loro combinazione.

Queste relazioni conservate giustificano la scelta delle corrispondenti colonne di <math|A> come base.

<section|Matrici elementari: scrivere le mosse come prodotti>

Per combinare le righe di una matrice possiamo usare un'altra matrice a sinistra. La riga <math|i> di <math|PA> è la combinazione delle righe di <math|A> con coefficienti dati dalla riga <math|i> di <math|P>. In particolare <math|e<rsub|i><rsup|T>A> seleziona la riga <math|i>.

L'identità <math|I<rsub|m>> ha 1 sulla diagonale e zero altrove, quindi lascia ferme tutte le righe. Cambiandone una o due otteniamo le tre <strong|matrici elementari>:

<\itemize>

<item><math|P<rsub|ij>> è l'identità con le righe <math|i,j> scambiate. Il prodotto <math|P<rsub|ij>A> scambia quelle righe; ripetendo lo scambio si torna indietro, quindi <math|P<rsub|ij><rsup|-1>=P<rsub|ij>>.

<item><math|D<rsub|i>(λ)> è l'identità con <math|λ≠0> al posto dell'1 diagonale in posizione <math|i>. Il prodotto moltiplica soltanto la riga <math|i> per <math|λ>. L'inversa è <math|D<rsub|i>(λ<rsup|-1>)>.

<item><math|T<rsub|ij>(λ)=I<rsub|m>+λE<rsub|ij>>, per <math|i≠j>, dove <math|E<rsub|ij>> ha un solo 1 in posizione <math|(i,j)>. Il prodotto sostituisce <math|R<rsub|i>> con <math|R<rsub|i>+λR<rsub|j>>. L'inversa è <math|T<rsub|ij>(-λ)>.
</itemize>

Usiamo <math|T<rsub|ij>(λ)> per distinguere la matrice che esegue la mossa dalla matrice canonica <math|E<rsub|ij>>. Per esempio

<\equation*>
<matrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|-4>|<cell|1>>>>><matrix|<tformat|<table|<row|<cell|1>|<cell|2>>|<row|<cell|4>|<cell|5>>>>>=<matrix|<tformat|<table|<row|<cell|1>|<cell|2>>|<row|<cell|0>|<cell|-3>>>>>.
</equation*>

La seconda riga è diventata la seconda meno quattro volte la prima. Cambiando <math|-4> in 4 nella matrice a sinistra annulliamo la mossa.

Una matrice diagonale è invertibile se tutti gli elementi diagonali sono non nulli: basta invertirli. Se uno è zero, il corrispondente vettore canonico va a zero, impedendo l'invertibilità.

<section|Invertibilità e gruppo lineare generale>

Una matrice quadrata <math|A> è <strong|invertibile> se esiste <math|B> con <math|AB=BA=I>. Scriviamo <math|B=A<rsup|-1>>.

Il <strong|gruppo lineare generale> <math|<math-up|GL><rsub|m>(K)> raccoglie le invertibili di ordine <math|m>. Il prodotto è associativo, ha l'identità come neutro e rimane invertibile, perché

<\equation*>
(PQ)<rsup|-1>=Q<rsup|-1>P<rsup|-1>.
</equation*>

Infatti <math|(PQ)(Q<rsup|-1>P<rsup|-1>)=P(QQ<rsup|-1>)P<rsup|-1>=I>; lo stesso conto nell'altro ordine dà <math|I>.

L'inversa è unica: se <math|B,C> sono inverse di <math|A>, allora <math|B=B(AC)=(BA)C=C>.

Per <math|m=1> otteniamo gli scalari non nulli. Per <math|m≥2> il prodotto non è commutativo: usiamo le invertibili <math|P,Q> del capitolo 8, lasciando ferme le eventuali altre coordinate.

Se Gauss esegue prima la mossa <math|E<rsub|1>>, poi <math|E<rsub|2>>, fino a <math|E<rsub|r>>, il risultato è

<\equation*>
S=E<rsub|r>⋯E<rsub|2>E<rsub|1>A.
</equation*>

La prima mossa è il fattore più vicino ad <math|A>. Il prodotto delle elementari è invertibile, perché ogni fattore lo è.

<strong|Criterio di invertibilità.> Per una matrice quadrata di ordine <math|m>, essere invertibile equivale ad avere rango <math|m>.

Se è invertibile, <math|Ax=0> implica <math|x=A<rsup|-1>0=0>; rango–nullità dà rango <math|m>.

Per l'altra direzione, se il rango è <math|m>, la forma a scala ha un pivot in ogni riga e in ogni colonna. Possiamo dividere ogni riga per il pivot e, risalendo dal basso, annullare anche gli elementi sopra i pivot. Arriviamo a <math|I<rsub|m>>.

Dunque <math|EA=I<rsub|m>> per un prodotto invertibile <math|E> di elementari. Moltiplicando per <math|E<rsup|-1>> otteniamo <math|A=E<rsup|-1>>: anche <math|A> è invertibile e <math|A<rsup|-1>=E>.

Lo stesso ragionamento mostra che <strong|ogni matrice invertibile è prodotto di matrici elementari>: se <math|E<rsub|r>⋯E<rsub|1>A=I>, allora <math|A=E<rsub|1><rsup|-1>⋯E<rsub|r><rsup|-1>>, e anche le inverse sono elementari. «Generare» qui significa ottenere per <em|prodotti>, non per combinazioni lineari.

<subsection|Per proseguire: equivalenza e forma completamente ridotta>

Due matrici <math|A,B∈M<rsub|m,n>(K)> sono <strong|equivalenti a sinistra> se <math|B=PA> con <math|P> invertibile. L'identità, <math|A=P<rsup|-1>B> e <math|C=QB=QPA> danno riflessività, simmetria e transitività. Poiché le invertibili sono prodotti di elementari, equivale a passare da <math|A> a <math|B> con mosse di riga.

Una matrice a scala è <strong|completamente ridotta> se ogni pivot è 1 e le altre entrate della sua colonna sono nulle. Dividiamo per i pivot e annulliamo sopra di essi, dal basso: questo ne prova l'esistenza. In ogni classe di equivalenza a sinistra questa forma è unica; riportiamo l'unicità senza prova, come nel corso.

L'<strong|equivalenza a destra> richiede <math|B=AQ> con <math|Q> invertibile. Corrisponde alle tre mosse sulle colonne: scambio, prodotto per uno scalare non nullo, aggiunta di un multiplo di un'altra colonna. Per esempio <math|A(I+λE<rsub|ij>)> aggiunge <math|λ> volte la colonna <math|i> alla <math|j>. Identità, inversa e prodotto verificano le tre proprietà come a sinistra.

Per mantenere le stesse incognite usiamo mosse di <em|riga> sulla matrice completa. Le mosse di colonna richiedono un cambiamento di variabili.

<\verifica|10>
<strong|10.1.> Per quali <math|h∈ℝ> il sistema <math|x+y=1>, <math|2x+2y=h> è compatibile? Spiega con Rouché–Capelli e descrivi tutte le soluzioni nei casi compatibili.

<strong|10.2.> Riduci la matrice reale <math|A=<matrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|2>>>>>> a identità. Scrivi le due matrici elementari delle mosse e ricava <math|A<rsup|-1>>. Verifica il prodotto in entrambi gli ordini.
</verifica>
