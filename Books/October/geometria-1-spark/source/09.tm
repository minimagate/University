<chapter|Eliminazione di Gauss e sistemi a scala>

<\inbreve>
Alcuni sistemi lineari si risolvono quasi da soli, perché le equazioni si possono leggere una dopo l'altra, dal basso verso l'alto. Questo capitolo parte da quei sistemi e mostra come portarci anche tutti gli altri, con poche operazioni che non perdono e non aggiungono soluzioni. Il metodo che ne nasce, l'eliminazione di Gauss, ci darà sia le soluzioni dei sistemi sia un modo per passare dalle equazioni di un sottospazio ai suoi generatori e viceversa.
</inbreve>

<section|Pivot e variabili libere>

Lavoriamo su <math|ℝ> e cominciamo da un sistema già semplice:

<\equation*>
<choice|<tformat|<table|<row|<cell|2x<rsub|1>+x<rsub|2>-2x<rsub|3>=2>>|<row|<cell|x<rsub|2>-2x<rsub|3>=3>>>>>.
</equation*>

L'ultima equazione ci permette di scrivere <math|x<rsub|2>=3+2x<rsub|3>>. Sostituendo nella prima otteniamo <math|2x<rsub|1>+(3+2x<rsub|3>)-2x<rsub|3>=2>, cioè <math|2x<rsub|1>+3=2>, e quindi <math|x<rsub|1>=-1/2>. Nessuna equazione impone invece il valore di <math|x<rsub|3>>. Se lo scegliamo uguale a un parametro <math|t>, tutte le soluzioni sono <math|(-1/2,3+2t,t)<rsup|T>>.

Il sistema si è lasciato risolvere così facilmente per via della sua forma. La prima equazione comincia con <math|x<rsub|1>> e la seconda con <math|x<rsub|2>>, e in generale ogni nuova equazione comincia più a destra della precedente. Così, risalendo dal basso, ogni equazione introduce al più un'incognita nuova da ricavare.

<\concetto|Matrice a scala e pivot>
Una matrice è <strong|a scala> se le righe nulle sono in fondo e, passando da una riga non nulla alla successiva, la prima entrata non nulla si sposta strettamente a destra. Quella prima entrata si chiama <strong|pivot>. Sotto ogni pivot ci sono zeri.
</concetto>

<figura|@IMG(scala,0.9)|I pivot, indicati con <math|p≠0>, avanzano verso destra. Le stelle indicano entrate che possono avere qualsiasi valore, anche zero. Le righe completamente nulle sono in fondo.>

Le incognite che corrispondono a colonne con un pivot si chiamano <strong|variabili pivot>, le altre <strong|variabili libere>. Il metodo di soluzione è quello dell'esempio. Assegniamo valori arbitrari alle variabili libere e ricaviamo le variabili pivot risalendo dal basso. La scelta dei parametri dipende dalla forma a scala che abbiamo ottenuto, e la stessa famiglia di soluzioni si potrebbe descrivere anche con parametri diversi, purché si ottengano esattamente gli stessi vettori.

Bisogna però guardare anche i termini noti. Se nella matrice completa compare una riga <math|(0,…,0\|c)> con <math|c≠0>, quella riga dice <math|0=c>, cosa impossibile, e il sistema non ha soluzioni. In termini di pivot, questo accade quando un pivot cade nell'ultima colonna, quella dei termini noti, che non corrisponde a nessuna incognita. In una matrice completa a scala è l'unico ostacolo possibile. Se non c'è, la risalita dal basso trova sempre le variabili pivot, perché a ogni passo dividiamo per un pivot, che non è nullo.

<section|Operazioni di riga: cambiare la forma senza cambiare le soluzioni>

Supponiamo che una prima equazione contenga <math|x+2y> e una seconda contenga <math|2x+3y>. Se sottraiamo due volte la prima dalla seconda, la <math|x> sparisce dalla seconda equazione. È il tipo di mossa che ci serve per arrivare a una forma a scala, ma dobbiamo essere sicuri che non cambi l'insieme delle soluzioni. Sulla matrice completa usiamo tre <strong|operazioni elementari di riga>:

<\enumerate>

<item>scambiare due righe;

<item>moltiplicare una riga per <math|λ≠0>;

<item>sostituire <math|R<rsub|i>> con <math|R<rsub|i>+λR<rsub|j>>, per <math|i≠j>.
</enumerate>

Ognuna di queste operazioni si può annullare con un'operazione dello stesso tipo. Uno scambio si annulla ripetendolo, una moltiplicazione per <math|λ> si annulla moltiplicando per <math|λ<rsup|-1>>, e l'aggiunta di <math|λR<rsub|j>> si annulla sottraendo lo stesso multiplo. È questa reversibilità a garantire che le soluzioni non cambino. Prendiamo la terza operazione. Chi soddisfa entrambe le equazioni di partenza soddisfa anche la loro combinazione, quindi nessuna soluzione si perde. Viceversa, dalla nuova equazione e dalla riga <math|R<rsub|j>>, che non abbiamo toccato, ricostruiamo la vecchia equazione, quindi nessuna soluzione si aggiunge. Per le altre due operazioni il ragionamento è ancora più semplice. In ogni caso, <strong|l'insieme delle soluzioni resta esattamente lo stesso>.

Le condizioni nelle definizioni hanno un motivo. Se moltiplicassimo una riga per zero, trasformeremmo un'equazione che contiene informazioni in <math|0=0>, e perderemmo vincoli. Se nella terza operazione usassimo la riga stessa come appoggio, potremmo cancellarla sommandole il suo opposto.

<\attenzione|Trasformare anche i termini noti>
L'operazione si applica alla riga <em|intera> di <math|(A\|b)>. Se sostituiamo la seconda equazione con la seconda meno il doppio della prima, dobbiamo fare la stessa sottrazione anche sui termini noti. Cambiare soltanto i coefficienti produce un altro problema.
</attenzione>

Le operazioni di riga lasciano invariato anche lo span delle righe, perché ogni riga nuova è combinazione delle vecchie e, per la reversibilità, vale anche il contrario. Lo span delle colonne invece può cambiare. Con l'operazione <math|R<rsub|2>←R<rsub|2>-R<rsub|1>> la colonna <math|(1,1)<rsup|T>> diventa <math|(1,0)<rsup|T>>, e la retta obliqua che generava diventa un asse. Nel capitolo 10 vedremo che, nonostante questo, la <em|dimensione> dello span delle colonne non cambia.

<section|L'algoritmo e una riduzione completa>

Il cuore del metodo è una sola decisione, che si ripete. Supponiamo che nella colonna su cui lavoriamo ci sia un pivot <math|p≠0> e che sotto di esso ci sia un'entrata <math|a> che vogliamo annullare. Sottraendo <math|λ> volte la riga del pivot, quell'entrata diventa <math|a-λp>, e per farla diventare zero scegliamo <math|λ=a/p>. Possiamo dividere perché lavoriamo in un campo e il pivot non è nullo. Il metodo di Gauss ripete questa decisione su rettangoli sempre più piccoli:

<\enumerate>

<item>Nel rettangolo ancora da sistemare, cerca la prima colonna non tutta nulla. Le colonne nulle si saltano; se tutto il rettangolo è nullo, fermati.

<item>Porta un elemento non nullo in cima a quella colonna, scambiando righe se necessario. Sceglilo come pivot.

<item>Per ciascuna riga sottostante, sottrai <math|a/p> volte la riga pivot, dove <math|a> è l'entrata che vuoi annullare.

<item>Ripeti nel rettangolo sotto la riga pivot e a destra della sua colonna.
</enumerate>

Le righe già sistemate restano al loro posto e non vengono più toccate. A ogni nuovo pivot il rettangolo da sistemare perde una riga e almeno una colonna, e poiché righe e colonne sono in numero finito il procedimento prima o poi termina. Inoltre gli zeri già ottenuti non vengono rovinati, perché le righe usate nei passi successivi hanno zeri in tutte le posizioni a sinistra del rettangolo.

<figura|@IMG(gauss-passi,0.9)|Il rettangolo grigio è la parte ancora da sistemare. Ogni nuovo pivot riduce il lavoro rimanente, lasciando intatti gli zeri già ottenuti.>

<subsection|Una riduzione svolta>

Vediamo il metodo all'opera su un sistema reale, seguendo ogni scelta:

<\equation*>
(A\|b)=<matrix|<tformat|<cwith|1|-1|4|4|cell-lborder|0.5pt>|<table|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|2>|<cell|1>|<cell|2>>|<row|<cell|2>|<cell|3>|<cell|1>|<cell|3>>>>>.
</equation*>

La prima entrata è zero, ma nella prima colonna ci sono elementi non nulli, quindi possiamo procurarci un pivot con uno scambio. Scambiamo le prime due righe e scegliamo come pivot l'1 che arriva in cima:

<\equation*>
<matrix|<tformat|<cwith|1|-1|4|4|cell-lborder|0.5pt>|<table|<row|<cell|1>|<cell|2>|<cell|1>|<cell|2>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|2>|<cell|3>|<cell|1>|<cell|3>>>>>.
</equation*>

Sotto il pivot la seconda riga ha già uno zero, mentre la terza ha un 2, che eliminiamo con <math|R<rsub|3>←R<rsub|3>-2R<rsub|1>>. Nel rettangolo che resta il nuovo pivot è l'1 della seconda riga, e per eliminare il <math|-1> che compare sotto di esso sommiamo la seconda riga alla terza:

<\equation*>
<matrix|<tformat|<cwith|1|-1|4|4|cell-lborder|0.5pt>|<table|<row|<cell|1>|<cell|2>|<cell|1>|<cell|2>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|-1>|<cell|-1>|<cell|-1>>>>><space|1em>→<space|1em><matrix|<tformat|<cwith|1|-1|4|4|cell-lborder|0.5pt>|<table|<row|<cell|1>|<cell|2>|<cell|1>|<cell|2>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>.
</equation*>

La terza riga è diventata <math|0=0> e non impone più nulla. La variabile <math|x<rsub|3>> è libera, e poniamo <math|x<rsub|3>=t>. La seconda riga dà <math|x<rsub|2>=1-t>, e la prima dà <math|x<rsub|1>=2-2(1-t)-t=t>. Tutte le soluzioni sono quindi

<\equation*>
x=(0,1,0)<rsup|T>+t(1,-1,1)<rsup|T>,<space|1em>t∈ℝ.
</equation*>

<subsection|Leggere e controllare le soluzioni>

Conviene sempre controllare il risultato nel sistema di partenza, che è <math|x<rsub|2>+x<rsub|3>=1>, <math|x<rsub|1>+2x<rsub|2>+x<rsub|3>=2> e <math|2x<rsub|1>+3x<rsub|2>+x<rsub|3>=3>. Sostituendo la formula, in ogni equazione il parametro <math|t> si cancella e restano uguaglianze vere. La risposta ha la forma che ci aspettavamo dal capitolo precedente, cioè una soluzione particolare più i multipli di un vettore del nucleo.

<section|Contare i parametri e costruire una base del nucleo>

Se un sistema a scala compatibile ha <math|n> incognite e <math|k> pivot nella parte dei coefficienti, le variabili libere sono <math|n-k>. Ogni scelta dei loro valori determina una e una sola soluzione. L'esistenza viene dalla risalita dal basso, e l'unicità dal fatto che a ogni passo ricaviamo una variabile pivot dividendo per un pivot non nullo, senza nessuna scelta. Su un campo infinito basta quindi una variabile libera per avere infinite soluzioni. Su un campo con <math|q> elementi le soluzioni sono esattamente <math|q<rsup|n-k>>. Quando <math|k=n> non ci sono parametri da scegliere, e la soluzione è unica.

Vediamo un esempio con due parametri:

<\equation*>
x<rsub|1>+x<rsub|2>-x<rsub|3>+2x<rsub|4>=2,<space|1em>x<rsub|3>+x<rsub|4>=-1.
</equation*>

I pivot sono nelle colonne 1 e 3, quindi le variabili libere sono <math|x<rsub|2>=s> e <math|x<rsub|4>=t>. L'ultima equazione dà <math|x<rsub|3>=-1-t>, e la prima dà <math|x<rsub|1>=2-s+(-1-t)-2t=1-s-3t>. Raccogliendo i termini con lo stesso parametro troviamo

<\equation*>
x=(1,0,-1,0)<rsup|T>+s(-1,1,0,0)<rsup|T>+t(-3,0,-1,1)<rsup|T>.
</equation*>

Il primo vettore è una soluzione particolare, e i due vettori che moltiplicano <math|s> e <math|t> generano il nucleo. Sono anche indipendenti, e il motivo si legge nelle componenti libere. Nella componente 2 soltanto il primo dei due vettori ha un 1, e nella componente 4 soltanto il secondo. In una combinazione nulla queste due componenti obbligano quindi entrambi i coefficienti a essere zero.

Lo stesso ragionamento funziona sempre. Nel sistema omogeneo diamo a turno il valore 1 a una variabile libera e il valore 0 a tutte le altre, e ricaviamo le variabili pivot. I vettori così ottenuti generano tutte le soluzioni, e guardando le componenti libere si vede che sono indipendenti. Otteniamo dunque una base del nucleo, e non soltanto un insieme di generatori.

<section|Dalle equazioni ai generatori, e viceversa>

Un sottospazio si può descrivere con delle equazioni, che dicono quali vettori sono ammessi, oppure con dei generatori, che dicono come costruirli. Gauss permette di passare da una descrizione all'altra. Consideriamo <math|W⊆ℝ<rsup|4>> definito dalle equazioni <math|x<rsub|1>+x<rsub|2>+x<rsub|3>+x<rsub|4>=0> e <math|x<rsub|3>-x<rsub|4>=0>, che sono già a scala. Con <math|x<rsub|2>=s> e <math|x<rsub|4>=t> otteniamo <math|x<rsub|3>=t> e <math|x<rsub|1>=-s-2t>, e quindi

<\equation*>
W=<math-up|span>((-1,1,0,0)<rsup|T>,(-2,0,1,1)<rsup|T>).
</equation*>

Le componenti libere mostrano che i due vettori sono indipendenti, quindi formano una base e <math|dim W=2>. Abbiamo così trasformato delle condizioni in istruzioni di costruzione.

<subsection|Dai generatori a un'equazione>

Ora facciamo il percorso inverso. Supponiamo di conoscere i generatori <math|v<rsub|1>=(1,-1,0)<rsup|T>> e <math|v<rsub|2>=(0,1,-1)<rsup|T>> e di voler trovare un'equazione del loro span. Un vettore generico <math|w=(x,y,z)<rsup|T>> sta nello span quando esistono coefficienti <math|a,b> con <math|av<rsub|1>+bv<rsub|2>=w>. Questo è un sistema nelle incognite <math|a,b>, con matrice completa

<\equation*>
<matrix|<tformat|<cwith|1|-1|3|3|cell-lborder|0.5pt>|<table|<row|<cell|1>|<cell|0>|<cell|x>>|<row|<cell|-1>|<cell|1>|<cell|y>>|<row|<cell|0>|<cell|-1>|<cell|z>>>>>.
</equation*>

Sommiamo la prima riga alla seconda, e poi la nuova seconda riga alla terza. Otteniamo

<\equation*>
<matrix|<tformat|<cwith|1|-1|3|3|cell-lborder|0.5pt>|<table|<row|<cell|1>|<cell|0>|<cell|x>>|<row|<cell|0>|<cell|1>|<cell|x+y>>|<row|<cell|0>|<cell|0>|<cell|x+y+z>>>>>.
</equation*>

L'ultima riga dice che il sistema è compatibile soltanto se <math|x+y+z=0>. Questa condizione è anche sufficiente, perché quando vale le prime due righe determinano <math|a=x> e <math|b=x+y>. Abbiamo quindi trovato esattamente il piano

<\equation*>
<math-up|span>(v<rsub|1>,v<rsub|2>)=<around|{|(x,y,z)<rsup|T>:x+y+z=0|}>.
</equation*>

<figura|@IMG(piano-span,0.9)|Lo stesso piano è descritto da due generatori indipendenti oppure dall'equazione <math|x+y+z=0>. Gauss permette di passare da una descrizione all'altra.>

Poter passare da una descrizione all'altra rende semplici anche le operazioni sui sottospazi, purché si scelga la descrizione giusta. Per un'intersezione conviene avere le equazioni, perché basta imporre insieme quelle dei due sottospazi e risolvere il sistema omogeneo. Per una somma conviene avere i generatori, perché basta metterli insieme. Se poi della somma serve una base, togliamo i generatori superflui. Possiamo controllarli uno alla volta, chiedendoci con un sistema se ciascuno stia nello span dei precedenti, oppure usare la scorciatoia delle colonne pivot, che giustificheremo nel prossimo capitolo.

<\verifica|9>
<strong|9.1.> Risolvi il sistema reale con matrice completa <math|<matrix|<tformat|<cwith|1|-1|4|4|cell-lborder|0.5pt>|<table|<row|<cell|0>|<cell|1>|<cell|1>|<cell|2>>|<row|<cell|1>|<cell|1>|<cell|0>|<cell|1>>|<row|<cell|2>|<cell|2>|<cell|0>|<cell|2>>>>>>. Prima individua se serve uno scambio; poi scrivi le soluzioni come una particolare più il nucleo.

<strong|9.2.> In <math|ℝ<rsup|3>>, siano <math|U=<math-up|span>((1,-1,0)<rsup|T>,(0,1,-1)<rsup|T>)> e <math|W=<around|{|(x,y,z)<rsup|T>:x=z|}>>. Trova una base dell'intersezione e determina <math|U+W>. Prova prima a scegliere quali descrizioni convengono.
</verifica>
