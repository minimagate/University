<chapter|Successioni e ricorrenze>

<\inbreve>
Certi conteggi diventano più semplici se riconosciamo, dentro il problema che stiamo affrontando, una copia più piccola dello stesso problema. Da questa osservazione nasce una ricorrenza, cioè una regola che calcola ogni termine a partire dai precedenti. Vedremo come trovarla, quali dati servono per farla partire e come ricavarne una formula che dia subito il termine che ci interessa.
</inbreve>

<section|Una ricorrenza nasce dalle tassellazioni>

Immaginiamo di dover ricoprire un rettangolo di due righe e <math|n> colonne con tessere di dimensioni <math|2×1>, che possiamo ruotare ma non sovrapporre, e senza lasciare buchi. Chiamiamo <math|T<rsub|n>> il numero dei modi possibili.

I primi casi si fanno a mano. Con una colonna c'è un solo modo, una tessera verticale. Con due colonne i modi sono due, perché possiamo mettere due tessere verticali oppure due orizzontali una sopra l'altra. Con quattro colonne, disegnando con un po' di pazienza, se ne trovano cinque.

<figura|@IMG(tassellazioni)|Le cinque coperture di un rettangolo <math|2×4>. Per lunghezze maggiori, disegnarle tutte diventa poco pratico.>

Per rettangoli più lunghi disegnare tutto diventa impraticabile, e ci serve un modo di contare senza elencare. Concentriamoci allora sulla casella in alto a sinistra e chiediamoci come può essere coperta.

Se la tessera che la copre è verticale, occupa l'intera prima colonna. Quello che resta è un rettangolo di lunghezza <math|n-1>, che si può coprire in <math|T<rsub|n-1>> modi.

Se invece è orizzontale, anche la casella sotto deve essere coperta da una tessera orizzontale, perché una verticale andrebbe a sovrapporsi alla prima. Le due tessere orizzontali riempiono insieme le prime due colonne, e resta un rettangolo di lunghezza <math|n-2>, con <math|T<rsub|n-2>> coperture.

<figura|@IMG(domino)|Le due partenze esauriscono le possibilità e sono incompatibili fra loro. Perciò i loro conteggi si sommano.>

Ogni copertura comincia in uno solo di questi due modi, e quindi i conteggi si sommano:

<\equation*>
T<rsub|n>=T<rsub|n-1>+T<rsub|n-2><space|2em>(n≥2).
</equation*>

Per far partire la regola conviene porre <math|T<rsub|0>=1>. Il rettangolo vuoto si copre infatti in un solo modo, non mettendo nessuna tessera. Insieme a <math|T<rsub|1>=1>, la regola produce allora

<\equation*>
T<rsub|0>,T<rsub|1>,T<rsub|2>,T<rsub|3>,T<rsub|4>,T<rsub|5>,…=1,1,2,3,5,8,…
</equation*>

e ritroviamo il 5 che avevamo contato a mano.

<section|La regola e i dati iniziali>

Abbiamo appena incontrato una <strong|successione>, cioè un numero assegnato a ogni indice naturale, che scriviamo <math|a<rsub|0>,a<rsub|1>,a<rsub|2>,…>. Con il linguaggio del capitolo precedente è semplicemente una funzione con dominio <math|ℕ>, e <math|a<rsub|n>> indica il suo valore nell'indice <math|n>.

<\concetto|Ricorrenza del secondo ordine>
Una regola della forma <math|a<rsub|n+2>=ca<rsub|n+1>+da<rsub|n>> calcola il termine nuovo dai due precedenti. Per determinare una successione occorrono anche due <strong|dati iniziali>, <math|a<rsub|0>> e <math|a<rsub|1>>. I coefficienti <math|c,d> sono fissati.
</concetto>

Prendiamo per esempio

<\equation*>
a<rsub|n+2>=3a<rsub|n+1>-2a<rsub|n>,<space|2em>a<rsub|0>=0,<space|1em>a<rsub|1>=1.
</equation*>

Il terzo termine è <math|a<rsub|2>=3·1-2·0=3>, il quarto è <math|a<rsub|3>=3·3-2·1=7>, e continuando troviamo 15, 31 e così via. Se partissimo da dati iniziali diversi, con la stessa regola, otterremmo un'altra successione.

Regola e dati iniziali, insieme, determinano invece una successione sola. Se due successioni hanno gli stessi primi due termini, la regola dà loro lo stesso terzo termine, poi lo stesso quarto, e così via. Per scriverlo con precisione si fa un'induzione sulla coppia di uguaglianze <math|a<rsub|n>=b<rsub|n>> e <math|a<rsub|n+1>=b<rsub|n+1>>, da cui la regola ricava l'uguaglianza al posto <math|n+2>.

Questa <strong|unicità> sarà molto comoda. Se abbiamo in mano una formula e vogliamo sapere se descrive la nostra successione, basta controllare che abbia i primi due termini giusti e che rispetti la regola.

<section|Equazione caratteristica: cercare una formula>

Calcolare novantotto termini per arrivare al centesimo è scomodo. Vorremmo una <strong|formula esplicita>, che dia <math|a<rsub|n>> usando direttamente l'indice <math|n>.

Per indovinarla proviamo con le potenze. La ragione è che una potenza cambia in modo semplicissimo quando spostiamo l'indice, perché per passare da <math|λ<rsup|n>> a <math|λ<rsup|n+1>> basta moltiplicare per <math|λ>, e la nostra regola confronta proprio termini con indici consecutivi.

Mettiamo dunque <math|a<rsub|n>=λ<rsup|n>>, con <math|λ≠0>, nella ricorrenza dell'esempio:

<\equation*>
λ<rsup|n+2>=3λ<rsup|n+1>-2λ<rsup|n>.
</equation*>

Dividendo per <math|λ<rsup|n>> l'indice sparisce, e resta un'equazione di secondo grado:

<\equation*>
λ<rsup|2>-3λ+2=0,
<space|2em>(λ-1)(λ-2)=0.
</equation*>

Questa è l'<strong|equazione caratteristica> della ricorrenza. Le sue radici 1 e 2 ci danno due successioni che rispettano la regola, quella costante <math|1<rsup|n>> e quella delle potenze <math|2<rsup|n>>. Nessuna delle due, però, parte da 0 e 1.

Per sistemare la partenza sfruttiamo il fatto che la ricorrenza è <strong|lineare e omogenea>, cioè che moltiplicando due soluzioni per delle costanti e sommandole si ottiene ancora una soluzione. Se <math|u<rsub|n>> e <math|v<rsub|n>> rispettano la regola, infatti,

<\equation*>
3(Au<rsub|n+1>+Bv<rsub|n+1>)-2(Au<rsub|n>+Bv<rsub|n>)=Au<rsub|n+2>+Bv<rsub|n+2>.
</equation*>

Possiamo quindi cercare la nostra successione nella forma <math|a<rsub|n>=A+B2<rsup|n>> e scegliere le costanti in modo da rispettare i dati iniziali. Le condizioni sono

<\equation*>
A+B=0,<space|2em>A+2B=1,
</equation*>

e sottraendo la prima dalla seconda troviamo <math|B=1>, da cui <math|A=-1>. La formula candidata è quindi

<\equation*>
a<rsub|n>=2<rsup|n>-1.
</equation*>

<\anatomia|Perché la formula trovata è proprio quella cercata>
Siamo arrivati alla formula per tentativi, e un'espressione plausibile non è ancora una dimostrazione. Dobbiamo collegarla ai dati del problema.

La partenza è giusta, perché <math|2<rsup|0>-1=0> e <math|2<rsup|1>-1=1>. Anche la regola è rispettata, perché

<\equation*>
3(2<rsup|n+1>-1)-2(2<rsup|n>-1)=2<rsup|n+2>-1.
</equation*>

Per l'unicità che abbiamo dimostrato, questa successione coincide con quella definita dalla ricorrenza. Non abbiamo dovuto confrontare infiniti valori, ci è bastato controllare da dove parte e come prosegue.
</anatomia>

<subsection|Per proseguire: il caso generale>

Lo stesso metodo funziona per ogni ricorrenza <math|a<rsub|n+2>=ca<rsub|n+1>+da<rsub|n>> con <math|d≠0>, il cui polinomio caratteristico è <math|λ<rsup|2>-cλ-d>. Qui trattiamo il caso in cui ha due radici distinte <math|λ<rsub|1>,λ<rsub|2>>, e la formula cercata ha la forma

<\equation*>
a<rsub|n>=Aλ<rsub|1><rsup|n>+Bλ<rsub|2><rsup|n>.
</equation*>

Resta da capire se riusciamo sempre a scegliere le costanti in modo da rispettare qualunque coppia di dati iniziali. Le condizioni sono <math|A+B=a<rsub|0>> e <math|Aλ<rsub|1>+Bλ<rsub|2>=a<rsub|1>>. Sostituendo <math|A=a<rsub|0>-B> nella seconda otteniamo <math|B(λ<rsub|2>-λ<rsub|1>)=a<rsub|1>-a<rsub|0>λ<rsub|1>>, e siccome le radici sono distinte possiamo dividere per <math|λ<rsub|2>-λ<rsub|1>> e trovare un unico <math|B>, e poi un unico <math|A>. L'unicità della ricorrenza fa il resto. Quando serve, le radici e i calcoli si prendono nei numeri complessi, della forma <math|x+iy> con <math|x,y> reali e <math|i<rsup|2>=-1>.

<section|Fibonacci e il ritorno alle tassellazioni>

La successione più famosa di questo tipo è quella di <strong|Fibonacci>, definita da <math|F<rsub|0>=0>, <math|F<rsub|1>=1> e <math|F<rsub|n+2>=F<rsub|n+1>+F<rsub|n>>, che comincia con <math|0,1,1,2,3,5,8,…>. La sua equazione caratteristica è <math|λ<rsup|2>-λ-1=0>, con radici

<\equation*>
φ=<frac|1+<sqrt|5>|2>,<space|2em>ψ=<frac|1-<sqrt|5>|2>.
</equation*>

Cerchiamo quindi <math|F<rsub|n>=Aφ<rsup|n>+Bψ<rsup|n>>. La partenza chiede <math|A+B=0> e <math|Aφ+Bψ=1>, dunque <math|B=-A> e <math|A(φ-ψ)=1>. Poiché <math|φ-ψ=<sqrt|5>>, otteniamo <math|A=1/<sqrt|5>> e la <strong|formula di Binet>:

<\equation*>
F<rsub|n>=<frac|φ<rsup|n>-ψ<rsup|n>|<sqrt|5>>.
</equation*>

A prima vista è sorprendente che da radici quadrate escano sempre numeri interi. L'unicità però non lascia scampo, perché la formula rispetta partenza e regola e quindi produce esattamente i numeri di Fibonacci.

E le nostre tassellazioni? Seguono la stessa regola, ma partono da 1 e 1, cioè sono la successione di Fibonacci spostata di un posto, <math|T<rsub|n>=F<rsub|n+1>>. Controllare gli indici è facile, perché <math|T<rsub|0>=F<rsub|1>=1> e <math|T<rsub|1>=F<rsub|2>=1>.

<subsection|Per proseguire: un secondo conteggio delle tassellazioni>

Le tassellazioni si possono contare anche in un altro modo, che le lega ai coefficienti binomiali. Supponiamo che una copertura contenga <math|k> coppie di tessere orizzontali. Queste occupano <math|2k> colonne, e le altre <math|n-2k> colonne sono coperte da tessere verticali. Leggendo la copertura da sinistra a destra vediamo quindi <math|n-k> blocchi, e per descriverla basta dire quali <math|k> di questi blocchi sono coppie orizzontali. Sommando su tutti i valori possibili di <math|k> otteniamo

<\equation*>
T<rsub|n>=<big|sum><rsub|k=0><rsup|⌊n/2⌋><binom|n-k|k>,
</equation*>

dove <math|⌊n/2⌋> indica il più grande intero non maggiore di <math|n/2>. Per <math|n=4> la somma vale <math|1+3+1=5>, di nuovo il numero del disegno iniziale.

<subsection|In sintesi>

Una ricorrenza dice come proseguire, e i dati iniziali dicono da dove partire. L'equazione caratteristica trova le soluzioni che si adattano alla regola, e le costanti le adattano alla partenza. L'unicità spiega perché, alla fine, basta controllare questi due aspetti.

<\verifica|3>
<strong|1. Con un suggerimento.> Trova la formula esplicita per <math|a<rsub|n+2>=3a<rsub|n+1>-2a<rsub|n>> con <math|a<rsub|0>=5> e <math|a<rsub|1>=7>. Il polinomio caratteristico è quello già studiato: cambia soltanto il sistema per <math|A,B>.

<strong|2. In autonomia.> Quante coperture ha un rettangolo <math|2×6>? Calcola il numero sia con la ricorrenza sia distinguendo quante coppie orizzontali compaiono.
</verifica>
