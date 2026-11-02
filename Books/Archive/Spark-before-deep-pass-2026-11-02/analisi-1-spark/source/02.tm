<chapter|Funzioni, composizione e inverse>

Elevare al quadrato associa un risultato a ogni numero. Tornare indietro è più delicato: dal risultato 4 possiamo risalire sia a 2 sia a <math|-2>, mentre nessun reale ha quadrato <math|-1>. Una funzione inversa richiede di risolvere entrambi i problemi, quello delle scelte multiple e quello degli arrivi mancanti.

<section|Una funzione comprende anche partenza e arrivo>

Una funzione <math|f:A→B> assegna a ogni elemento <math|a∈A> uno e un solo elemento <math|f(a)∈B>. Chiamiamo <math|A> insieme di partenza, o dominio, e <math|B> insieme di arrivo. La formula è soltanto una parte della descrizione: anche questi due insiemi fanno parte della funzione.

Nel disegno a frecce, da ogni elemento di <math|A> deve partire esattamente una freccia. Può accadere che due frecce arrivino nello stesso punto, oppure che un punto di <math|B> non venga raggiunto. L'<strong|immagine> <math|f(A)={f(a):a∈A}> raccoglie gli arrivi effettivi ed è un sottoinsieme di <math|B>. Useremo «insieme di arrivo» per evitare di confonderlo con l'immagine.

Il <strong|grafico> raccoglie le coppie entrata–uscita:

<\equation*>
<math-up|Graf>(f)={(a,b)∈A×B:b=f(a)}.
</equation*>

Possiamo rendere rigorosa la definizione dicendo che una funzione, con <math|A> e <math|B> dichiarati, è rappresentata da un sottoinsieme <math|G⊆A×B> che soddisfa

<\equation*>
∀a∈A∃!b∈B,<space|1em>(a,b)∈G.
</equation*>

Il simbolo <math|∃!> significa «esiste uno e un solo»: servono sia l'esistenza sia l'unicità dell'uscita. Nel piano reale significa avere esattamente un punto del grafico sopra ogni ascissa del dominio.

<section|Iniettività, suriettività e biettività>

Se gli arrivi distinguono sempre le partenze, la funzione è <strong|iniettiva>. Per controllarlo assumiamo due uscite uguali e cerchiamo di dimostrare che le entrate erano uguali:

<\equation*>
∀a<rsub|1>,a<rsub|2>∈A,<space|1em>f(a<rsub|1>)=f(a<rsub|2>)⇒a<rsub|1>=a<rsub|2>.
</equation*>

Per smentire l'iniettività basta trovare due entrate diverse con la stessa uscita. Se invece ogni punto dell'insieme di arrivo è raggiunto, la funzione è <strong|suriettiva>:

<\equation*>
∀b∈B∃a∈A,<space|1em>f(a)=b.
</equation*>

Qui il lavoro consiste nel prendere un <math|b> qualsiasi e costruire una sua partenza. Essere <strong|biettiva> significa soddisfare entrambe le proprietà: ogni punto di <math|B> ha esattamente una partenza.

<figura|@IMG(funzioni)|L'iniettività vieta arrivi comuni; la suriettività richiede che nessun punto dell'insieme di arrivo sia escluso.>

Riprendiamo <math|f(x)=x<rsup|2>>. Da <math|ℝ> a <math|ℝ> non è iniettiva, perché <math|f(2)=f(-2)>, e non è suriettiva, perché non raggiunge i negativi. Cambiando l'arrivo in <math|[0,+∞)> otteniamo la suriettività, ma resta la doppia partenza. Restringendo invece la partenza a <math|[0,+∞)> otteniamo l'iniettività. Restringendo entrambe, la funzione diventa biettiva. L'esistenza delle radici reali necessaria qui sarà collegata alla completezza nei capitoli 4 e 5.

<section|L'inversa e il motivo delle due condizioni>

Vogliamo invertire tutte le frecce. Perché il risultato sia una funzione da <math|B> ad <math|A>, ogni <math|b> deve avere una freccia in uscita e deve averne una sola. La suriettività fornisce la prima condizione; l'iniettività la seconda.

<\concetto|Inversa di una funzione>
Una funzione <math|f:A→B> è invertibile se esiste <math|g:B→A> tale che

<\equation*>
g(f(a))=a<space|1em>(a∈A),<space|2em>f(g(b))=b<space|1em>(b∈B).
</equation*>

La funzione <math|g>, indicata con <math|f<rsup|-1>>, esiste se e solo se <math|f> è biettiva.
</concetto>

Verifichiamo il risultato anche in formule. Se <math|f> è biettiva, a ogni <math|b> associamo l'unico <math|a> per cui <math|f(a)=b>: questa è <math|g>. Le due identità seguono dalla scelta. Viceversa, se esiste <math|g>, da <math|f(a<rsub|1>)=f(a<rsub|2>)> otteniamo, applicando <math|g>, <math|a<rsub|1>=a<rsub|2>>. E per ogni <math|b>, l'identità <math|f(g(b))=b> esibisce una partenza: <math|g(b)>. Dunque <math|f> è iniettiva e suriettiva.

L'inversa è unica: qualsiasi inversa deve mandare <math|b> proprio nell'unica soluzione di <math|f(a)=b>. Per la funzione quadrato sulle semirette non negative essa è <math|f<rsup|-1>(y)=<sqrt|y>>. Non è il reciproco <math|1/f(x)>: invertire le frecce e dividere 1 per l'uscita sono operazioni diverse.

<section|Composizione: prima la funzione a destra>

Se <math|f:A→B> e <math|g:B→C>, possiamo eseguire prima <math|f> e poi <math|g>. La composta è

<\equation*>
g∘f:A→C,<space|2em>(g∘f)(a)=g(f(a)).
</equation*>

Per esempio, con <math|f(x)=x+1> e <math|g(x)=x<rsup|2>> su <math|ℝ>, otteniamo <math|g(f(x))=(x+1)<rsup|2>>, mentre <math|f(g(x))=x<rsup|2>+1>. L'ordine cambia il risultato. È sufficiente che gli arrivi effettivi della prima funzione appartengano al dominio della seconda; la scrittura con l'intero insieme intermedio <math|B> rende questa condizione esplicita.

La composizione conserva l'iniettività: se <math|g(f(a<rsub|1>))=g(f(a<rsub|2>))>, l'iniettività di <math|g> dà <math|f(a<rsub|1>)=f(a<rsub|2>)>, poi quella di <math|f> dà <math|a<rsub|1>=a<rsub|2>>. Conserva anche la suriettività: dato <math|c∈C>, scegliamo <math|b> con <math|g(b)=c>, poi <math|a> con <math|f(a)=b>. Così <math|g(f(a))=c>.

Si possono leggere due informazioni anche al contrario. Se <math|g∘f> è iniettiva, <math|f> deve esserlo: due entrate unite da <math|f> resterebbero unite dopo <math|g>. Se <math|g∘f> è suriettiva, <math|g> deve esserlo: l'uscita finale passa sempre per <math|g>. Non seguono automaticamente le altre due proprietà dei singoli fattori.

<section|Immagine e controimmagine di insiemi>

Per <math|E⊆A>, l'immagine <math|f(E)={f(a):a∈E}> raccoglie tutte le uscite ottenute partendo da <math|E>. Per <math|D⊆B>, la <strong|controimmagine> è invece

<\equation*>
f<rsup|-1>(D)={a∈A:f(a)∈D}.
</equation*>

Questa domanda ha senso anche se <math|f> non è invertibile: stiamo raccogliendo tutte le entrate adatte, senza pretendere che siano uniche. Con il quadrato su <math|ℝ>, per esempio, <math|f({-2,1})={1,4}>, mentre <math|f<rsup|-1>({4})={-2,2}>. Il significato di <math|f<rsup|-1>> si riconosce dal contesto: una funzione inversa richiede biettività; la controimmagine di un insieme esiste sempre.

<\verifica|2>
<strong|1.> Considera <math|f:ℝ→ℝ>, <math|f(x)=3x-2>. Dimostra che è biettiva e trova l'inversa risolvendo <math|y=3x-2> rispetto a <math|x>.

<strong|2.> Per <math|q(x)=x<rsup|2>> su <math|ℝ>, determina <math|q([-1,2])> e <math|q<rsup|-1>([1,4])>. Spiega perché non puoi ottenere l'immagine sostituendo soltanto gli estremi.
</verifica>
