<chapter|Divisione, MCD e algoritmo di Euclide>

<\inbreve>
Come troviamo ciò che due interi hanno in comune? Partiamo dalla divisibilità, precisiamo la divisione con resto e arriviamo a un procedimento che calcola il massimo comun divisore. A ogni passaggio distingueremo che cosa stiamo facendo e perché possiamo farlo.
</inbreve>

<section|Divisibilità: riconoscere un multiplo>

Il numero 18 si può ottenere moltiplicando 6 per un intero: <math|18=6·3>. Diciamo perciò che <strong|6 divide 18>, oppure che 18 è un <strong|multiplo> di 6. La scrittura <math|6∣18> contiene proprio questa informazione.

In generale, per interi <math|a,b>, scriviamo <math|a∣b> se esiste un intero <math|k> tale che <math|b=ak>. L'ordine conta: <math|6∣18>, mentre <math|18∤6>. Il numero a destra è quello che vogliamo ottenere come multiplo.

Sono ammessi anche interi negativi: <math|3∣(-12)> perché <math|-12=3·(-4)>. Inoltre ogni intero divide 0, dato che <math|0=a·0>. Lo zero divide soltanto 0: un prodotto con 0 non può dare un numero diverso da 0.

La divisibilità non è l'ordine usuale. Tra 2 e 3 nessuno divide l'altro. Sui naturali è un <strong|ordine parziale>: è riflessiva, transitiva e antisimmetrica. Riflessiva significa <math|a∣a>. Transitiva significa che da <math|a∣b> e <math|b∣c> segue <math|a∣c>: infatti, se <math|b=ak> e <math|c=bℓ>, allora <math|c=a(kℓ)>. Antisimmetrica significa che, per naturali, <math|a∣b> e <math|b∣a> impongono <math|a=b>. Per numeri positivi segue dalle due disuguaglianze; se uno è zero, l'altro deve esserlo. Sugli interi questa conclusione diventa <math|a=±b>.

Una proprietà accompagnerà tutto il percorso. Se <math|d> divide sia <math|a> sia <math|b>, divide anche <math|a+b>, <math|a-b> e, più in generale, ogni <strong|combinazione intera> <math|ua+vb>, con <math|u,v∈ℤ>. Per capirne il motivo, scriviamo <math|a=dh> e <math|b=dk>. Allora

<\equation*>
ua+vb=d(uh+vk).
</equation*>

La parentesi è un intero: abbiamo esposto il fattore <math|d> che cercavamo.

<section|Divisione euclidea: il resto va scelto bene>

Dividendo 17 per 5 otteniamo <math|17=3·5+2>. Il quoziente è 3, il resto è 2. Potremmo anche scrivere <math|17=2·5+7>, ma il 7 contiene ancora un intero gruppo di 5: non abbiamo finito la divisione.

La divisione euclidea chiede un resto non negativo e più piccolo del divisore in valore assoluto.

<\concetto|Divisione euclidea>
Per ogni <math|a,b∈ℤ>, con <math|b≠0>, esistono unici interi <math|q,r> tali che

<\equation*>
a=qb+r,<space|2em>0≤r‹\|b\|.
</equation*>

Chiamiamo <math|q> il quoziente e <math|r> il resto.
</concetto>

La condizione sul resto vale anche con numeri negativi. Per esempio,

<\equation*>
-17=(-4)·5+3.
</equation*>

Il resto è 3. La scrittura <math|-17=(-3)·5-2> dà l'uguaglianza giusta, ma non una divisione euclidea: il resto sarebbe negativo. Se il divisore è <math|-5>, scriviamo invece <math|-17=4·(-5)+3>; il resto rimane 3.

<figura|@IMG(divisione)|Per dividere <math|-17> per 5 partiamo dal multiplo <math|-20> e avanziamo di 3. Il resto misura questa distanza non negativa.>

<subsection|Perché esistono quoziente e resto>

Consideriamo prima <math|b›0>. Cerchiamo numeri non negativi della forma <math|a-qb>. Ce n'è almeno uno: se <math|a≥0> basta <math|q=0>; se <math|a‹0>, scegliamo <math|q=a> e otteniamo <math|a-ab=a(1-b)≥0>, perché entrambi i fattori sono non positivi.

Per il principio del minimo esiste dunque il più piccolo numero non negativo di questa forma. Chiamiamolo <math|r=a-qb>. Se fosse <math|r≥b>, potremmo sottrarre ancora <math|b>: il numero <math|r-b=a-(q+1)b> sarebbe non negativo e più piccolo di <math|r>. Questo contraddice la scelta del minimo. Perciò <math|0≤r‹b>, come volevamo.

Se <math|b‹0>, dividiamo prima per <math|\|b\|=-b>. Cambiando segno al quoziente otteniamo poi la divisione per <math|b>, con lo stesso resto.

<subsection|Perché la scelta è unica>

Supponiamo di avere due divisioni corrette: <math|a=qb+r=q'b+r'>. Sottraendole troviamo

<\equation*>
(q-q')b=r'-r.
</equation*>

Quindi <math|r'-r> è un multiplo di <math|b>. Ma entrambi i resti stanno fra 0 e <math|\|b\|-1>, perciò <math|\|r'-r\|‹\|b\|>. L'unico multiplo di <math|b> così piccolo in valore assoluto è 0. Segue <math|r'=r>, e poi <math|q'=q> perché <math|b≠0>.

<section|MCD: ciò che i divisori hanno in comune>

I divisori positivi di 18 sono <math|1,2,3,6,9,18>; quelli di 12 sono <math|1,2,3,4,6,12>. I divisori comuni sono <math|1,2,3,6>. Il più grande è 6.

<\concetto|Massimo comun divisore>
Il <strong|massimo comun divisore>, abbreviato MCD e scritto <math|gcd(a,b)>, è il massimo dei divisori comuni positivi di <math|a,b>, quando i due numeri non sono entrambi nulli.
</concetto>

Esiste perché 1 è un divisore comune e i divisori positivi di un numero non nullo sono finiti.

I segni non cambiano i divisori positivi, dunque <math|gcd(a,b)=gcd(\|a\|,\|b\|)>. Inoltre <math|gcd(a,0)=\|a\|> per <math|a≠0>: tutti i divisori di <math|a> dividono anche 0. Due interi si chiamano <strong|coprimi> quando il loro MCD è 1.

<section|Algoritmo di Euclide: conservare i divisori, ridurre i numeri>

Elencare i divisori funziona per numeri piccoli. Per numeri grandi conviene cambiare la coppia senza cambiare i suoi divisori comuni.

Se <math|a=qb+r>, un divisore di <math|a,b> divide anche <math|r=a-qb>. Viceversa, un divisore di <math|b,r> divide anche <math|a=qb+r>. Le coppie <math|(a,b)> e <math|(b,r)> hanno quindi esattamente gli stessi divisori comuni:

<\equation*>
gcd(a,b)=gcd(b,r).
</equation*>

Questa uguaglianza è il motivo per cui funziona l'<strong|algoritmo di Euclide>. Partiamo dai valori assoluti, mettiamo il maggiore per primo e ripetiamo la divisione con resto.

Per 45 e 17 otteniamo:

<\equation*>
45=2·17+11,<space|2em>17=1·11+6,
</equation*>

<\equation*>
11=1·6+5,<space|2em>6=1·5+1,<space|2em>5=5·1+0.
</equation*>

Dopo la prima riga cerchiamo il MCD di 17 e 11; poi quello di 11 e 6; infine arriviamo a 1 e 0. I resti positivi diminuiscono: <math|11›6›5›1>. Non possono diminuire per sempre nei naturali, quindi il procedimento termina.

Quando compare resto zero, il divisore dell'ultima divisione divide il numero precedente. Il MCD è dunque l'<strong|ultimo resto non nullo>. Qui è 1: 45 e 17 sono coprimi. Se la prima divisione dà già resto zero, il MCD è il divisore di quella divisione: per esempio <math|gcd(18,6)=6>. Se uno dei due numeri di partenza è già zero, il MCD è subito il valore assoluto dell'altro.

<figura|@IMG(euclide)|Nel rettangolo <math|45×17> togliamo prima due quadrati di lato 17, poi quadrati di lato 11, 6, 5 e 1. Le dimensioni rimaste seguono le divisioni dell'algoritmo.>

<subsection|In sintesi>

La <strong|divisione euclidea> produce un resto controllato. Il <strong|MCD> descrive il più grande divisore comune. L'<strong|algoritmo di Euclide> lo calcola conservando i divisori comuni e facendo diminuire i resti. Nel prossimo capitolo leggeremo le stesse divisioni al contrario: ne ricaveremo un'informazione nuova.

<\verifica|4>
<strong|1.> Trova quoziente e resto di <math|-29> diviso per 6. Per orientarti, cerca i due multipli consecutivi di 6 fra cui cade <math|-29>.

<strong|2.> Calcola <math|gcd(84,30)> con Euclide. Spiega perché fermarsi alla prima divisione non basta.
</verifica>

