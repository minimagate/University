<chapter|Trigonometria e funzioni inverse>

<\inbreve>
Il seno dà un'altezza: come risaliamo all'angolo? Partiamo dal cerchio unitario e dai grafici. Per costruire le inverse sceglieremo un intervallo preciso, che ci guiderà anche nelle composizioni.
</inbreve>

<section|Radianti, circonferenza, seno e coseno>

La <strong|circonferenza trigonometrica> ha centro nell'origine e raggio 1: i suoi punti soddisfano <math|x<rsup|2>+y<rsup|2>=1>.

Partiamo da <math|A=(1,0)> e percorriamo un arco orientato. Un angolo di <math|α> radianti corrisponde a un arco di lunghezza orientata <math|α> sul cerchio unitario, in senso antiorario se <math|α›0> e orario se <math|α‹0>. Un giro completo misura <math|2π>.

Le coordinate del punto raggiunto <math|P> definiscono le due funzioni:

<\equation*>
P=(cos α,sin α).
</equation*>

Il coseno è l'ascissa, il seno l'ordinata. Perciò <math|sin<rsup|2>α+cos<rsup|2>α=1>. I segni si leggono dai quadranti: per esempio, nel secondo il coseno è negativo e il seno positivo.

Per <math|0≤α≤2π> l'area del settore è <math|α/2>; per angoli arbitrari si interpreta come area orientata accumulata. Assumiamo qui questa descrizione geometrica: per definire rigorosamente arco e area servono strumenti ulteriori.

<figura|@IMG(circonferenza,0.84)|Le coordinate del punto forniscono coseno e seno. L'intersezione della retta <math|OP> con <math|x=1> fornisce la tangente come altezza orientata.>

La <strong|tangente> è <math|tan α=sin α/cos α>, dove <math|cos α≠0>. La retta <math|OP> incontra la verticale <math|x=1> a quota <math|tan α>.

Occorre usare la retta, anche prolungandola nel verso opposto: se <math|P> è a sinistra, la sola semiretta dall'origine verso <math|P> non raggiunge <math|x=1>. La tangente è esclusa per <math|α=π/2+kπ>, con <math|k∈ℤ>.

<section|Simmetrie, periodi e grafici>

Sostituire <math|α> con <math|-α> riflette <math|P> nell'asse orizzontale: il coseno resta uguale e il seno cambia segno. Dunque il coseno è pari, il seno e la tangente sono dispari. Aggiungere <math|2π> riporta al medesimo punto: seno e coseno hanno periodo <math|2π>.

Aggiungere <math|π> porta al punto opposto e cambia segno a entrambe le coordinate. Il loro rapporto resta uguale: la tangente ha periodo <math|π>. È il periodo minimo, perché i suoi zeri sono precisamente i multipli di <math|π>. Seno e coseno hanno periodo minimo <math|2π>: il ritorno al valore massimo richiede un giro completo.

Il seno passa, nell'ordine, per i valori 0, 1, 0, <math|-1>, 0 agli angoli <math|0,π/2,π,3π/2,2π>. Il coseno è lo stesso andamento anticipato di un quarto di giro: <math|cos x=sin(x+π/2)>.

La tangente cresce strettamente in ogni intervallo <math|(-π/2+kπ,π/2+kπ)> e vicino agli estremi i suoi valori non restano limitati. Preciseremo questo comportamento con i limiti.

Per i calcoli successivi servono anche le formule di addizione:

<\equation*>
sin(u+v)=sin u cos v+cos u sin v,
</equation*>

<\equation*>
cos(u+v)=cos u cos v-sin u sin v.
</equation*>

Geometricamente esprimono le coordinate di un punto dopo due rotazioni successive. Con <math|u=v> danno, per esempio, <math|sin(2u)=2sin u cos u> e <math|cos(2u)=1-2sin<rsup|2>u>.

<section|Arcoseno, arcocoseno e arcotangente>

Una funzione periodica ripete i valori e quindi non può essere iniettiva sul dominio intero. Per costruire un'inversa scegliamo un ramo che raggiunga ogni valore dell'immagine una sola volta.

<\concetto|Intervalli principali delle inverse trigonometriche>
<math|arcsin:[-1,1]→[-π/2,π/2]> è l'inversa del seno ristretto a <math|[-π/2,π/2]>, dove il seno è strettamente crescente.

<math|arccos:[-1,1]→[0,π]> è l'inversa del coseno ristretto a <math|[0,π]>, dove il coseno è strettamente decrescente.

<math|arctan:ℝ→(-π/2,π/2)> è l'inversa della tangente ristretta a <math|(-π/2,π/2)>, dove la tangente è strettamente crescente.
</concetto>

Per esempio <math|arcsin(1/2)=π/6>: scegliamo l'unico angolo dell'intervallo principale il cui seno vale <math|1/2>. <math|arccos(1/2)=π/3> compie una scelta diversa, perché cerca un coseno.

<math|arctan t> è l'angolo della retta che unisce l'origine al punto <math|(1,t)>, scelto fra <math|-π/2> e <math|π/2>.

<figura|@IMG(inverse-trig,0.78)|I grafici delle inverse scambiano entrata e uscita dei rami scelti.>

Per definizione, <math|sin(arcsin t)=t> per ogni <math|t∈[-1,1]>.

Nel verso opposto <math|arcsin(sin x)=x> vale solo per <math|x∈[-π/2,π/2]>. Fuori da quell'intervallo l'espressione continua ad avere senso, ma riporta all'angolo principale. Per esempio <math|2∈(π/2,π)>, quindi il punto con angolo <math|π-2> ha lo stesso seno ed è nel ramo corretto:

<\equation*>
arcsin(sin 2)=π-2.
</equation*>

Analogamente <math|arccos(cos 4)=2π-4>, perché <math|4∈(π,2π)> e la riflessione nell'asse orizzontale porta nel ramo superiore. Invece <math|cos(arccos t)=t> è definita soltanto per <math|t∈[-1,1]>. Dobbiamo quindi farci due domande: la composizione è definita? E, se lo è, possiamo semplificarla?

<section|Identità: il segno e l'intervallo vanno controllati>

Per calcolare <math|sin(arccos t)>, chiamiamo <math|α=arccos t>. Sappiamo due cose: <math|cos α=t> e <math|α∈[0,π]>. Dall'identità fondamentale otteniamo <math|sin<rsup|2>α=1-t<rsup|2>>; l'intervallo assicura <math|sin α≥0>, quindi

<\equation*>
sin(arccos t)=<sqrt|1-t<rsup|2>><space|2em>(-1≤t≤1).
</equation*>

L'equazione al quadrato da sola non avrebbe scelto il segno. Allo stesso modo <math|cos(arcsin t)=<sqrt|1-t<rsup|2>>>.

Inoltre, se <math|β=arcsin t>, l'angolo <math|π/2-β> appartiene a <math|[0,π]> e ha coseno <math|t>. Per unicità dell'angolo principale,

<\equation*>
arcsin t+arccos t=π/2<space|2em>(-1≤t≤1).
</equation*>

Per <math|x›0>, poniamo <math|α=arctan x∈(0,π/2)>. L'angolo complementare soddisfa <math|tan(π/2-α)=1/x> e appartiene anch'esso al ramo principale. Ne segue <math|arctan(1/x)=π/2-α>, dunque

<\equation*>
arctan x+arctan(1/x)=π/2<space|2em>(x›0).
</equation*>

Per <math|x‹0> usiamo la disparità dell'arcotangente e applichiamo la formula a <math|-x›0>: la somma vale <math|-π/2>. In <math|x=0> l'espressione <math|1/x> non è definita. Il cambio di segno del risultato dipende proprio dall'intervallo principale.

<new-page>

<section|Composizioni periodiche: un esempio completo>

Se <math|g> ha periodo <math|T> e <math|f> è definita su tutta la sua immagine, allora <math|f(g(x+T))=f(g(x))>. Quindi <math|T> è un periodo della composta; il minimo può essere più piccolo. Questo spiega subito la periodicità di <math|arccos(sin x)> e di <math|(sin x)<rsup|3>>.

Non basta invece che sia periodica la funzione esterna, come in <math|sin(x<rsup|2>)>: l'argomento interno cambia il ritmo delle oscillazioni.

Studiamo <math|arccos(sin x)> per un periodo. Se <math|-π/2≤x≤π/2>, l'identità precedente dà <math|arccos(sin x)=π/2-x>.

Se <math|π/2≤x≤3π/2>, l'angolo <math|x-π/2> appartiene a <math|[0,π]> e ha coseno <math|sin x>; dunque la composta vale <math|x-π/2>. I due tratti si incontrano a quota 0 e si ripetono con periodo <math|2π>.

<figura|@IMG(dente,0.78)|La composizione restituisce sempre angoli fra 0 e <math|π>. Il grafico triangolare nasce dal riportare ogni angolo nel ramo principale.>

<\verifica|6>
<strong|1.> Calcola <math|arcsin(sin(5π/6))> e <math|arccos(cos(7π/4))>. Verifica sia il valore trigonometrico sia l'appartenenza all'intervallo principale.

<strong|2.> Trova dominio e formula di <math|tan(arccos t)>. Il risultato deve tenere conto dei punti in cui la tangente non esiste.
</verifica>
