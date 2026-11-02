<chapter|Potenze modulari e sviluppi decimali>

<\inbreve>
Le potenze di un numero modulo <math|m> prima o poi ricominciano da capo, e l'ordine ci dice dopo quanti passi. Sapendo questo possiamo risolvere equazioni in cui l'incognita sta all'esponente, cercandola dentro un ciclo finito. Lo stesso fenomeno si nasconde in un oggetto che conosciamo dalla scuola, le cifre decimali di una frazione, e alla fine del capitolo sapremo prevedere dal solo denominatore come sarà fatto il decimale.
</inbreve>

<section|Potenze modulari: cercare dentro un ciclo>

Calcoliamo le potenze di 4 modulo 17, riducendo il risultato dopo ogni moltiplicazione:

<\equation*>
4<rsup|0>≡1,<space|1em>4<rsup|1>≡4,<space|1em>4<rsup|2>≡16≡-1,
</equation*>

<\equation*>
4<rsup|3>≡-4≡13,<space|1em>4<rsup|4>≡1<pmod|17>.
</equation*>

Dopo quattro passi siamo tornati a 1, e quindi <math|<math-up|ord><rsub|17>(4)=4>. Da qui in poi le potenze ripetono sempre gli stessi quattro valori <math|1,4,16,13>, e l'esponente conta soltanto modulo 4.

Questo basta a risolvere un'equazione come <math|4<rsup|x>≡16<pmod|17>>. Il valore 16 compare nel ciclo all'esponente 2, quindi le soluzioni sono gli esponenti <math|x≡2<pmod|4>>. L'equazione <math|4<rsup|x>≡2<pmod|17>>, invece, non ha soluzioni, perché 2 non compare mai nel ciclo. Il fatto che 2 sia invertibile modulo 17 non aiuta, perché le potenze di 4 percorrono soltanto quattro delle sedici classi invertibili.

<\concetto|Equazione esponenziale modulare>
Supponiamo <math|m≥2> e <math|gcd(a,m)=1>. Sia <math|r=<math-up|ord><rsub|m>(a)>. La congruenza <math|a<rsup|x>≡b<pmod|m>> ha soluzione se e solo se la classe di <math|b> compare tra le potenze di <math|a>. Se <math|x<rsub|0>> è una soluzione, tutte le soluzioni sono

<\equation*>
x≡x<rsub|0><pmod|r>.
</equation*>
</concetto>

Può sorprendere che la risposta sia modulo <math|r> mentre la domanda era modulo <math|m>. Il motivo è che stiamo descrivendo gli <em|esponenti> che portano allo stesso punto del ciclo, e il ciclo si ripete ogni <math|r> passi.

La dimostrazione usa quello che abbiamo visto nel capitolo 10. Se <math|a<rsup|x>> e <math|a<rsup|x<rsub|0>>> coincidono modulo <math|m>, moltiplicando per l'inversa della seconda otteniamo <math|a<rsup|x-x<rsub|0>>≡1>, e questo accade esattamente quando <math|r∣(x-x<rsub|0>)>. Viceversa, aggiungere all'esponente un multiplo di <math|r> non cambia la potenza.

Di solito cerchiamo <math|x> fra i naturali. Se ammettiamo esponenti negativi, una potenza negativa indica una potenza dell'inversa modulare, e il ragionamento resta identico. Quando invece la base non è coprima con il modulo, questo criterio non si applica, perché la base non sta nel gruppo delle unità.

<section|Spezzare il modulo, poi ricomporre gli esponenti>

Proviamo con un modulo più grande e risolviamo <math|3<rsup|x>≡61<pmod|91>>. Siccome <math|91=7·13>, il teorema cinese ci permette di guardare separatamente i resti modulo 7 e modulo 13, dove i cicli sono più corti.

Modulo 7 il termine noto diventa <math|61≡5>, e le potenze di 3, a partire dall'esponente zero, sono

<\equation*>
1,3,2,6,4,5,1,…
</equation*>

Il primo ritorno a 1 avviene all'esponente 6, e il 5 compare all'esponente 5, quindi la prima condizione è <math|x≡5<pmod|6>>.

Modulo 13 il termine noto diventa <math|61≡9>, e le potenze sono <math|1,3,9,1,…>. Qui l'ordine è 3 e il 9 compare all'esponente 2, quindi la seconda condizione è <math|x≡2<pmod|3>>.

Ora abbiamo due condizioni sull'esponente, con moduli 6 e 3 che non sono coprimi. Non serve però forzare il teorema cinese, perché ogni numero della forma <math|x=5+6k> dà già resto 2 nella divisione per 3, e la seconda condizione è quindi contenuta nella prima. Le soluzioni sono dunque gli esponenti <math|x≡5<pmod|6>>, e un controllo diretto lo conferma, perché <math|3<rsup|5>=243=2·91+61>.

<section|Decimali periodici: che cosa si ripete nella divisione?>

Facciamo la divisione di 1 per 7 come a scuola. A ogni passo moltiplichiamo per 10 il resto che abbiamo, dividiamo per 7, scriviamo la cifra ottenuta e teniamo il nuovo resto. Al primo passo <math|10=1·7+3>, quindi la cifra è 1 e il nuovo resto è 3. Al secondo <math|30=4·7+2>, quindi la cifra è 4 e il resto è 2.

Continuando, i resti sono <math|1,3,2,6,4,5,1>. Quando ricompare il resto 1 ci ritroviamo esattamente nella situazione da cui eravamo partiti, e le cifre ricominciano identiche. Per questo <math|1/7=0,<wide|142857|\<bar\>>>.

<figura|@IMG(resti7)|Ogni freccia indica una divisione: moltiplichiamo il resto per 10, otteniamo la cifra sulla freccia e passiamo al nuovo resto. Il ritorno al resto 1 fa ripartire le stesse cifre.>

Lo stesso accade con qualsiasi denominatore positivo <math|b>. I resti possibili sono soltanto <math|0,1,…,b-1>. Se a un certo punto compare lo zero la divisione finisce. Altrimenti, siccome i resti possibili sono finiti, prima o poi uno di essi si ripete, e da quel resto il procedimento produce sempre la stessa cifra e lo stesso resto successivo. Da lì in poi le cifre si ripetono.

Abbiamo così dimostrato che <strong|ogni razionale ha uno sviluppo decimale finito o eventualmente periodico>. La parola «eventualmente» ricorda che il periodo può cominciare dopo alcune cifre iniziali.

<section|Dal periodo alla frazione>

Possiamo anche percorrere la strada al contrario. Prendiamo <math|x=0,<wide|34|\<bar\>>>. Il periodo ha due cifre, e moltiplicando per 100 spostiamo una copia del periodo prima della virgola:

<\equation*>
100x=34,343434…,<space|2em>x=0,343434…
</equation*>

Le due code infinite sono identiche, e sottraendo le due righe spariscono, lasciando <math|99x=34>. Quindi <math|x=34/99>.

Se il periodo comincia più avanti, prima spostiamo la virgola oltre la parte iniziale. Per <math|x=0,1<wide|6|\<bar\>>> abbiamo <math|10x=1,666…> e <math|100x=16,666…>, e sottraendo otteniamo <math|90x=15>, cioè <math|x=1/6>.

In generale, se il blocco che si ripete è lungo <math|r> cifre e, letto come numero intero, vale <math|B>, la sua ripetizione dopo la virgola vale <math|B/(10<rsup|r>-1)>. Una parte iniziale di <math|s> cifre aggiunge un decimale finito e divide la parte periodica per <math|10<rsup|s>>. In ogni caso il risultato è una frazione, e quindi vale anche il viceversa: <strong|un decimale eventualmente periodico rappresenta un razionale>.

<section|Il denominatore anticipa la forma del decimale>

Si può sapere in anticipo se il decimale di una frazione termina, e quanto è lungo il suo periodo? Riduciamo la frazione <math|a/b> ai minimi termini, con <math|b›0>, e scriviamo

<\equation*>
b=2<rsup|α>5<rsup|β>c,<space|2em>gcd(c,10)=1.
</equation*>

Separiamo i fattori 2 e 5 perché sono i primi contenuti in 10. Una potenza di 10 abbastanza grande li può assorbire, mentre i fattori di <math|c> non li assorbe mai.

Se <math|c=1>, il denominatore divide <math|10<rsup|s>> con <math|s=max(α,β)>, e possiamo riscrivere la frazione con denominatore <math|10<rsup|s>>. Il decimale allora termina, come in <math|3/40=75/1000=0,075>.

Se invece <math|c›1>, il periodo non può scomparire. In questo caso la parte iniziale ha lunghezza <math|s=max(α,β)>, e la lunghezza minima del periodo è <math|<math-up|ord><rsub|c>(10)>.

Vediamo da dove viene questo ordine. Dopo aver spostato la virgola di <math|s> posti, il denominatore che resta, ridotto, è <math|c>, e la frazione ha la forma <math|a'/c> con <math|gcd(a',c)=1>, più eventualmente un intero. Dire che il periodo è lungo <math|r> significa che spostando la virgola di altri <math|r> posti la parte dopo la virgola resta la stessa, cioè che <math|10<rsup|r>a'/c-a'/c> è un intero. Questo succede esattamente quando <math|c∣(10<rsup|r>-1)>, e il più piccolo <math|r> con questa proprietà è proprio l'ordine di 10 modulo <math|c>.

Anche la lunghezza della parte iniziale è esattamente <math|s>. Prima di aver spostato la virgola di <math|s> posti, infatti, il denominatore ridotto contiene ancora un fattore 2 o 5, mentre un decimale che si ripete subito ha un denominatore che divide un numero della forma <math|10<rsup|r>-1>, coprimo con 10. Per <math|1/6>, per esempio, <math|6=2·3>, e infatti c'è una cifra iniziale seguita da un periodo lungo <math|<math-up|ord><rsub|3>(10)=1>.

<subsection|In sintesi>

Nelle <strong|potenze modulari> si ripete la posizione nel ciclo delle potenze, e nella <strong|divisione decimale> si ripete il resto. In entrambi i casi, sapere quando avviene il primo ritorno ci permette di descrivere un processo infinito con un numero finito di passi.

<\verifica|11>
<strong|1.> Risolvi <math|2<rsup|x>≡4<pmod|7>> per <math|x∈ℕ>. Prima calcola un intero ciclo delle potenze e trova l'ordine.

<strong|2.> Senza eseguire la divisione completa, stabilisci se <math|7/80> termina e quante cifre decimali servono. Trasforma poi <math|0,2<wide|7|\<bar\>>> in frazione.
</verifica>
