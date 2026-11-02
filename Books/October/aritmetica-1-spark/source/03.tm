<chapter|Successioni e ricorrenze>

<\inbreve>
Nel conteggio possiamo riconoscere un problema più piccolo dentro quello che stiamo affrontando. Questo produce una ricorrenza: una regola che calcola un termine usando i precedenti. Impariamo a costruire questa regola, a capire quali dati la completano e a ricavarne una formula esplicita.
</inbreve>

<section|Una ricorrenza nasce dalle tassellazioni>

Vogliamo ricoprire un rettangolo di due righe e <math|n> colonne con tessere di dimensioni <math|2×1>. Possiamo ruotarle, ma non sovrapporle o lasciare buchi. Indichiamo con <math|T<rsub|n>> il numero delle coperture possibili.

Per una colonna c'è una sola possibilità: una tessera verticale. Per due colonne ce ne sono due: due tessere verticali oppure due orizzontali. Per quattro colonne le coperture sono cinque.

<figura|@IMG(tassellazioni)|Le cinque coperture di un rettangolo <math|2×4>. Per lunghezze maggiori, disegnarle tutte diventa poco pratico.>

Cerchiamo una classificazione che non richieda di elencare tutte le coperture. Guardiamo la casella in alto a sinistra. Se la tessera che la copre è verticale, occupa la prima colonna: resta un rettangolo di lunghezza <math|n-1>, con <math|T<rsub|n-1>> coperture.

Se invece la tessera è orizzontale, anche la casella sotto deve essere coperta da una tessera orizzontale: una verticale si sovrapporrebbe alla prima. Le due tessere occupano le prime due colonne. Resta un rettangolo di lunghezza <math|n-2>, con <math|T<rsub|n-2>> coperture.

<figura|@IMG(domino)|Le due partenze esauriscono le possibilità e sono incompatibili fra loro. Perciò i loro conteggi si sommano.>

Otteniamo la regola

<\equation*>
T<rsub|n>=T<rsub|n-1>+T<rsub|n-2><space|2em>(n≥2).
</equation*>

Poniamo <math|T<rsub|0>=1>: c'è un solo modo di coprire il rettangolo vuoto, non mettere tessere. Insieme a <math|T<rsub|1>=1>, questa scelta produce

<\equation*>
T<rsub|0>,T<rsub|1>,T<rsub|2>,T<rsub|3>,T<rsub|4>,T<rsub|5>,…=1,1,2,3,5,8,…
</equation*>

<section|La regola e i dati iniziali>

Una <strong|successione> assegna un numero a ogni indice naturale: scriviamo <math|a<rsub|0>,a<rsub|1>,a<rsub|2>,…>. In termini del capitolo precedente, è una funzione che ha come dominio <math|ℕ>. Il simbolo <math|a<rsub|n>> indica il termine di indice <math|n>.

<\concetto|Ricorrenza del secondo ordine>
Una regola della forma <math|a<rsub|n+2>=ca<rsub|n+1>+da<rsub|n>> calcola il termine nuovo dai due precedenti. Per determinare una successione occorrono anche due <strong|dati iniziali>, <math|a<rsub|0>> e <math|a<rsub|1>>. I coefficienti <math|c,d> sono fissati.
</concetto>

Per esempio, con

<\equation*>
a<rsub|n+2>=3a<rsub|n+1>-2a<rsub|n>,<space|2em>a<rsub|0>=0,<space|1em>a<rsub|1>=1,
</equation*>

calcoliamo <math|a<rsub|2>=3·1-2·0=3>, poi <math|a<rsub|3>=3·3-2·1=7>, poi 15, 31 e così via. Con dati iniziali diversi otterremmo numeri diversi, pur mantenendo la stessa regola.

I dati iniziali e la regola determinano una sola successione. Infatti, se due successioni partono dagli stessi primi due termini, la regola produce lo stesso terzo termine; poi lo stesso quarto, e così via. Formalmente è un'induzione sulla coppia di uguaglianze <math|a<rsub|n>=b<rsub|n>> e <math|a<rsub|n+1>=b<rsub|n+1>>: dalle due uguaglianze segue quella al posto <math|n+2>.

Questa <strong|unicità> ha una conseguenza pratica: per dimostrare che una formula descrive la successione cercata, basta controllare i primi due termini e la ricorrenza.

<section|Equazione caratteristica: cercare una formula>

Calcolare tutti i termini precedenti per arrivare al centesimo può essere scomodo. Cerchiamo una <strong|formula esplicita>, che usi direttamente l'indice <math|n>.

Perché provare con le potenze? Una potenza mantiene la stessa forma quando spostiamo l'indice: da <math|λ<rsup|n>> a <math|λ<rsup|n+1>> basta moltiplicare per <math|λ>. Questo permette di confrontare facilmente termini consecutivi.

Proviamo quindi <math|a<rsub|n>=λ<rsup|n>>, con <math|λ≠0>, nella ricorrenza dell'esempio. Otteniamo

<\equation*>
λ<rsup|n+2>=3λ<rsup|n+1>-2λ<rsup|n>.
</equation*>

Dividendo per <math|λ<rsup|n>> rimane un'equazione che non dipende più da <math|n>:

<\equation*>
λ<rsup|2>-3λ+2=0,
<space|2em>(λ-1)(λ-2)=0.
</equation*>

È l'<strong|equazione caratteristica>. Le radici 1 e 2 ci danno due successioni che rispettano la regola: quella costante <math|1<rsup|n>> e quella <math|2<rsup|n>>.

La ricorrenza è <strong|lineare e omogenea>: moltiplicare due soluzioni per costanti e sommarle produce ancora una soluzione. Per vederlo, se <math|u<rsub|n>> e <math|v<rsub|n>> rispettano la regola, allora

<\equation*>
3(Au<rsub|n+1>+Bv<rsub|n+1>)-2(Au<rsub|n>+Bv<rsub|n>)=Au<rsub|n+2>+Bv<rsub|n+2>.
</equation*>

Possiamo dunque cercare la nostra successione nella forma <math|a<rsub|n>=A+B2<rsup|n>>. Per rispettare i dati iniziali chiediamo

<\equation*>
A+B=0,<space|2em>A+2B=1.
</equation*>

Sottraendo la prima uguaglianza dalla seconda troviamo <math|B=1>, poi <math|A=-1>. Quindi

<\equation*>
a<rsub|n>=2<rsup|n>-1.
</equation*>

<\anatomia|Perché la formula trovata è proprio quella cercata>
Trovare un'espressione plausibile non basta. Dobbiamo collegarla ai dati del problema.

La formula parte bene: <math|2<rsup|0>-1=0> e <math|2<rsup|1>-1=1>. Rispetta anche la ricorrenza, perché

<\equation*>
3(2<rsup|n+1>-1)-2(2<rsup|n>-1)=2<rsup|n+2>-1.
</equation*>

Per l'unicità dimostrata prima, questa successione coincide con quella definita dalla regola. Il metodo non richiede di confrontare un'infinità di valori: basta verificare la partenza e il modo in cui prosegue.
</anatomia>

<subsection|Per proseguire: il caso generale>

Per <math|a<rsub|n+2>=ca<rsub|n+1>+da<rsub|n>>, con <math|d≠0>, il polinomio caratteristico è <math|λ<rsup|2>-cλ-d>. Qui trattiamo il caso di due radici distinte <math|λ<rsub|1>,λ<rsub|2>>. La formula è

<\equation*>
a<rsub|n>=Aλ<rsub|1><rsup|n>+Bλ<rsub|2><rsup|n>.
</equation*>

Perché raggiungiamo ogni possibile coppia di dati iniziali? Le condizioni sono <math|A+B=a<rsub|0>> e <math|Aλ<rsub|1>+Bλ<rsub|2>=a<rsub|1>>. Sostituendo <math|A=a<rsub|0>-B>, la seconda diventa <math|B(λ<rsub|2>-λ<rsub|1>)=a<rsub|1>-a<rsub|0>λ<rsub|1>>. Poiché le radici sono distinte, possiamo sempre trovare un unico <math|B>, poi un unico <math|A>. L'unicità della ricorrenza conclude il ragionamento. Se necessario, le radici e i calcoli si considerano nei numeri complessi, della forma <math|x+iy> con <math|x,y> reali e <math|i<rsup|2>=-1>.

<section|Fibonacci e il ritorno alle tassellazioni>

La successione di <strong|Fibonacci> è definita da <math|F<rsub|0>=0>, <math|F<rsub|1>=1> e <math|F<rsub|n+2>=F<rsub|n+1>+F<rsub|n>>. I primi termini sono <math|0,1,1,2,3,5,8,…>.

L'equazione caratteristica è <math|λ<rsup|2>-λ-1=0>. Le radici sono

<\equation*>
φ=<frac|1+<sqrt|5>|2>,<space|2em>ψ=<frac|1-<sqrt|5>|2>.
</equation*>

Scriviamo <math|F<rsub|n>=Aφ<rsup|n>+Bψ<rsup|n>>. La partenza dà <math|A+B=0> e <math|Aφ+Bψ=1>. Quindi <math|B=-A> e <math|A(φ-ψ)=1>. Poiché <math|φ-ψ=<sqrt|5>>, otteniamo la <strong|formula di Binet>:

<\equation*>
F<rsub|n>=<frac|φ<rsup|n>-ψ<rsup|n>|<sqrt|5>>.
</equation*>

Le radici quadrate possono sorprendere, ma l'unicità garantisce che la formula dia proprio gli interi generati dalla ricorrenza.

Le tassellazioni seguono la stessa regola con partenza 1, 1. Sono quindi Fibonacci spostata di un posto: <math|T<rsub|n>=F<rsub|n+1>>. Controlliamo gli indici: <math|T<rsub|0>=F<rsub|1>=1> e <math|T<rsub|1>=F<rsub|2>=1>.

<subsection|Per proseguire: un secondo conteggio delle tassellazioni>

Possiamo ritrovare anche un legame con i binomiali. Se una copertura contiene <math|k> coppie orizzontali, queste occupano <math|2k> colonne; rimangono <math|n-2k> tessere verticali. Ci sono dunque <math|n-k> blocchi in tutto e scegliamo quali <math|k> siano coppie orizzontali. Sommando sui valori possibili di <math|k> otteniamo

<\equation*>
T<rsub|n>=<big|sum><rsub|k=0><rsup|⌊n/2⌋><binom|n-k|k>.
</equation*>

Il simbolo <math|⌊n/2⌋> indica il massimo intero non maggiore di <math|n/2>. Per <math|n=4> la somma vale <math|1+3+1=5>: lo stesso conteggio del disegno iniziale.

<subsection|In sintesi>

La ricorrenza descrive come proseguire; i dati iniziali stabiliscono da dove partire. Il polinomio caratteristico cerca soluzioni adatte alla regola; le costanti adattano queste soluzioni alla partenza. L'unicità spiega perché controllare regola e dati iniziali è sufficiente.

<\verifica|3>
<strong|1. Con un suggerimento.> Trova la formula esplicita per <math|a<rsub|n+2>=3a<rsub|n+1>-2a<rsub|n>> con <math|a<rsub|0>=5> e <math|a<rsub|1>=7>. Il polinomio caratteristico è quello già studiato: cambia soltanto il sistema per <math|A,B>.

<strong|2. In autonomia.> Quante coperture ha un rettangolo <math|2×6>? Calcola il numero sia con la ricorrenza sia distinguendo quante coppie orizzontali compaiono.
</verifica>

