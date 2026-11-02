<chapter|Divisione, MCD e algoritmo di Euclide>

<\inbreve>
Due numeri come 45 e 17 sembrano non avere nulla in comune, mentre 84 e 30 condividono parecchi divisori. Per saperlo con certezza, anche quando i numeri sono enormi, non possiamo elencare tutti i divisori. Questo capitolo costruisce passo per passo la divisione con resto e la usa per ottenere un procedimento rapido, l'algoritmo di Euclide, che trova il massimo comun divisore.
</inbreve>

<section|Divisibilità: riconoscere un multiplo>

Il numero 18 si ottiene moltiplicando 6 per un intero, perché <math|18=6·3>. Diciamo allora che <strong|6 divide 18>, oppure che 18 è un <strong|multiplo> di 6, e scriviamo brevemente <math|6∣18>.

In generale, per due interi <math|a,b>, scriviamo <math|a∣b> se esiste un intero <math|k> tale che <math|b=ak>. L'ordine dei due numeri conta, perché <math|6∣18> mentre <math|18∤6>, e conviene ricordare che il numero a destra è quello che vogliamo ottenere come multiplo.

La definizione ammette anche numeri negativi, e per esempio <math|3∣(-12)> perché <math|-12=3·(-4)>. Ci sono poi due casi limite da tenere presenti. Ogni intero divide 0, dato che <math|0=a·0>, mentre lo zero divide soltanto 0, perché un prodotto per 0 non può dare altro.

<subsection|Un ordine diverso da quello usuale>

La divisibilità assomiglia a un confronto fra numeri, ma non è il solito «più piccolo di». Fra 2 e 3, per esempio, nessuno dei due divide l'altro. Sui naturali è quello che si chiama un <strong|ordine parziale>, perché gode di tre proprietà.

È riflessiva, perché <math|a∣a>. È transitiva, perché da <math|a∣b> e <math|b∣c> segue <math|a∣c>, visto che se <math|b=ak> e <math|c=bℓ> allora <math|c=a(kℓ)>. Ed è antisimmetrica, perché per due naturali le condizioni <math|a∣b> e <math|b∣a> insieme impongono <math|a=b>. Per numeri positivi questo segue dal fatto che ciascuno è minore o uguale all'altro, e se uno dei due è zero lo deve essere anche l'altro. Sugli interi, invece, la conclusione è soltanto <math|a=±b>.

<subsection|La proprietà che useremo sempre>

C'è un fatto che ci accompagnerà per tutto il libro. Se <math|d> divide sia <math|a> sia <math|b>, allora divide anche <math|a+b>, <math|a-b> e, più in generale, ogni <strong|combinazione intera> <math|ua+vb> con <math|u,v∈ℤ>. Il motivo si vede scrivendo <math|a=dh> e <math|b=dk>, perché allora

<\equation*>
ua+vb=d(uh+vk),
</equation*>

e la parentesi è un intero. Il fattore <math|d> che cercavamo è lì, in evidenza.

<section|Divisione euclidea: il resto va scelto bene>

Se dividiamo 17 per 5 scriviamo <math|17=3·5+2>, con quoziente 3 e resto 2. Anche <math|17=2·5+7> è un'uguaglianza vera, ma ci accorgiamo subito che non abbiamo finito di dividere, perché nel 7 c'è ancora un intero gruppo da 5. Quello che rende giusto il resto 2 è che è più piccolo del divisore, e non è negativo.

<\concetto|Divisione euclidea>
Per ogni <math|a,b∈ℤ>, con <math|b≠0>, esistono unici interi <math|q,r> tali che

<\equation*>
a=qb+r,<space|2em>0≤r‹\|b\|.
</equation*>

Chiamiamo <math|q> il quoziente e <math|r> il resto.
</concetto>

La condizione sul resto va rispettata anche con i numeri negativi, ed è lì che di solito si sbaglia. Dividendo <math|-17> per 5 scriviamo

<\equation*>
-17=(-4)·5+3,
</equation*>

e il resto è 3. Anche <math|-17=(-3)·5-2> è un'uguaglianza corretta, ma non è una divisione euclidea, perché il resto sarebbe negativo. Se il divisore è <math|-5> scriviamo invece <math|-17=4·(-5)+3>, e il resto resta 3.

<figura|@IMG(divisione)|Per dividere <math|-17> per 5 partiamo dal multiplo <math|-20> e avanziamo di 3. Il resto misura questa distanza non negativa.>

<subsection|Perché esistono quoziente e resto>

Cominciamo dal caso <math|b›0>. L'idea è togliere da <math|a> multipli di <math|b> finché si può, restando non negativi, e il principio del minimo del capitolo 1 ci permette di dirlo con precisione.

Consideriamo i numeri non negativi della forma <math|a-qb>. Ce n'è almeno uno. Se <math|a≥0> basta prendere <math|q=0>, mentre se <math|a‹0> possiamo prendere <math|q=a>, che dà <math|a-ab=a(1-b)≥0> perché entrambi i fattori sono minori o uguali a zero.

Fra questi numeri c'è quindi un minimo, che chiamiamo <math|r=a-qb>. Se fosse <math|r≥b> potremmo togliere ancora <math|b>, e il numero <math|r-b=a-(q+1)b> sarebbe non negativo e più piccolo di <math|r>, contro la scelta del minimo. Perciò <math|0≤r‹b>, che è proprio la condizione richiesta.

Se <math|b‹0> dividiamo prima per <math|\|b\|=-b>, e poi cambiamo segno al quoziente per ottenere la divisione per <math|b>, con lo stesso resto.

<subsection|Perché la scelta è unica>

Supponiamo ora di avere due divisioni corrette, <math|a=qb+r=q'b+r'>. Sottraendo una dall'altra otteniamo

<\equation*>
(q-q')b=r'-r,
</equation*>

e quindi <math|r'-r> è un multiplo di <math|b>. D'altra parte entrambi i resti stanno fra 0 e <math|\|b\|-1>, e così la loro differenza è più piccola di <math|\|b\|> in valore assoluto. L'unico multiplo di <math|b> così piccolo è 0, quindi <math|r'=r>, e da qui anche <math|q'=q>, perché <math|b≠0>.

<section|MCD: ciò che i divisori hanno in comune>

Scriviamo i divisori positivi di 18, che sono <math|1,2,3,6,9,18>, e quelli di 12, che sono <math|1,2,3,4,6,12>. I divisori comuni sono <math|1,2,3,6>, e il più grande è 6.

<\concetto|Massimo comun divisore>
Il <strong|massimo comun divisore>, abbreviato MCD e scritto <math|gcd(a,b)>, è il massimo dei divisori comuni positivi di <math|a,b>, quando i due numeri non sono entrambi nulli.
</concetto>

Un massimo esiste sempre, perché 1 è un divisore comune e un numero diverso da zero ha solo un numero finito di divisori positivi.

I segni non cambiano i divisori positivi, quindi <math|gcd(a,b)=gcd(\|a\|,\|b\|)>. Se uno dei numeri è zero il calcolo è immediato, perché tutti i divisori di <math|a> dividono anche 0 e dunque <math|gcd(a,0)=\|a\|> per <math|a≠0>. Due interi il cui MCD vale 1 si dicono <strong|coprimi>.

<section|Algoritmo di Euclide: stessi divisori, numeri più piccoli>

Elencare i divisori funziona finché i numeri sono piccoli. Con numeri grandi conviene un'idea diversa, cioè sostituire la coppia di partenza con una coppia più piccola che abbia esattamente gli stessi divisori comuni.

La divisione con resto ci offre proprio questa sostituzione. Se <math|a=qb+r>, ogni divisore comune di <math|a> e <math|b> divide anche <math|r=a-qb>, per la proprietà delle combinazioni intere. Allo stesso modo ogni divisore comune di <math|b> e <math|r> divide <math|a=qb+r>. Le coppie <math|(a,b)> e <math|(b,r)> hanno quindi gli stessi divisori comuni, e in particolare

<\equation*>
gcd(a,b)=gcd(b,r).
</equation*>

Su questa uguaglianza si basa l'<strong|algoritmo di Euclide>. Prendiamo i valori assoluti, mettiamo il maggiore per primo e ripetiamo la divisione con resto, ogni volta dividendo il vecchio divisore per il nuovo resto. Con 45 e 17 otteniamo

<\equation*>
45=2·17+11,<space|2em>17=1·11+6,
</equation*>

<\equation*>
11=1·6+5,<space|2em>6=1·5+1,<space|2em>5=5·1+0.
</equation*>

Dopo la prima riga cerchiamo il MCD di 17 e 11, poi quello di 11 e 6, e così via, finché arriviamo alla coppia 1 e 0. I resti continuano a scendere, <math|11›6›5›1>, e una successione di naturali non può scendere per sempre, quindi prima o poi compare un resto nullo e il procedimento si ferma.

Quando il resto diventa zero, l'ultimo divisore divide il numero precedente, e il MCD della coppia è quel divisore. Per questo diciamo che il MCD è l'<strong|ultimo resto non nullo>, che qui vale 1, e 45 e 17 sono coprimi. Se già la prima divisione dà resto zero il MCD è il divisore di quella divisione, come in <math|gcd(18,6)=6>, e se uno dei due numeri è zero fin dall'inizio il MCD è il valore assoluto dell'altro.

<figura|@IMG(euclide)|Nel rettangolo <math|45×17> togliamo prima due quadrati di lato 17, poi quadrati di lato 11, 6, 5 e 1. Le dimensioni rimaste seguono le divisioni dell'algoritmo.>

<subsection|In sintesi>

La <strong|divisione euclidea> produce un resto sotto controllo, non negativo e più piccolo del divisore. Il <strong|MCD> è il più grande divisore comune, e l'<strong|algoritmo di Euclide> lo calcola sostituendo la coppia con coppie sempre più piccole che hanno gli stessi divisori comuni. Nel prossimo capitolo leggeremo le stesse divisioni al contrario, e ne ricaveremo un'informazione nuova.

<\verifica|4>
<strong|1.> Trova quoziente e resto di <math|-29> diviso per 6. Per orientarti, cerca i due multipli consecutivi di 6 fra cui cade <math|-29>.

<strong|2.> Calcola <math|gcd(84,30)> con Euclide. Spiega perché fermarsi alla prima divisione non basta.
</verifica>
