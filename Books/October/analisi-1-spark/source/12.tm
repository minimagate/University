<chapter|Derivate e differenziabilità>

<\inbreve>
Quando passiamo da 2 a <math|2+h>, il quadrato cambia di <math|4h+h<rsup|2>>. Se <math|h> è piccolo, il termine <math|h<rsup|2>> è minuscolo rispetto a <math|4h>, e quasi tutto il cambiamento è descritto dalla parte lineare. Da questa osservazione nasce la derivata, che misura quanto rapidamente cambia una funzione, e insieme a lei il differenziale, che esprime la stessa idea con il linguaggio dei resti. Poi ricaveremo le regole che permettono di derivare praticamente ogni funzione che incontriamo.
</inbreve>

<section|Rapporto incrementale e retta tangente>

Sia <math|x<rsub|0>> un punto interno al dominio di <math|f>, cioè un punto attorno al quale <math|f> è definita su un piccolo intervallo aperto. Se ci spostiamo da <math|x<rsub|0>> a <math|x<rsub|0>+h>, con <math|h≠0> piccolo, la funzione passa da <math|f(x<rsub|0>)> a <math|f(x<rsub|0>+h)>. Il <strong|rapporto incrementale>

<\equation*>
<frac|f(x<rsub|0>+h)-f(x<rsub|0>)|h>
</equation*>

divide l'incremento verticale per quello orizzontale, ed è quindi la pendenza della retta secante che passa per i due punti del grafico. Se avviciniamo il secondo punto al primo, la secante ruota, e possiamo chiederci se la sua pendenza si stabilizzi.

<\concetto|Derivata>
La funzione è derivabile in <math|x<rsub|0>> se il rapporto incrementale ha un limite reale finito per <math|h→0>. Quel limite si chiama derivata e si indica con <math|f<rprime|'>(x<rsub|0>)>. La tangente ha equazione

<\equation*>
y=f(x<rsub|0>)+f<rprime|'>(x<rsub|0>)(x-x<rsub|0>).
</equation*>
</concetto>

Nella definizione contano due dettagli. Il limite deve essere finito, quindi un rapporto incrementale che tende all'infinito non dà una derivata reale. E il limite è bilatero, quindi le pendenze calcolate da destra e da sinistra devono andare d'accordo.

Per <math|f(x)=x<rsup|2>> il calcolo è esatto:

<\equation*>
<frac|(x<rsub|0>+h)<rsup|2>-x<rsub|0><rsup|2>|h>=2x<rsub|0>+h→2x<rsub|0>.
</equation*>

La derivata è quindi <math|f<rprime|'>(x<rsub|0>)=2x<rsub|0>>, e nel punto <math|x<rsub|0>=2> la tangente è la retta <math|y=4+4(x-2)>.

<figura|@IMG(secante)|La pendenza della secante dipende da <math|h>. Quando il rapporto incrementale converge, la pendenza limite definisce la tangente.>

<section|Differenziale: la stessa informazione come sviluppo>

Torniamo all'identità <math|(x<rsub|0>+h)<rsup|2>=x<rsub|0><rsup|2>+2x<rsub|0>h+h<rsup|2>>. Poiché <math|h<rsup|2>=o(h)>, la funzione si divide in tre parti, il valore di partenza, una variazione lineare in <math|h> e un errore trascurabile rispetto all'incremento. Questa scomposizione è un altro modo di dire che la funzione è derivabile.

<\concetto|Differenziabilità in una variabile>
La funzione <math|f> è differenziabile in <math|x<rsub|0>> se esiste <math|α∈ℝ> tale che

<\equation*>
f(x<rsub|0>+h)=f(x<rsub|0>)+αh+o(h).
</equation*>

L'applicazione lineare <math|h↦αh> è il differenziale. In una variabile, derivabilità e differenziabilità sono equivalenti e <math|α=f<rprime|'>(x<rsub|0>)>.
</concetto>

Dimostriamo l'equivalenza. Se <math|f> è derivabile, il rapporto incrementale tende a <math|f<rprime|'>(x<rsub|0>)>, e quindi

<\equation*>
<frac|f(x<rsub|0>+h)-f(x<rsub|0>)-f<rprime|'>(x<rsub|0>)h|h>→0.
</equation*>

Questo dice esattamente che il numeratore è un <math|o(h)>, ed è lo sviluppo richiesto con <math|α=f<rprime|'>(x<rsub|0>)>. Viceversa, se conosciamo uno sviluppo con un certo coefficiente <math|α>, dividendo l'incremento per <math|h> otteniamo <math|α+o(h)/h>, che tende ad <math|α>. La derivata esiste e vale <math|α>, e questo mostra anche che il coefficiente lineare non può essere scelto in due modi diversi.

<figura|@IMG(differenziale)|Il valore sul grafico si ottiene dal valore iniziale <math|AB>, aggiungendo il contributo lineare <math|BC=αh> e lo scarto <math|CD=o(h)>. Il disegno mostra un incremento positivo; i termini algebrici possono avere segno.>

Una prima conseguenza è che <strong|derivabile implica continua>. Infatti <math|f(x<rsub|0>+h)-f(x<rsub|0>)=f<rprime|'>(x<rsub|0>)h+o(h)>, e il membro destro tende a zero. Il viceversa è falso. La funzione <math|\|x\|> è continua in zero, ma il suo rapporto incrementale vale 1 per <math|h›0> e <math|-1> per <math|h‹0>, e le due pendenze non si accordano.

<section|Derivate delle funzioni elementari>

Ora raccogliamo i frutti dei limiti notevoli, che abbiamo costruito senza usare derivate e che adesso ci danno direttamente i coefficienti lineari. Per l'esponenziale

<\equation*>
e<rsup|x<rsub|0>+h>=e<rsup|x<rsub|0>>(1+h+o(h))=e<rsup|x<rsub|0>>+e<rsup|x<rsub|0>>h+o(h),
</equation*>

e il coefficiente di <math|h> ci dice che <math|(e<rsup|x>)<rprime|'>=e<rsup|x>>.

Per il logaritmo, con <math|x<rsub|0>›0>, conviene scrivere l'incremento come una variazione relativa, così da far comparire <math|log(1+t)>:

<\equation*>
log(x<rsub|0>+h)=log x<rsub|0>+log(1+h/x<rsub|0>)=log x<rsub|0>+<frac|h|x<rsub|0>>+o(h).
</equation*>

Quindi <math|(log x)<rprime|'>=1/x>. Notiamo che non abbiamo avuto bisogno della formula per la derivata dell'inversa, perché la derivata viene direttamente dal limite del logaritmo.

Per il seno la formula di addizione separa ciò che dipende da <math|h> da ciò che dipende solo dal punto:

<\equation*>
sin(x<rsub|0>+h)=sin x<rsub|0> cos h+cos x<rsub|0> sin h.
</equation*>

Sostituendo <math|cos h=1+o(h)> e <math|sin h=h+o(h)> troviamo come coefficiente lineare <math|cos x<rsub|0>>. Con la formula di addizione del coseno, allo stesso modo, il coefficiente è <math|-sin x<rsub|0>>. Otteniamo così

<\equation*>
(sin x)<rprime|'>=cos x,<space|2em>(cos x)<rprime|'>=-sin x.
</equation*>

Per <math|x<rsup|n>>, con <math|n≥1> intero, il binomio di Newton dà un solo termine lineare, <math|nx<rsub|0><rsup|n-1>h>, mentre tutti gli altri contengono almeno <math|h<rsup|2>>. Quindi <math|(x<rsup|n>)<rprime|'>=nx<rsup|n-1>>. Infine la derivata di una costante è zero, perché il suo incremento è sempre nullo.

<section|Somme, prodotti e quozienti>

Se <math|f> e <math|g> sono derivabili nello stesso punto, possiamo sommare i loro sviluppi, e allora si sommano anche i coefficienti lineari. Così <math|(f+g)<rprime|'>=f<rprime|'>+g<rprime|'>>, e per una costante <math|λ> vale <math|(λf)<rprime|'>=λf<rprime|'>>.

Il prodotto è più interessante, perché il cambiamento ha due sorgenti. Una parte viene dalla variazione di <math|f>, mentre <math|g> resta al suo valore iniziale, e l'altra dalla variazione di <math|g>, mentre <math|f> resta ferma. Per vederlo abbreviamo <math|f<rsub|0>=f(x<rsub|0>)>, <math|g<rsub|0>=g(x<rsub|0>)>, <math|a=f<rprime|'>(x<rsub|0>)> e <math|b=g<rprime|'>(x<rsub|0>)>, e moltiplichiamo i due sviluppi

<\equation*>
(f<rsub|0>+ah+o(h))(g<rsub|0>+bh+o(h)).
</equation*>

Il termine costante è <math|f<rsub|0>g<rsub|0>> e quello lineare è <math|(ag<rsub|0>+f<rsub|0>b)h>. Tutti gli altri prodotti sono <math|o(h)>, perché contengono un resto moltiplicato per una quantità limitata, oppure almeno un fattore <math|h<rsup|2>>. Ne segue la regola di Leibniz

<\equation*>
(fg)<rprime|'>=f<rprime|'>g+fg<rprime|'>.
</equation*>

Per il reciproco supponiamo <math|g(x<rsub|0>)≠0>. Poiché <math|g> è continua in <math|x<rsub|0>>, resta diversa da zero in un piccolo intorno, e lì il reciproco è definito. Portando a denominatore comune il suo rapporto incrementale otteniamo

<\equation*>
<frac|1/g(x<rsub|0>+h)-1/g(x<rsub|0>)|h>=-<frac|g(x<rsub|0>+h)-g(x<rsub|0>)|h>·<frac|1|g(x<rsub|0>+h)g(x<rsub|0>)>.
</equation*>

Il primo fattore tende a <math|-g<rprime|'>(x<rsub|0>)> e il secondo, sempre per la continuità, a <math|1/g(x<rsub|0>)<rsup|2>>. Quindi <math|(1/g)<rprime|'>=-g<rprime|'>/g<rsup|2>>, e applicando la regola del prodotto a <math|f/g=f·(1/g)> troviamo

<\equation*>
<around*|(|<frac|f|g>|)><rprime|'>=<frac|f<rprime|'>g-fg<rprime|'>|g<rsup|2>><space|2em>(g≠0).
</equation*>

Per esempio, dove <math|cos x≠0>,

<\equation*>
(tan x)<rprime|'>=<frac|cos<rsup|2>x+sin<rsup|2>x|cos<rsup|2>x>=<frac|1|cos<rsup|2>x>=1+tan<rsup|2>x.
</equation*>

<section|Derivata della funzione composta>

Nella funzione <math|cos(x<rsup|3>)> un piccolo spostamento di <math|x> modifica prima <math|x<rsup|3>>, e questa modifica viene poi trasmessa al coseno. In ciascun passaggio la funzione si comporta localmente come una moltiplicazione per la sua derivata, quindi le due proporzioni si moltiplicano. Vicino a <math|x=1>, per esempio, il cubo cambia di circa <math|3h>. Vicino al valore 1, il coseno cambia di circa <math|-sin 1> volte l'incremento che riceve, e la composta cambia quindi di circa <math|-3sin 1·h>.

In generale, se <math|f> è derivabile in <math|x<rsub|0>> e <math|g> è derivabile in <math|y<rsub|0>=f(x<rsub|0>)>, con domini aperti appropriati, vale la regola della catena

<\equation*>
(g∘f)<rprime|'>(x<rsub|0>)=g<rprime|'>(f(x<rsub|0>))f<rprime|'>(x<rsub|0>).
</equation*>

<subsection|La prova: controllare anche gli incrementi nulli>

La dimostrazione più naturale sembrerebbe moltiplicare e dividere per l'incremento della funzione interna. Questo incremento però può essere zero anche quando <math|h≠0>, come succede se la funzione interna è costante, e allora non potremmo dividere. Per questo usiamo lo sviluppo, che funziona anche con un incremento nullo.

Chiamiamo <math|k=f(x<rsub|0>+h)-f(x<rsub|0>)>. Sappiamo che <math|k=ah+o(h)>, con <math|a=f<rprime|'>(x<rsub|0>)>, quindi il rapporto <math|k/h> tende ad <math|a> ed è limitato vicino a zero, e inoltre <math|k→0>. La differenziabilità di <math|g> si scrive <math|g(y<rsub|0>+k)=g(y<rsub|0>)+bk+kε(k)>, con <math|b=g<rprime|'>(y<rsub|0>)> ed <math|ε(k)→0>. Ponendo <math|ε(0)=0> questa identità vale anche per <math|k=0>.

Dopo la sostituzione dobbiamo controllare il resto rispetto ad <math|h>, e non soltanto rispetto a <math|k>. Dividendo <math|kε(k)> per <math|h> otteniamo <math|(k/h)ε(k)>, prodotto di un fattore limitato e di uno che tende a zero, quindi <math|kε(k)=o(h)>. Sostituendo anche <math|k=ah+o(h)> arriviamo a

<\equation*>
g(f(x<rsub|0>+h))=g(f(x<rsub|0>))+bah+o(h),
</equation*>

e il coefficiente lineare è <math|ba>, come volevamo, senza mai dividere per <math|k>.

Nella pratica bisogna riconoscere bene quale funzione è interna e quale esterna. Per esempio <math|(cos(x<rsup|3>))<rprime|'>=-sin(x<rsup|3>)·3x<rsup|2>>, mentre <math|((cos x)<rsup|3>)<rprime|'>=3cos<rsup|2>x·(-sin x)>, perché spostare la potenza scambia i ruoli delle due funzioni.

<section|Derivata dell'inversa e potenze variabili>

Se una funzione si comporta localmente come una moltiplicazione per <math|f<rprime|'>(x<rsub|0>)>, è naturale aspettarsi che la sua inversa si comporti come una divisione per lo stesso numero. Il risultato preciso è questo. Sia <math|f:I→J> biiettiva fra intervalli aperti, sia <math|g=f<rsup|-1>> e sia <math|y<rsub|0>=f(x<rsub|0>)>. Supponiamo che <math|f> sia derivabile in <math|x<rsub|0>>, con <math|f<rprime|'>(x<rsub|0>)≠0>, e che <math|g> sia continua in <math|y<rsub|0>>. Allora

<\equation*>
g<rprime|'>(y<rsub|0>)=<frac|1|f<rprime|'>(x<rsub|0>)>.
</equation*>

Per le funzioni elementari che usiamo l'ipotesi di continuità è già nota, perché le loro restrizioni sono continue e strettamente monotone.

Per la dimostrazione poniamo <math|x=g(y)>. Se <math|y≠y<rsub|0>>, l'iniettività dà <math|x≠x<rsub|0>>, e la continuità di <math|g> dà <math|x→x<rsub|0>> quando <math|y→y<rsub|0>>. Quindi

<\equation*>
<frac|g(y)-g(y<rsub|0>)|y-y<rsub|0>>=<frac|1|<frac|f(x)-f(x<rsub|0>)|x-x<rsub|0>>>→<frac|1|f<rprime|'>(x<rsub|0>)>.
</equation*>

In questo modo la derivabilità dell'inversa viene dimostrata, invece di essere data per scontata derivando l'identità <math|f(g(y))=y>. Applicando il risultato alle restrizioni delle funzioni trigonometriche otteniamo

<\equation*>
(arctan x)<rprime|'>=<frac|1|1+x<rsup|2>>,<space|1.5em>(arcsin x)<rprime|'>=<frac|1|<sqrt|1-x<rsup|2>>>,
</equation*>

e per l'arcocoseno, che è decrescente, <math|(arccos x)<rprime|'>=-1/<sqrt|1-x<rsup|2>>>. Le ultime due formule valgono per <math|-1‹x‹1>, perché agli estremi il denominatore si annulla e la tangente al grafico diventa verticale.

<subsection|Quando varia anche l'esponente>

Le potenze con esponente reale si derivano riscrivendole come esponenziali. Per <math|a›0> abbiamo <math|a<rsup|x>=e<rsup|x log a>>, e la regola della catena dà <math|(a<rsup|x>)<rprime|'>=a<rsup|x>log a>. Per <math|x›0> e <math|a∈ℝ>, da <math|x<rsup|a>=e<rsup|a log x>> otteniamo <math|(x<rsup|a>)<rprime|'>=ax<rsup|a-1>>.

La stessa trasformazione funziona anche quando variano sia la base sia l'esponente, e separa i due contributi. Per <math|f(x)=u(x)<rsup|v(x)>>, con <math|u›0> e <math|u,v> derivabili, scriviamo <math|f=e<rsup|v log u>> e troviamo

<\equation*>
f<rprime|'>(x)=u(x)<rsup|v(x)><around*|(|v<rprime|'>(x)log u(x)+v(x)<frac|u<rprime|'>(x)|u(x)>|)>.
</equation*>

Il primo addendo è il contributo dell'esponente che cambia, il secondo quello della base.

<\verifica|12>
<strong|1.> Trova la tangente a <math|e<rsup|x>> in zero. Poi confronta questo comportamento con quello di <math|\|x\|> nello stesso punto: continuità e derivabilità coincidono?

<strong|2.> Calcola la derivata di <math|x<rsup|x>> per <math|x›0> e di <math|(sin x)<rsup|cos x>> dove <math|sin x›0>. Spiega perché serve la condizione sulla base.
</verifica>
