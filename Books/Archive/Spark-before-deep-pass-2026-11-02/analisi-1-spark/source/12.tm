<chapter|Derivate e differenziabilità>

Se <math|f(x)=x<rsup|2>>, passare da <math|x=2> a <math|x=2+h> modifica il valore della funzione di <math|4h+h<rsup|2>>. Per <math|h> piccolo il termine lineare <math|4h> descrive quasi tutto il cambiamento; il resto è piccolo rispetto a <math|h>. La derivata esprime questa proporzione locale e la collega alla tangente al grafico.

<section|Rapporto incrementale e retta tangente>

Sia <math|x<rsub|0>> interno al dominio di <math|f>: esiste un piccolo intervallo aperto attorno a <math|x<rsub|0>> sul quale <math|f> è definita. Per <math|h≠0> sufficientemente piccolo, il <strong|rapporto incrementale>

<\equation*>
<frac|f(x<rsub|0>+h)-f(x<rsub|0>)|h>
</equation*>

è l'incremento verticale diviso l'incremento orizzontale. È quindi la pendenza della secante che unisce due punti del grafico. Facendo avvicinare i due punti, possiamo cercare una pendenza limite.

<\concetto|Derivata>
La funzione è derivabile in <math|x<rsub|0>> se il rapporto incrementale ha un limite reale finito per <math|h→0>. Quel limite si chiama derivata e si indica con <math|f<rprime|'>(x<rsub|0>)>. La tangente ha equazione

<\equation*>
y=f(x<rsub|0>)+f<rprime|'>(x<rsub|0>)(x-x<rsub|0>).
</equation*>
</concetto>

La parola «finito» conta: un limite infinito del rapporto incrementale non è una derivata reale secondo questa definizione. Anche il limite bilatero conta: le pendenze da destra e da sinistra devono accordarsi.

Per <math|f(x)=x<rsup|2>> il conto è esatto:

<\equation*>
<frac|(x<rsub|0>+h)<rsup|2>-x<rsub|0><rsup|2>|h>=2x<rsub|0>+h→2x<rsub|0>.
</equation*>

Quindi <math|f<rprime|'>(x<rsub|0>)=2x<rsub|0>>. In <math|x<rsub|0>=2> la tangente è <math|y=4+4(x-2)>.

<figura|@IMG(secante)|La pendenza della secante dipende da <math|h>. Quando il rapporto incrementale converge, la pendenza limite definisce la tangente.>

<section|Differenziale: la stessa informazione come sviluppo>

Torniamo all'identità <math|(x<rsub|0>+h)<rsup|2>=x<rsub|0><rsup|2>+2x<rsub|0>h+h<rsup|2>>. Siccome <math|h<rsup|2>=o(h)>, la funzione si separa in valore iniziale, variazione lineare ed errore trascurabile rispetto all'incremento.

<\concetto|Differenziabilità in una variabile>
La funzione <math|f> è differenziabile in <math|x<rsub|0>> se esiste <math|α∈ℝ> tale che

<\equation*>
f(x<rsub|0>+h)=f(x<rsub|0>)+αh+o(h).
</equation*>

L'applicazione lineare <math|h↦αh> è il differenziale. In una variabile, derivabilità e differenziabilità sono equivalenti e <math|α=f<rprime|'>(x<rsub|0>)>.
</concetto>

Per dimostrarlo, partiamo dalla derivabilità. Il rapporto incrementale tende a <math|f<rprime|'>(x<rsub|0>)>, dunque

<\equation*>
<frac|f(x<rsub|0>+h)-f(x<rsub|0>)-f<rprime|'>(x<rsub|0>)h|h>→0.
</equation*>

Il numeratore è quindi <math|o(h)>, che dà lo sviluppo richiesto. Viceversa, se conosciamo lo sviluppo con coefficiente <math|α>, dividendo l'incremento per <math|h> otteniamo <math|α+o(h)/h→α>: esiste la derivata e vale <math|α>. Questo prova anche l'unicità del coefficiente lineare.

<figura|@IMG(differenziale)|Il valore sul grafico si ottiene dal valore iniziale <math|AB>, aggiungendo il contributo lineare <math|BC=αh> e lo scarto <math|CD=o(h)>. Il disegno mostra un incremento positivo; i termini algebrici possono avere segno.>

Una prima conseguenza è <strong|derivabile implica continua>. Infatti <math|f(x<rsub|0>+h)-f(x<rsub|0>)=f<rprime|'>(x<rsub|0>)h+o(h)→0>. Il viceversa è falso: <math|\|x\|> è continua in zero, ma il suo rapporto incrementale è 1 per <math|h›0> e <math|-1> per <math|h‹0>.

<section|Derivate delle funzioni elementari>

I limiti notevoli costruiti prima delle derivate ora danno i coefficienti lineari. Per l'esponenziale,

<\equation*>
e<rsup|x<rsub|0>+h>=e<rsup|x<rsub|0>>(1+h+o(h))=e<rsup|x<rsub|0>>+e<rsup|x<rsub|0>>h+o(h).
</equation*>

Leggiamo <math|(e<rsup|x>)<rprime|'>=e<rsup|x>>. Per il logaritmo, con <math|x<rsub|0>›0>, scriviamo l'incremento come una variazione relativa:

<\equation*>
log(x<rsub|0>+h)=log x<rsub|0>+log(1+h/x<rsub|0>)=log x<rsub|0>+<frac|h|x<rsub|0>>+o(h).
</equation*>

Quindi <math|(log x)<rprime|'>=1/x>. Non abbiamo usato la formula dell'inversa: stiamo ricavando la derivata direttamente dal limite logaritmico.

Per il seno la formula di addizione permette di separare ciò che dipende da <math|h>:

<\equation*>
sin(x<rsub|0>+h)=sin x<rsub|0> cos h+cos x<rsub|0> sin h.
</equation*>

Sostituiamo <math|cos h=1+o(h)> e <math|sin h=h+o(h)>: il coefficiente lineare è <math|cos x<rsub|0>>. Analogamente, nella formula del coseno compare il coefficiente <math|-sin x<rsub|0>>. Otteniamo

<\equation*>
(sin x)<rprime|'>=cos x,<space|2em>(cos x)<rprime|'>=-sin x.
</equation*>

Per <math|x<rsup|n>>, <math|n≥1> intero, il binomio fornisce un termine lineare <math|nx<rsub|0><rsup|n-1>h>; tutti gli altri contengono almeno <math|h<rsup|2>>. Quindi <math|(x<rsup|n>)<rprime|'>=nx<rsup|n-1>>. La derivata di una costante è zero, perché il suo incremento è nullo.

<section|Somme, prodotti e quozienti>

Se <math|f,g> sono derivabili nello stesso punto, sommando i loro sviluppi si sommano i coefficienti lineari: <math|(f+g)<rprime|'>=f<rprime|'>+g<rprime|'>>. Allo stesso modo <math|(λf)<rprime|'>=λf<rprime|'>> per una costante <math|λ>.

Nel prodotto contano due contributi: varia <math|f> mentre il valore iniziale di <math|g> resta fermo, e varia <math|g> mentre resta fermo quello di <math|f>. Per vederlo poniamo <math|f<rsub|0>=f(x<rsub|0>)>, <math|g<rsub|0>=g(x<rsub|0>)>, <math|a=f<rprime|'>(x<rsub|0>)>, <math|b=g<rprime|'>(x<rsub|0>)>. Moltiplichiamo

<\equation*>
(f<rsub|0>+ah+o(h))(g<rsub|0>+bh+o(h)).
</equation*>

Il termine costante è <math|f<rsub|0>g<rsub|0>>; il termine lineare è <math|(ag<rsub|0>+f<rsub|0>b)h>. Tutti gli altri sono <math|o(h)>: contengono un resto moltiplicato per una quantità limitata, oppure almeno <math|h<rsup|2>>. Perciò

<\equation*>
(fg)<rprime|'>=f<rprime|'>g+fg<rprime|'>.
</equation*>

Per il reciproco supponiamo <math|g(x<rsub|0>)≠0>. La continuità garantisce <math|g≠0> in un piccolo intorno, quindi il reciproco è definito. Portiamo a denominatore comune il suo rapporto incrementale:

<\equation*>
<frac|1/g(x<rsub|0>+h)-1/g(x<rsub|0>)|h>=-<frac|g(x<rsub|0>+h)-g(x<rsub|0>)|h>·<frac|1|g(x<rsub|0>+h)g(x<rsub|0>)>.
</equation*>

I due fattori tendono a <math|-g<rprime|'>(x<rsub|0>)> e <math|1/g(x<rsub|0>)<rsup|2>>. Quindi <math|(1/g)<rprime|'>=-g<rprime|'>/g<rsup|2>>. Applicando la regola del prodotto a <math|f/g=f·(1/g)> troviamo

<\equation*>
<around*|(|<frac|f|g>|)><rprime|'>=<frac|f<rprime|'>g-fg<rprime|'>|g<rsup|2>><space|2em>(g≠0).
</equation*>

Per esempio, dove <math|cos x≠0>,

<\equation*>
(tan x)<rprime|'>=<frac|cos<rsup|2>x+sin<rsup|2>x|cos<rsup|2>x>=<frac|1|cos<rsup|2>x>=1+tan<rsup|2>x.
</equation*>

<section|Derivata della funzione composta>

Nella funzione <math|cos(x<rsup|3>)>, un piccolo cambiamento di <math|x> modifica prima <math|x<rsup|3>>, poi il coseno. Le due proporzioni locali si moltiplicano. Se <math|f> è derivabile in <math|x<rsub|0>> e <math|g> è derivabile in <math|y<rsub|0>=f(x<rsub|0>)>, con domini aperti appropriati, vale

<\equation*>
(g∘f)<rprime|'>(x<rsub|0>)=g<rprime|'>(f(x<rsub|0>))f<rprime|'>(x<rsub|0>).
</equation*>

Ecco una dimostrazione che funziona anche se l'incremento interno si annulla. Scriviamo <math|k=f(x<rsub|0>+h)-f(x<rsub|0>)=ah+o(h)>, con <math|a=f<rprime|'>(x<rsub|0>)>. Il rapporto <math|k/h> è limitato e <math|k→0>.

La differenziabilità di <math|g> dice <math|g(y<rsub|0>+k)=g(y<rsub|0>)+bk+kε(k)>, con <math|b=g<rprime|'>(y<rsub|0>)> ed <math|ε(k)→0>. Poniamo <math|ε(0)=0>, così l'identità vale anche per <math|k=0>. Dopo la sostituzione, <math|kε(k)=o(h)>: dividendo per <math|h> abbiamo un fattore limitato <math|k/h> e un fattore che tende a zero. Dunque

<\equation*>
g(f(x<rsub|0>+h))=g(f(x<rsub|0>))+bah+o(h).
</equation*>

Il coefficiente cercato è <math|ba>. Non è stato necessario dividere per <math|k>.

Per esempio <math|(cos(x<rsup|3>))<rprime|'>=-sin(x<rsup|3>)·3x<rsup|2>>, mentre <math|((cos x)<rsup|3>)<rprime|'>=3cos<rsup|2>x·(-sin x)>. La posizione della potenza cambia la funzione interna ed esterna.

<section|Derivata dell'inversa e potenze variabili>

Sia <math|f:I→J> biiettiva tra intervalli aperti, <math|g=f<rsup|-1>>, <math|y<rsub|0>=f(x<rsub|0>)>. Supponiamo che <math|f> sia derivabile in <math|x<rsub|0>>, con <math|f<rprime|'>(x<rsub|0>)≠0>, e che <math|g> sia continua in <math|y<rsub|0>>. Allora

<\equation*>
g<rprime|'>(y<rsub|0>)=<frac|1|f<rprime|'>(x<rsub|0>)>.
</equation*>

La continuità dell'inversa è nota per le restrizioni monotone e continue delle funzioni elementari che usiamo. Per provare la formula, poniamo <math|x=g(y)>. Se <math|y≠y<rsub|0>>, per iniettività <math|x≠x<rsub|0>>; inoltre <math|x→x<rsub|0>> per la continuità di <math|g>. Quindi

<\equation*>
<frac|g(y)-g(y<rsub|0>)|y-y<rsub|0>>=<frac|1|<frac|f(x)-f(x<rsub|0>)|x-x<rsub|0>>>→<frac|1|f<rprime|'>(x<rsub|0>)>.
</equation*>

La derivabilità dell'inversa è così dimostrata, anziché presupposta derivando <math|f(g(y))=y>. Applicando il risultato alle restrizioni trigonometriche otteniamo

<\equation*>
(arctan x)<rprime|'>=<frac|1|1+x<rsup|2>>,<space|1.5em>(arcsin x)<rprime|'>=<frac|1|<sqrt|1-x<rsup|2>>>.
</equation*>

Per <math|arccos> il segno è negativo: <math|(arccos x)<rprime|'>=-1/<sqrt|1-x<rsup|2>>>. Le ultime due formule valgono per <math|-1‹x‹1>; ai bordi il denominatore si annulla.

Per <math|a›0> scriviamo <math|a<rsup|x>=e<rsup|x log a>>: la composta dà <math|(a<rsup|x>)<rprime|'>=a<rsup|x>log a>. Per <math|x›0> e <math|a∈ℝ>, <math|x<rsup|a>=e<rsup|a log x>> dà <math|(x<rsup|a>)<rprime|'>=ax<rsup|a-1>>.

Se anche l'esponente varia, la stessa trasformazione separa i due contributi. Per <math|f(x)=u(x)<rsup|v(x)>>, con <math|u›0> e <math|u,v> derivabili, otteniamo

<\equation*>
f<rprime|'>(x)=u(x)<rsup|v(x)><around*|(|v<rprime|'>(x)log u(x)+v(x)<frac|u<rprime|'>(x)|u(x)>|)>.
</equation*>

<\verifica|12>
<strong|1.> Trova la tangente a <math|e<rsup|x>> in zero. Poi confronta questo comportamento con quello di <math|\|x\|> nello stesso punto: continuità e derivabilità coincidono?

<strong|2.> Calcola la derivata di <math|x<rsup|x>> per <math|x›0> e di <math|(sin x)<rsup|cos x>> dove <math|sin x›0>. Spiega perché serve la condizione sulla base.
</verifica>
