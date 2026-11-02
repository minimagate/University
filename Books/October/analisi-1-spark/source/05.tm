<chapter|Funzioni elementari e lettura dei grafici>

<\inbreve>
Come leggiamo dal grafico le soluzioni di un'equazione e i valori raggiunti da una funzione? Usiamo potenze, radici e valore assoluto per collegare il disegno alle definizioni. Vedremo anche come il supremo ci permette di costruire una radice irrazionale.
</inbreve>

<section|Simmetrie, periodicità e monotonia>

Una funzione è <strong|pari> se il suo dominio è simmetrico rispetto a 0 e <math|f(-x)=f(x)>: il grafico si riflette nell'asse verticale.

È <strong|dispari> se il dominio è simmetrico e <math|f(-x)=-f(x)>: il grafico si riflette nell'origine. Il quadrato è pari; il cubo è dispari. Se una funzione dispari è definita in 0, necessariamente <math|f(0)=0>, perché <math|f(0)=-f(0)>.

Una funzione su <math|ℝ> è <strong|periodica> se esiste <math|T›0> con <math|f(x+T)=f(x)> per ogni <math|x>. Il grafico si ripete dopo una traslazione di <math|T>.

Anche <math|2T,3T,…> sono periodi; il periodo minimo, quando esiste, è il più piccolo periodo positivo. Per domini diversi da <math|ℝ> richiediamo anche che le traslazioni di <math|±T> conservino il dominio.

La <strong|monotonia> confronta due entrate. Per <math|x‹y> nel dominio, la funzione è debolmente crescente se <math|f(x)≤f(y)>, strettamente crescente se <math|f(x)‹f(y)>.

È debolmente decrescente se <math|f(x)≥f(y)> e strettamente decrescente se <math|f(x)›f(y)>, sempre per <math|x‹y>. Specificare «debolmente» o «strettamente» evita di perdere informazioni.

La stretta monotonia implica iniettività: due entrate distinte sono ordinate in un verso, quindi le loro uscite sono diverse. La monotonia debole può invece avere tratti costanti.

Per una funzione strettamente crescente possiamo quindi passare da <math|f(u)‹f(v)> a <math|u‹v> e viceversa. Per una strettamente decrescente il verso si inverte. In ogni caso gli argomenti devono appartenere al dominio considerato.

<section|Potenze, radici e completezza>

Per un intero <math|k≥1>, <math|x<rsup|k>> è un prodotto di <math|k> fattori. Se <math|k> è pari, è una funzione pari, strettamente decrescente sulla semiretta negativa e strettamente crescente sulla positiva. La sua immagine è <math|[0,+∞)>.

Se <math|k> è dispari, la funzione è dispari e strettamente crescente su tutto <math|ℝ>, con immagine <math|ℝ>.

L'inversa delle potenze pari va presa sulle semirette non negative; quella delle potenze dispari su tutto <math|ℝ>. La radice di indice pari restituisce sempre un numero non negativo. Perciò

<\equation*>
<sqrt|x<rsup|2>>=\|x\|,<space|2em><sqrt|x<rsup|2k>|2k>=\|x\|<space|1em>(k≥1),
</equation*>

mentre <math|<sqrt|-27|3>=-3>. Nel grafico, una funzione invertibile e la sua inversa scambiano le coordinate: <math|(a,b)> diventa <math|(b,a)>. È la riflessione nella retta <math|y=x>.

<subsection|Costruire la radice di 2: scegliere il passo giusto>

La parte delicata è l'esistenza delle radici. Per trovare un numero di quadrato 2 raccogliamo prima tutti i numeri non negativi il cui quadrato non supera 2:

<\equation*>
A={x∈ℝ:x≥0,x<rsup|2>≤2}.
</equation*>

L'insieme contiene 1 ed è maggiorato da 2. Esiste quindi <math|c=sup A>, con <math|1≤c≤2>. Vogliamo provare che il suo quadrato è proprio 2: se fosse più piccolo o più grande, potremmo migliorare la barriera.

Supponiamo prima <math|c<rsup|2>‹2>. Tra il quadrato e 2 rimane un margine <math|d=2-c<rsup|2>›0>. Vorremmo fare un passo <math|h›0> verso destra mantenendo il quadrato sotto 2. Quanto aumenta il quadrato?

<\equation*>
(c+h)<rsup|2>-c<rsup|2>=2ch+h<rsup|2>.
</equation*>

Per controllare questo aumento imponiamo prima <math|h‹1>. Allora <math|h<rsup|2>≤h>; inoltre <math|c≤2>, dunque <math|2ch≤4h>. In totale l'aumento non supera <math|5h>.

Adesso sappiamo come scegliere il passo: basta anche <math|5h‹d>. Prendiamo perciò un qualsiasi <math|0‹h‹min(1,d/5)>. Otteniamo

<\equation*>
(c+h)<rsup|2>≤c<rsup|2>+5h‹c<rsup|2>+d=2.
</equation*>

Così <math|c+h> appartiene ad <math|A> ed è più grande del suo maggiorante <math|c>. È impossibile: il quadrato non può essere sotto 2.

Supponiamo ora <math|c<rsup|2>›2> e chiamiamo <math|d=c<rsup|2>-2›0> il margine dall'altro lato. Cerchiamo una barriera più bassa, <math|c-h>, che resti positiva e abbia ancora quadrato sopra 2. In questo modo sarebbe ancora sopra tutti gli elementi di <math|A>.

Per avere <math|c-h›0> basta imporre <math|h‹1/2>, perché <math|c≥1>. La diminuzione del quadrato è

<\equation*>
c<rsup|2>-(c-h)<rsup|2>=2ch-h<rsup|2>≤2ch≤4h.
</equation*>

Se chiediamo anche <math|4h‹d>, il quadrato non può scendere fino a 2. Scegliamo dunque <math|0‹h‹min(1/2,d/4)> e troviamo

<\equation*>
(c-h)<rsup|2>≥c<rsup|2>-4h›c<rsup|2>-d=2.
</equation*>

Ogni <math|x∈A> soddisfa <math|x<rsup|2>≤2‹(c-h)<rsup|2>>. Poiché entrambi i numeri sono non negativi, segue <math|x‹c-h>. Ma così <math|c-h> sarebbe un maggiorante più piccolo del supremo: un'altra contraddizione.

Rimane soltanto <math|c<rsup|2>=2>. La stretta crescenza del quadrato sui non negativi dà l'unicità. Per le altre radici la completezza svolge lo stesso ruolo; la fattorizzazione della differenza di potenze permette di controllare quanto cambia una potenza.

<section|Valore assoluto e trasformazioni>

Il valore assoluto <math|\|x\|> vale <math|x> per <math|x≥0> e <math|-x> per <math|x‹0>. Rappresenta la distanza da 0. Più in generale <math|\|x-a\|> è la distanza da <math|a>, e <math|\|x-a\|‹r>, con <math|r›0>, equivale a <math|a-r‹x‹a+r>. Questa forma sarà centrale nei limiti.

Useremo anche la disuguaglianza triangolare <math|\|u+v\|≤\|u\|+\|v\|>, che si ricava sommando <math|-\|u\|≤u≤\|u\|> e <math|-\|v\|≤v≤\|v\|>.

Per trasformare un grafico seguiamo un suo punto. Se <math|f(a)=b>, allora <math|f(x)+c> passa per <math|(a,b+c)>: trasliamo verticalmente di <math|c>.

Invece <math|f(x-c)> passa per <math|(a+c,b)>: trasliamo a destra di <math|c>. Il segno interno agisce così perché <math|x-c=a> richiede <math|x=a+c>.

<math|f(-x)> riflette nell'asse verticale; <math|-f(x)> nell'asse orizzontale.

Con <math|\|f(x)\|> si riflette verso l'alto soltanto la parte sotto l'asse orizzontale. Con <math|f(\|x\|)> si conserva il ramo destro e lo si copia a sinistra: la funzione ottenuta è pari sul suo dominio naturale.

<figura|@IMG(trasformazioni)|Una trasformazione esterna cambia l'uscita; una trasformazione interna cambia il punto in cui leggiamo la funzione.>

<section|Equazioni, disequazioni, immagine e controimmagine>

Risolvere <math|f(x)=λ> significa intersecare il grafico con <math|y=λ> e leggere le ascisse. L'iniettività richiede al massimo un'intersezione per ogni livello; la suriettività almeno una per ogni livello dell'insieme di arrivo. Per <math|f(x)≤λ> prendiamo invece le ascisse dei punti sotto la retta o sulla retta.

Per esempio <math|(x-3)<rsup|2>=λ> non ha soluzioni se <math|λ‹0>, ne ha una se <math|λ=0>, e due se <math|λ›0>. In quest'ultimo caso sono <math|3±<sqrt|λ>>. La parabola traslata rende visibili i tre casi.

<\guidato|Confrontare una radice e una retta>
Risolviamo <math|<sqrt|x+6>›x>. Prima imponiamo <math|x≥-6>.

Per <math|-6≤x‹0> la disuguaglianza è vera: la radice è non negativa, mentre il membro destro è negativo.

Per <math|x≥0> entrambi i membri sono non negativi, quindi il quadrato conserva l'equivalenza:

<\equation*>
x+6›x<rsup|2>⇔(x-3)(x+2)‹0.
</equation*>

Con <math|x≥0> otteniamo <math|0≤x‹3>. Unendo i due tratti, la soluzione è <math|[-6,3)>. La separazione dei segni giustifica il quadramento: applicarlo senza condizioni può introdurre soluzioni estranee.
</guidato>

<figura|@IMG(radice-retta)|Il punto con ascissa <math|-2> appartiene al ramo negativo della parabola completa, ma quel ramo non fa parte della radice principale.>

Per l'immagine di un intervallo partiamo dall'asse orizzontale e raccogliamo tutte le altezze del grafico; per la controimmagine partiamo dalle altezze e raccogliamo tutte le ascisse ammesse.

Con <math|f(x)=\|x<rsup|2>-4\|>, sul tratto <math|[1,4]> scendiamo da 3 a 0 e poi saliamo a 12: <math|f([1,4])=[0,12]>. Sostituire soltanto gli estremi avrebbe perso il valore minimo interno.

Per trovare <math|f<rsup|-1>([-2,1])>, la parte negativa dell'intervallo in arrivo non conta, poiché <math|f≥0>. Risolviamo <math|\|x<rsup|2>-4\|≤1>, cioè <math|3≤x<rsup|2>≤5>. La risposta è <math|[-<sqrt|5>,-<sqrt|3>]∪[<sqrt|3>,<sqrt|5>]>.

<section|Esponenziale e logaritmo: un ponte per ottobre>

Richiamiamo le proprietà di queste funzioni, già usate negli esercizi successivi del corso. Per <math|a›0>, le potenze con esponente razionale si definiscono mediante radici e, per esponenti negativi, reciproci. Per <math|a›1> l'estensione ai reali si può costruire mediante

<\equation*>
a<rsup|x>=sup{a<rsup|q>:q∈ℚ,q≤x}.
</equation*>

La completezza fornisce il punto di arrivo delle potenze razionali. Giustificare tutta la costruzione richiede però dimostrazioni ulteriori.

Qui assumiamo le proprietà fondamentali, senza usare le derivate: <math|a<rsup|x+y>=a<rsup|x>a<rsup|y>>, <math|a<rsup|0>=1>, immagine <math|(0,+∞)> e stretta crescenza.

Per <math|0‹a‹1> definiamo <math|a<rsup|x>=(1/a)<rsup|-x>> e otteniamo stretta decrescenza. Per <math|a=1> la funzione è costante.

Se <math|a≠1>, l'inversa è il <strong|logaritmo in base <math|a>>: <math|log<rsub|a>x=y> significa <math|a<rsup|y>=x>, con <math|x›0>.

Per argomenti positivi valgono le regole

<\equation*>
log<rsub|a>(uv)=log<rsub|a>u+log<rsub|a>v,<space|1em>log<rsub|a>(u<rsup|r>)=r log<rsub|a>u.
</equation*>

Scriveremo <math|log x> per la base <math|e>, il numero che costruiremo con le successioni. La continuità e i limiti di queste funzioni saranno affrontati dopo le definizioni di limite.

<\verifica|5>
<strong|1.> Quante soluzioni ha <math|\|x<rsup|2>-4\|=λ> al variare del reale <math|λ>? Considera separatamente <math|λ=0> e <math|λ=4>.

<strong|2.> Risolvi <math|log(3x+1)=log(x+5)>, dichiarando prima il dominio. Spiega quale proprietà permette di uguagliare gli argomenti.
</verifica>
