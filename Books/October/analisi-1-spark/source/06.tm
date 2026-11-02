<chapter|Trigonometria e funzioni inverse>

<\inbreve>
Se conosciamo un angolo, il seno ci dice a che altezza arriva sul cerchio. Spesso però il problema è al contrario: conosciamo l'altezza e cerchiamo l'angolo. Gli angoli con la stessa altezza sono infiniti, quindi dovremo imparare a sceglierne uno, sempre lo stesso. Questa piccola scelta guiderà tutti i calcoli del capitolo.
</inbreve>

<section|Radianti, circonferenza, seno e coseno>

Tutta la trigonometria nasce da un cerchio. La <strong|circonferenza trigonometrica> ha centro nell'origine e raggio 1, quindi i suoi punti sono quelli che soddisfano <math|x<rsup|2>+y<rsup|2>=1>.

Partiamo dal punto <math|A=(1,0)> e camminiamo lungo la circonferenza. Un angolo di <math|α> radianti corrisponde a un arco di lunghezza <math|α>, percorso in senso antiorario se <math|α›0> e in senso orario se <math|α‹0>. Poiché la circonferenza ha lunghezza <math|2π>, un giro completo misura <math|2π> radianti. Chiamiamo <math|P> il punto in cui arriviamo. Le sue coordinate definiscono le due funzioni fondamentali:

<\equation*>
P=(cos α,sin α).
</equation*>

Il coseno è quindi l'ascissa del punto e il seno la sua ordinata. Poiché <math|P> sta sulla circonferenza, vale sempre <math|sin<rsup|2>α+cos<rsup|2>α=1>. Anche i segni si leggono direttamente dal disegno. Nel secondo quadrante, per esempio, il punto sta a sinistra e in alto, e quindi il coseno è negativo e il seno positivo.

Per <math|0≤α≤2π> il settore circolare spazzato dall'angolo ha area <math|α/2>, e per angoli qualsiasi possiamo pensare a un'area orientata che si accumula giro dopo giro. Per ora prendiamo questa descrizione geometrica come punto di partenza, perché definire in modo rigoroso lunghezza d'arco e area richiede strumenti che vedremo più avanti.

<figura|@IMG(circonferenza,0.84)|Le coordinate del punto forniscono coseno e seno. L'intersezione della retta <math|OP> con <math|x=1> fornisce la tangente come altezza orientata.>

La <strong|tangente> è il rapporto <math|tan α=sin α/cos α>, definito quando <math|cos α≠0>. Anche lei ha un'interpretazione geometrica. Se prolunghiamo la retta <math|OP> fino a incontrare la verticale <math|x=1>, il punto d'incontro si trova all'altezza <math|tan α>. Dobbiamo usare tutta la retta e non solo la semiretta da <math|O> verso <math|P>, perché quando <math|P> sta a sinistra la semiretta non raggiunge mai <math|x=1>. Quando <math|P> sta in cima o in fondo alla circonferenza, cioè per <math|α=π/2+kπ> con <math|k∈ℤ>, la retta è verticale e la tangente non esiste.

<section|Simmetrie, periodi e grafici>

Il cerchio ha molte simmetrie, e ciascuna si traduce in una proprietà delle funzioni. Sostituire <math|α> con <math|-α> significa percorrere lo stesso arco in senso opposto, e il punto <math|P> viene riflesso rispetto all'asse orizzontale. Il coseno quindi non cambia, mentre il seno cambia segno, e per questo il coseno è pari mentre il seno e la tangente sono dispari. Aggiungere <math|2π> significa fare un giro completo e tornare allo stesso punto, quindi seno e coseno hanno periodo <math|2π>.

Aggiungere <math|π>, cioè mezzo giro, porta invece al punto diametralmente opposto, e cambia segno a entrambe le coordinate. Il loro rapporto resta lo stesso, quindi la tangente ha periodo <math|π>. È il periodo più piccolo possibile, perché la tangente si annulla esattamente nei multipli di <math|π>, che distano <math|π> l'uno dall'altro. Per seno e coseno il periodo minimo è invece <math|2π>, perché per tornare al valore massimo 1 serve un giro intero.

Seguendo il punto lungo un giro vediamo nascere i grafici. Il seno vale 0, 1, 0, <math|-1> e di nuovo 0 negli angoli <math|0,π/2,π,3π/2,2π>. Il coseno fa lo stesso percorso, ma un quarto di giro prima, e infatti <math|cos x=sin(x+π/2)>. La tangente cresce strettamente in ogni intervallo <math|(-π/2+kπ,π/2+kπ)>, e avvicinandosi agli estremi i suoi valori diventano grandi quanto vogliamo, in positivo o in negativo. Daremo un senso preciso a questo comportamento quando parleremo di limiti.

Nei calcoli ci serviranno anche le formule di addizione,

<\equation*>
sin(u+v)=sin u cos v+cos u sin v,
</equation*>

<\equation*>
cos(u+v)=cos u cos v-sin u sin v.
</equation*>

Dal punto di vista geometrico descrivono dove arriva un punto dopo due rotazioni successive, la prima di <math|u> e la seconda di <math|v>. Prendendo <math|u=v> otteniamo per esempio le formule di duplicazione <math|sin(2u)=2sin u cos u> e <math|cos(2u)=1-2sin<rsup|2>u>.

<section|Arcoseno, arcocoseno e arcotangente>

Cominciamo da una domanda semplice: quale angolo ha seno <math|1/2>? Viene subito in mente <math|π/6>. Anche <math|5π/6> però ha seno <math|1/2>, e lo stesso vale per <math|π/6+2π>, per <math|5π/6+2π> e così via, un giro dopo l'altro. La domanda ha infinite risposte, mentre una funzione inversa deve darne una sola.

Per uscirne ci mettiamo d'accordo in anticipo su dove cercare. Per il seno scegliamo l'intervallo <math|[-π/2,π/2]>. Lì il seno sale da <math|-1> a 1 senza mai tornare indietro, e incontra ogni valore esattamente una volta. Dentro questo intervallo la nostra domanda ha una sola risposta, <math|π/6>, che chiamiamo arcoseno di <math|1/2>.

Per il coseno lo stesso intervallo non funzionerebbe. Fra <math|-π/2> e <math|π/2> il coseno prima cresce e poi cala, e prende due volte ogni valore compreso fra 0 e 1. Scegliamo allora <math|[0,π]>, dove il coseno scende da 1 a <math|-1>. Per la tangente basta l'intervallo aperto <math|(-π/2,π/2)>, in cui cresce sempre e assume tutti i valori reali.

<\concetto|Intervalli principali delle inverse trigonometriche>
<math|arcsin:[-1,1]→[-π/2,π/2]> è l'inversa del seno ristretto a <math|[-π/2,π/2]>, dove il seno è strettamente crescente.

<math|arccos:[-1,1]→[0,π]> è l'inversa del coseno ristretto a <math|[0,π]>, dove il coseno è strettamente decrescente.

<math|arctan:ℝ→(-π/2,π/2)> è l'inversa della tangente ristretta a <math|(-π/2,π/2)>, dove la tangente è strettamente crescente.
</concetto>

Gli intervalli sono diversi, e per questo cambiano anche le risposte. L'angolo con coseno <math|1/2> che troviamo in <math|[0,π]> è <math|π/3>, non <math|π/6>. L'arcotangente si lascia invece immaginare bene: <math|arctan t> è l'inclinazione della retta che va dall'origine al punto <math|(1,t)>, misurata fra <math|-π/2> e <math|π/2>.

<figura|@IMG(inverse-trig,0.78)|I grafici delle inverse scambiano entrata e uscita dei rami scelti.>

<subsection|Andata e ritorno>

Partiamo da un'altezza <math|t>, troviamo il suo angolo con l'arcoseno e poi ne calcoliamo il seno. Torniamo esattamente a <math|t>, per ogni <math|t> fra <math|-1> e 1, cioè <math|sin(arcsin t)=t>. È proprio ciò per cui abbiamo costruito l'arcoseno.

Il viaggio nel verso opposto può riservare una sorpresa. Partiamo da un angolo <math|x>, ne calcoliamo il seno e chiediamo all'arcoseno di ritrovarlo. Se <math|x> sta fra <math|-π/2> e <math|π/2> lo ritroviamo, e <math|arcsin(sin x)=x>. Altrimenti l'arcoseno ci dà un altro angolo, quello che ha la stessa altezza e si trova nell'intervallo concordato.

Proviamo con <math|x=2>. Siccome <math|π/2‹2‹π>, l'angolo 2 cade nel secondo quadrante, fuori dal nostro intervallo. Il suo riflesso rispetto all'asse verticale è <math|π-2>, che arriva alla stessa altezza e sta fra 0 e <math|π/2>. Per questo

<\equation*>
arcsin(sin 2)=π-2.
</equation*>

Con il coseno capita qualcosa di simile. L'angolo 4 sta fra <math|π> e <math|2π>, nella metà inferiore del cerchio. Se lo riflettiamo rispetto all'asse orizzontale arriviamo a <math|2π-4>, che ha lo stesso coseno e sta in <math|[0,π]>. Dunque <math|arccos(cos 4)=2π-4>.

Davanti a composizioni come queste conviene farsi due domande, sempre in quest'ordine. La prima è se l'espressione ha senso: <math|cos(arccos t)>, per esempio, ce l'ha solo quando <math|t> sta fra <math|-1> e 1. La seconda, se ha senso, è se possiamo semplificarla subito o se prima dobbiamo riportare l'angolo nell'intervallo giusto.

<section|Identità: il segno e l'intervallo vanno controllati>

Gli intervalli principali non servono solo a definire le inverse, ma diventano decisivi anche quando calcoliamo con esse. Proviamo a esprimere <math|sin(arccos t)> senza funzioni trigonometriche. Chiamiamo <math|α=arccos t>, così sappiamo due cose, che <math|cos α=t> e che <math|α> sta in <math|[0,π]>. Dall'identità fondamentale ricaviamo <math|sin<rsup|2>α=1-t<rsup|2>>, ma questo determina il seno solo a meno del segno. È l'intervallo a decidere, perché fra 0 e <math|π> il seno non è mai negativo. Quindi

<\equation*>
sin(arccos t)=<sqrt|1-t<rsup|2>><space|2em>(-1≤t≤1).
</equation*>

Con lo stesso ragionamento, usando questa volta l'intervallo <math|[-π/2,π/2]> dove il coseno non è negativo, si trova <math|cos(arcsin t)=<sqrt|1-t<rsup|2>>>.

L'unicità dell'angolo principale permette anche di dimostrare identità fra le inverse. Se <math|β=arcsin t>, l'angolo complementare <math|π/2-β> sta in <math|[0,π]> e ha coseno uguale a <math|sin β=t>. Ma in <math|[0,π]> c'è un solo angolo con coseno <math|t>, ed è <math|arccos t>. Ne segue

<\equation*>
arcsin t+arccos t=π/2<space|2em>(-1≤t≤1).
</equation*>

Un ragionamento simile vale per l'arcotangente. Per <math|x›0> poniamo <math|α=arctan x>, che sta in <math|(0,π/2)>. L'angolo complementare <math|π/2-α> sta ancora nello stesso intervallo e ha tangente <math|1/x>, quindi coincide con <math|arctan(1/x)>, e otteniamo

<\equation*>
arctan x+arctan(1/x)=π/2<space|2em>(x›0).
</equation*>

Per <math|x‹0> applichiamo la formula a <math|-x>, che è positivo, e usiamo il fatto che l'arcotangente è dispari, così la somma vale <math|-π/2>. In <math|x=0> l'espressione non ha senso, perché <math|1/x> non è definito. Il cambio di segno del risultato fra positivi e negativi viene ancora una volta dalla scelta dell'intervallo principale.

<section|Composizioni periodiche: un esempio completo>

Mettiamo insieme le idee del capitolo con una funzione che a prima vista sembra misteriosa, <math|arccos(sin x)>. Il primo passo è capire se è periodica. In generale, se <math|g> ha periodo <math|T> e <math|f> è definita su tutta l'immagine di <math|g>, allora <math|f(g(x+T))=f(g(x))>, e quindi anche la composta ha periodo <math|T>, anche se il suo periodo minimo potrebbe essere più piccolo. Questo spiega subito perché sia <math|arccos(sin x)> sia <math|(sin x)<rsup|3>> hanno periodo <math|2π>. Se invece è periodica soltanto la funzione esterna, come in <math|sin(x<rsup|2>)>, non possiamo concludere nulla del genere, perché l'argomento interno cambia il ritmo delle oscillazioni.

Ci basta quindi studiare <math|arccos(sin x)> su un solo periodo. Quando <math|-π/2≤x≤π/2>, l'identità della sezione precedente, letta con <math|t=sin x> e <math|arcsin(sin x)=x>, dà <math|arccos(sin x)=π/2-x>.

Quando <math|π/2≤x≤3π/2>, invece, l'angolo <math|x-π/2> sta in <math|[0,π]> e ha coseno uguale a <math|sin x>, quindi la composta vale <math|x-π/2>. I due tratti sono segmenti di retta che si incontrano a quota 0 in <math|x=π/2>, e il disegno si ripete con periodo <math|2π>, formando un grafico a denti di sega triangolari.

<figura|@IMG(dente,0.78)|La composizione restituisce sempre angoli fra 0 e <math|π>. Il grafico triangolare nasce dal riportare ogni angolo nel ramo principale.>

<\verifica|6>
<strong|1.> Calcola <math|arcsin(sin(5π/6))> e <math|arccos(cos(7π/4))>. Verifica sia il valore trigonometrico sia l'appartenenza all'intervallo principale.

<strong|2.> Trova dominio e formula di <math|tan(arccos t)>. Il risultato deve tenere conto dei punti in cui la tangente non esiste.
</verifica>
