<chapter|Eliminazione di Gauss e sistemi a scala>

Conoscere la forma delle soluzioni non basta ancora a trovarle. Per una matrice grande non vogliamo indovinare una soluzione particolare e una base del nucleo. L'eliminazione di Gauss offre un procedimento che funziona per ogni matrice su un campo: trasforma le equazioni fino a renderle risolvibili dal basso verso l'alto.

<section|Pivot e variabili libere>

Partiamo da un sistema già semplice:

<\equation*>
<choice|<tformat|<table|<row|<cell|2x<rsub|1>+x<rsub|2>-2x<rsub|3>=2>>|<row|<cell|x<rsub|2>-2x<rsub|3>=3>>>>>.
</equation*>

Qui lavoriamo su <math|ℝ>. L'ultima equazione permette di scrivere <math|x<rsub|2>=3+2x<rsub|3>>. Sostituendo nella prima si ottiene <math|2x<rsub|1>+3=2>, quindi <math|x<rsub|1>=-1/2>. Il valore di <math|x<rsub|3>> non è imposto da altre equazioni: scelto <math|x<rsub|3>=t>, tutte le soluzioni sono <math|(-1/2,3+2t,t)<rsup|T>>.

Perché abbiamo potuto risolvere così? La prima equazione comincia con <math|x<rsub|1>>, la seconda con <math|x<rsub|2>>. Ogni nuova equazione comincia più a destra: non reintroduce l'incognita che ci siamo lasciati alle spalle.

<\concetto|Matrice a scala e pivot>
Una matrice è <strong|a scala> se le righe nulle sono in fondo e, passando da una riga non nulla alla successiva, la prima entrata non nulla si sposta strettamente a destra. Quella prima entrata si chiama <strong|pivot>. Sotto ogni pivot ci sono zeri.
</concetto>

<figura|@IMG(scala,0.9)|I pivot, indicati con <math|p≠0>, avanzano verso destra. Le stelle sono entrate arbitrarie e possono valere anche zero. Le righe completamente nulle sono in fondo.>

Le colonne delle incognite con pivot individuano le <strong|variabili pivot>; le altre individuano le <strong|variabili libere>. Assegniamo valori alle libere e ricaviamo le pivot a ritroso. Questa scelta dei parametri viene dalla forma a scala adottata; la famiglia di soluzioni può essere riscritta anche con altri parametri, purché descriva esattamente gli stessi vettori.

Occorre guardare anche i termini noti. Se nella matrice completa compare una riga <math|(0,…,0\|c)> con <math|c≠0>, essa impone <math|0=c>: il sistema è incompatibile. È un pivot nell'ultima colonna, quella che non corrisponde a un'incognita. In una matrice completa a scala questa è l'unica possibile ostruzione: se non compare, la sostituzione dal basso trova sempre le variabili pivot, dividendo per pivot non nulli.

<section|Operazioni di riga: cambiare la forma conservando le soluzioni>

Se una prima equazione contiene <math|x+2y> e una seconda contiene <math|2x+3y>, sottrarre due volte la prima dalla seconda elimina <math|x>. Vogliamo usare questa idea senza perdere o aggiungere soluzioni.

Le tre <strong|operazioni elementari di riga> sulla matrice completa sono:

<\enumerate>

<item>scambiare due righe;


<item>moltiplicare una riga per <math|λ≠0>;


<item>sostituire <math|R<rsub|i>> con <math|R<rsub|i>+λR<rsub|j>>, per <math|i≠j>.
</enumerate>

Ogni operazione ha un'inversa: ripetere lo scambio; moltiplicare per <math|λ<rsup|-1>>; sottrarre lo stesso multiplo. Per la terza, chi soddisfa entrambe le equazioni iniziali soddisfa la loro combinazione; viceversa recuperiamo la vecchia equazione sottraendo <math|λ> volte la riga che abbiamo conservato. Quindi <strong|l'insieme delle soluzioni resta identico in entrambe le direzioni>.

La condizione <math|λ≠0> evita di trasformare un'equazione informativa in <math|0=0>. Nella terza operazione la riga di appoggio deve essere un'altra: aggiungere alla stessa riga il suo opposto la cancellerebbe.

<\attenzione|Trasformare anche i termini noti>
L'operazione si applica alla riga <em|intera> di <math|(A\|b)>. Se sostituiamo la seconda equazione con la seconda meno il doppio della prima, dobbiamo fare la stessa sottrazione anche sui termini noti. Cambiare soltanto i coefficienti produce un altro problema.
</attenzione>

Le mosse conservano anche lo span delle righe: ogni nuova riga è combinazione delle vecchie e la reversibilità dà l'inclusione opposta. Per le colonne, invece, lo span può cambiare. La colonna <math|(1,1)<rsup|T>> diventa <math|(1,0)<rsup|T>> dopo <math|R<rsub|2>←R<rsub|2>-R<rsub|1>>: prima generava una retta obliqua, poi un asse. Nel capitolo 10 vedremo perché la <em|dimensione> dello spazio delle colonne rimane comunque la stessa.

<section|L'algoritmo e una riduzione completa>

Supponiamo che nella colonna scelta il pivot sia <math|p≠0> e che sotto di esso compaia <math|a>. Quale multiplo della riga pivot dobbiamo sottrarre? Vogliamo <math|a-λp=0>, quindi scegliamo <math|λ=a/p>. Questa divisione è consentita perché lavoriamo su un campo e il pivot non è zero.

Gauss ripete questa decisione su rettangoli sempre più piccoli:

<\enumerate>

<item>Nel rettangolo ancora da sistemare, cerca la prima colonna non tutta nulla. Le colonne nulle si saltano; se tutto il rettangolo è nullo, fermati.


<item>Porta un elemento non nullo in cima a quella colonna, scambiando righe se necessario. Sceglilo come pivot.


<item>Per ciascuna riga sottostante, sottrai <math|a/p> volte la riga pivot, dove <math|a> è l'entrata che vuoi annullare.


<item>Ripeti nel rettangolo sotto la riga pivot e a destra della sua colonna.
</enumerate>

Le righe già sistemate restano scritte; non si cancellano. A ogni pivot il rettangolo perde una riga e almeno una colonna. Ci sono soltanto un numero finito di righe e colonne: il procedimento termina. Gli zeri creati a sinistra dei nuovi pivot restano zero, perché le righe usate nei passi successivi hanno zero in quelle posizioni.

<figura|@IMG(gauss-passi,0.9)|Il rettangolo grigio è la parte ancora da sistemare. Ogni nuovo pivot riduce il lavoro rimanente, lasciando intatti gli zeri già ottenuti.>

Vediamo tutte le scelte su un esempio reale:

<\equation*>
(A\|b)=<matrix|<tformat|<cwith|1|-1|4|4|cell-lborder|0.5pt>|<table|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|2>|<cell|1>|<cell|2>>|<row|<cell|2>|<cell|3>|<cell|1>|<cell|3>>>>>.
</equation*>

La prima entrata è zero, ma nella prima colonna ci sono elementi non nulli. Scambiamo <math|R<rsub|1>> e <math|R<rsub|2>>, scegliendo il pivot 1. Otteniamo

<\equation*>
<matrix|<tformat|<cwith|1|-1|4|4|cell-lborder|0.5pt>|<table|<row|<cell|1>|<cell|2>|<cell|1>|<cell|2>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|2>|<cell|3>|<cell|1>|<cell|3>>>>>.
</equation*>

Sotto il pivot la seconda riga ha già zero; la terza ha 2. Facciamo <math|R<rsub|3>←R<rsub|3>-2R<rsub|1>>. Poi nel rettangolo rimasto il pivot è l'1 della seconda riga. Per eliminare il <math|-1> sotto di esso sommiamo la seconda riga alla terza:

<\equation*>
<matrix|<tformat|<cwith|1|-1|4|4|cell-lborder|0.5pt>|<table|<row|<cell|1>|<cell|2>|<cell|1>|<cell|2>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|-1>|<cell|-1>|<cell|-1>>>>><space|1em>→<space|1em><matrix|<tformat|<cwith|1|-1|4|4|cell-lborder|0.5pt>|<table|<row|<cell|1>|<cell|2>|<cell|1>|<cell|2>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>.
</equation*>

La terza riga dice <math|0=0>, quindi non impone altri vincoli. Poniamo <math|x<rsub|3>=t>. La seconda riga dà <math|x<rsub|2>=1-t>; la prima dà <math|x<rsub|1>=2-2(1-t)-t=t>. Tutte le soluzioni sono

<\equation*>
x=(0,1,0)<rsup|T>+t(1,-1,1)<rsup|T>,<space|1em>t∈ℝ.
</equation*>

Controlliamo nel sistema originale: <math|x<rsub|2>+x<rsub|3>=1>, <math|x<rsub|1>+2x<rsub|2>+x<rsub|3>=2>, <math|2x<rsub|1>+3x<rsub|2>+x<rsub|3>=3>. Sostituendo la formula, il parametro si cancella in ciascuna equazione. Vediamo anche la struttura del capitolo precedente: una soluzione particolare più un multiplo di un vettore del nucleo.

<section|Contare i parametri e costruire una base del nucleo>

Se un sistema a scala compatibile ha <math|n> incognite e <math|k> pivot nella parte dei coefficienti, ci sono <math|n-k> variabili libere. Ogni scelta di quei valori determina una e una sola soluzione: l'esistenza viene dalla sostituzione all'indietro e l'unicità dal fatto che a ogni passo si divide per un pivot non nullo.

Su un campo infinito, almeno una variabile libera dà infinite soluzioni. Su un campo con <math|q> elementi, le scelte sono esattamente <math|q<rsup|n-k>>. Quando <math|k=n>, l'unica scelta è quella senza parametri e la soluzione è unica.

Un esempio con due parametri, tratto dalla lezione del 22 ottobre, è

<\equation*>
x<rsub|1>+x<rsub|2>-x<rsub|3>+2x<rsub|4>=2,<space|1em>x<rsub|3>+x<rsub|4>=-1.
</equation*>

I pivot sono nelle colonne 1 e 3. Scegliamo <math|x<rsub|2>=s>, <math|x<rsub|4>=t>. L'ultima equazione dà <math|x<rsub|3>=-1-t>; la prima dà <math|x<rsub|1>=2-s+(-1-t)-2t=1-s-3t>. Raccogliendo:

<\equation*>
x=(1,0,-1,0)<rsup|T>+s(-1,1,0,0)<rsup|T>+t(-3,0,-1,1)<rsup|T>.
</equation*>

Togliendo la soluzione particolare, i due vettori che moltiplicano <math|s,t> formano una base del nucleo. Perché sono indipendenti? Nella componente 2 soltanto il primo ha un 1; nella componente 4 soltanto il secondo ha un 1. Una combinazione nulla obbliga quindi entrambi i coefficienti a essere zero.

La stessa giustificazione vale in generale. Nel sistema omogeneo assegniamo a turno il valore 1 a una variabile libera e 0 alle altre; ricaviamo le pivot. I vettori ottenuti generano tutte le soluzioni e, guardando le componenti libere, sono indipendenti. Otteniamo così una base, non soltanto una lista di generatori.

<section|Dalle equazioni ai generatori, e viceversa>

Consideriamo <math|W⊆ℝ<rsup|4>> definito dalle equazioni <math|x<rsub|1>+x<rsub|2>+x<rsub|3>+x<rsub|4>=0> e <math|x<rsub|3>-x<rsub|4>=0>. Sono già a scala. Con <math|x<rsub|2>=s> e <math|x<rsub|4>=t> otteniamo <math|x<rsub|3>=t>, <math|x<rsub|1>=-s-2t>. Dunque

<\equation*>
W=<math-up|span>((-1,1,0,0)<rsup|T>,(-2,0,1,1)<rsup|T>).
</equation*>

I due vettori sono indipendenti guardando le componenti libere, perciò sono una base e <math|dim W=2>. Abbiamo tradotto condizioni in possibilità di costruzione.

Per fare il percorso inverso, supponiamo di conoscere i generatori <math|v<rsub|1>=(1,-1,0)<rsup|T>> e <math|v<rsub|2>=(0,1,-1)<rsup|T>>. Un vettore generico <math|w=(x,y,z)<rsup|T>> sta nel loro span se esistono coefficienti <math|a,b> con <math|av<rsub|1>+bv<rsub|2>=w>. La matrice completa è

<\equation*>
<matrix|<tformat|<cwith|1|-1|3|3|cell-lborder|0.5pt>|<table|<row|<cell|1>|<cell|0>|<cell|x>>|<row|<cell|-1>|<cell|1>|<cell|y>>|<row|<cell|0>|<cell|-1>|<cell|z>>>>>.
</equation*>

Sommiamo la prima riga alla seconda; poi sommiamo la nuova seconda riga alla terza. Otteniamo

<\equation*>
<matrix|<tformat|<cwith|1|-1|3|3|cell-lborder|0.5pt>|<table|<row|<cell|1>|<cell|0>|<cell|x>>|<row|<cell|0>|<cell|1>|<cell|x+y>>|<row|<cell|0>|<cell|0>|<cell|x+y+z>>>>>.
</equation*>

L'ultima equazione impone <math|x+y+z=0>. Se vale, le prime due determinano <math|a=x>, <math|b=x+y>; quindi la condizione è anche sufficiente. Abbiamo trovato esattamente il piano

<\equation*>
<math-up|span>(v<rsub|1>,v<rsub|2>)=<around|{|(x,y,z)<rsup|T>:x+y+z=0|}>.
</equation*>

<new-page>

<figura|@IMG(piano-span,0.9)|Lo stesso piano è descritto da due generatori indipendenti oppure dall'equazione <math|x+y+z=0>. Gauss permette di passare da una descrizione all'altra.>

Questo collega anche le operazioni sui sottospazi. Per trovare un'intersezione, imponiamo insieme le equazioni dei due sottospazi e risolviamo il sistema omogeneo. Per trovare una somma, riuniamo i generatori. Se serve una base della somma, eliminiamo i generatori superflui: possiamo verificarli uno alla volta risolvendo un sistema di appartenenza allo span dei precedenti. La scelta degli indici pivot, giustificata nel capitolo successivo, rende più rapido questo passaggio.

<\verifica|9>
<strong|9.1.> Risolvi il sistema reale con matrice completa <math|<matrix|<tformat|<cwith|1|-1|4|4|cell-lborder|0.5pt>|<table|<row|<cell|0>|<cell|1>|<cell|1>|<cell|2>>|<row|<cell|1>|<cell|1>|<cell|0>|<cell|1>>|<row|<cell|2>|<cell|2>|<cell|0>|<cell|2>>>>>>. Prima individua se serve uno scambio; poi scrivi le soluzioni come una particolare più il nucleo.

<strong|9.2.> In <math|ℝ<rsup|3>>, siano <math|U=<math-up|span>((1,-1,0)<rsup|T>,(0,1,-1)<rsup|T>)> e <math|W=<around|{|(x,y,z)<rsup|T>:x=z|}>>. Trova una base dell'intersezione e determina <math|U+W>. Prova prima a scegliere quali descrizioni convengono.
</verifica>
