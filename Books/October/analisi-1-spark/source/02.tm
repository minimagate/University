<chapter|Funzioni, composizione e inverse>

<\inbreve>
Il quadrato di 2 è 4, ma lo è anche il quadrato di −2, e nessun numero reale ha quadrato −1. Se conosciamo soltanto l'uscita di una funzione, quindi, non sempre riusciamo a risalire all'entrata. Questi due ostacoli ci guidano verso le idee di iniettività e suriettività, e da lì alla funzione inversa e al modo in cui le funzioni si combinano una dopo l'altra.
</inbreve>

<section|Una funzione comprende anche partenza e arrivo>

Una funzione <math|f:A→B> assegna a ogni elemento <math|a∈A> uno e un solo elemento <math|f(a)∈B>. L'insieme <math|A> si chiama insieme di partenza, o dominio, e <math|B> insieme di arrivo. Una formula come <math|x<rsup|2>> da sola non basta a descrivere la funzione, perché dobbiamo anche dire da dove partiamo e dove vogliamo arrivare, e vedremo presto che cambiando questi insiemi cambiano le proprietà della funzione.

Possiamo immaginare la funzione come un disegno a frecce. Da ogni elemento di <math|A> parte esattamente una freccia, mentre in <math|B> le cose sono più libere, perché due frecce possono arrivare nello stesso punto e qualche punto può restare senza frecce.

I punti di <math|B> effettivamente raggiunti formano l'<strong|immagine> <math|f(A)={f(a):a∈A}>, che è un sottoinsieme di <math|B> e può essere più piccola. Proprio per non confondere i due insiemi useremo sempre l'espressione «insieme di arrivo» per <math|B>.

Un altro modo di guardare una funzione è raccogliere tutte le coppie formate da un'entrata e dalla sua uscita. Otteniamo il <strong|grafico>

<\equation*>
<math-up|Graf>(f)={(a,b)∈A×B:b=f(a)}.
</equation*>

Questa idea permette anche di dare una definizione rigorosa che non parla di «assegnare». Fissati <math|A> e <math|B>, una funzione è rappresentata da un sottoinsieme <math|G⊆A×B> tale che

<\equation*>
∀a∈A∃!b∈B,<space|1em>(a,b)∈G.
</equation*>

Il simbolo <math|∃!> significa «esiste uno e un solo», quindi la condizione chiede due cose insieme, che un'uscita esista e che sia unica. Nel piano reale questo vuol dire che sopra ogni ascissa del dominio c'è esattamente un punto del grafico.

<section|Iniettività, suriettività e biettività>

Torniamo al primo ostacolo, il fatto che 2 e −2 abbiano lo stesso quadrato. Una funzione in cui questo non succede mai, cioè in cui uscite uguali provengono sempre da entrate uguali, si dice <strong|iniettiva>:

<\equation*>
∀a<rsub|1>,a<rsub|2>∈A,<space|1em>f(a<rsub|1>)=f(a<rsub|2>)⇒a<rsub|1>=a<rsub|2>.
</equation*>

Per dimostrarlo prendiamo due entrate qualsiasi, supponiamo che abbiano la stessa uscita e proviamo che sono uguali. Per smentirlo, invece, basta trovare due entrate diverse con la stessa uscita.

Il secondo ostacolo era che nessun quadrato vale −1. Una funzione che raggiunge ogni punto dell'insieme di arrivo si dice <strong|suriettiva>:

<\equation*>
∀b∈B∃a∈A,<space|1em>f(a)=b.
</equation*>

Questa volta partiamo da un <math|b> qualsiasi dell'insieme di arrivo e cerchiamo almeno un'entrata che ci porti lì. Una funzione che ha entrambe le proprietà si dice <strong|biettiva>, e in essa ogni punto di <math|B> proviene esattamente da un punto di <math|A>.

<figura|@IMG(funzioni)|Una funzione iniettiva non manda due entrate diverse nella stessa uscita. Una funzione suriettiva raggiunge ogni punto dell'insieme di arrivo.>

Vediamo come cambia tutto con <math|f(x)=x<rsup|2>>. Come funzione da <math|ℝ> a <math|ℝ> non è iniettiva, perché <math|f(2)=f(-2)>, e non è suriettiva, perché non raggiunge i numeri negativi. Se restringiamo l'insieme di arrivo a <math|[0,+∞)> diventa suriettiva, ma 2 e −2 hanno ancora la stessa uscita. Se restringiamo anche la partenza a <math|[0,+∞)> eliminiamo pure questo problema, e la funzione diventa biettiva. Per sapere che ogni numero non negativo è davvero un quadrato serve l'esistenza delle radici reali, che collegheremo alla completezza nei capitoli 4 e 5.

<section|L'inversa e il motivo delle due condizioni>

Invertire una funzione significa girare tutte le frecce. Perché il risultato sia ancora una funzione, questa volta da <math|B> ad <math|A>, da ogni <math|b> deve partire una freccia, e una sola. La suriettività garantisce che la freccia ci sia, l'iniettività che non ce ne siano due. Ecco perché servono esattamente queste due condizioni.

<\concetto|Inversa di una funzione>
Una funzione <math|f:A→B> è invertibile se esiste <math|g:B→A> tale che

<\equation*>
g(f(a))=a<space|1em>(a∈A),<space|2em>f(g(b))=b<space|1em>(b∈B).
</equation*>

La funzione <math|g>, indicata con <math|f<rsup|-1>>, esiste se e solo se <math|f> è biettiva.
</concetto>

Dimostriamo prima che la biettività basta. Preso <math|b∈B>, la suriettività ci dà un'entrata <math|a> con <math|f(a)=b>, e l'iniettività ci assicura che è l'unica. Possiamo quindi definire <math|g(b)> come questa entrata. Con questa definizione, andare avanti con <math|f> e tornare indietro con <math|g>, o fare il contrario, riporta sempre al punto di partenza.

Ora il viceversa. Supponiamo che <math|g> esista e mostriamo che <math|f> è iniettiva. Se <math|f(a<rsub|1>)=f(a<rsub|2>)>, applicando <math|g> a entrambi i membri otteniamo <math|a<rsub|1>=a<rsub|2>>. Per la suriettività prendiamo un qualsiasi <math|b∈B>. Sappiamo che <math|f(g(b))=b>, quindi l'entrata <math|g(b)> raggiunge <math|b>.

L'inversa, quando esiste, è unica, perché deve mandare ogni <math|b> nell'unica soluzione dell'equazione <math|f(a)=b>. Per la funzione quadrato ristretta alle semirette non negative l'inversa è la radice, <math|f<rsup|-1>(y)=<sqrt|y>>.

Attenzione a non confondere l'inversa con il reciproco <math|1/f(x)>. Girare le frecce e dividere 1 per l'uscita sono operazioni completamente diverse, anche se si scrivono con simboli simili.

<section|Composizione: prima la funzione a destra>

Se <math|f:A→B> e <math|g:B→C>, possiamo applicare prima <math|f> e poi <math|g> al risultato. Otteniamo la funzione composta

<\equation*>
g∘f:A→C,<space|2em>(g∘f)(a)=g(f(a)).
</equation*>

Si legge da destra verso sinistra, perché la funzione scritta a destra è quella che agisce per prima. L'ordine conta davvero. Con <math|f(x)=x+1> e <math|g(x)=x<rsup|2>> su <math|ℝ> otteniamo <math|g(f(x))=(x+1)<rsup|2>>, mentre <math|f(g(x))=x<rsup|2>+1>, che è un'altra funzione.

Perché la composizione abbia senso basta che le uscite effettive della prima funzione stiano nel dominio della seconda. Scrivendo lo stesso insieme <math|B> come arrivo di <math|f> e partenza di <math|g> rendiamo questa condizione evidente.

Le proprietà che abbiamo appena studiato passano alla composta. Se <math|f> e <math|g> sono iniettive, lo è anche <math|g∘f>. Infatti, se <math|g(f(a<rsub|1>))=g(f(a<rsub|2>))>, l'iniettività di <math|g> dà <math|f(a<rsub|1>)=f(a<rsub|2>)>, e poi quella di <math|f> dà <math|a<rsub|1>=a<rsub|2>>. Allo stesso modo, se sono suriettive entrambe, lo è la composta. Dato <math|c∈C> scegliamo prima <math|b> con <math|g(b)=c> e poi <math|a> con <math|f(a)=b>, e così <math|g(f(a))=c>.

Possiamo anche ragionare al contrario. Se <math|g∘f> è iniettiva, allora <math|f> deve esserlo, perché due entrate che <math|f> manda nello stesso punto resterebbero unite anche dopo <math|g>. Se <math|g∘f> è suriettiva, allora <math|g> deve esserlo, perché ogni uscita finale passa per <math|g>. Le altre due conclusioni, invece, non seguono automaticamente.

<section|Immagine e controimmagine di insiemi>

Spesso non ci interessa un singolo punto ma un intero insieme. Per <math|E⊆A> l'immagine <math|f(E)={f(a):a∈E}> raccoglie tutte le uscite che si ottengono partendo da <math|E>. Possiamo anche porci la domanda opposta e chiederci quali entrate finiscono in un insieme <math|D⊆B>. La risposta è la <strong|controimmagine>

<\equation*>
f<rsup|-1>(D)={a∈A:f(a)∈D}.
</equation*>

Questa domanda ha senso anche quando <math|f> non è invertibile, perché raccogliamo tutte le entrate adatte senza pretendere che siano uniche. Con il quadrato su <math|ℝ>, per esempio, <math|f({-2,1})={1,4}> e <math|f<rsup|-1>({4})={-2,2}>. Il simbolo <math|f<rsup|-1>> ha quindi due usi, e il contesto dice quale intendiamo. La funzione inversa richiede la biettività, mentre la controimmagine di un insieme esiste sempre.

<\verifica|2>
<strong|1.> Considera <math|f:ℝ→ℝ>, <math|f(x)=3x-2>. Dimostra che è biettiva e trova l'inversa risolvendo <math|y=3x-2> rispetto a <math|x>.

<strong|2.> Per <math|q(x)=x<rsup|2>> su <math|ℝ>, determina <math|q([-1,2])> e <math|q<rsup|-1>([1,4])>. Spiega perché non puoi ottenere l'immagine sostituendo soltanto gli estremi.
</verifica>
