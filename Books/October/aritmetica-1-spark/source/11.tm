<chapter|Potenze modulari e sviluppi decimali>

<\inbreve>
L'ordine di un elemento descrive quando le sue potenze ricominciano. Useremo questa idea per trovare un esponente incognito. Poi ritroveremo la periodicità in un oggetto familiare: le cifre decimali di una frazione.
</inbreve>

<section|Potenze modulari: cercare dentro un ciclo>

Calcoliamo le potenze di 4 modulo 17, riducendo il risultato dopo ogni moltiplicazione:

<\equation*>
4<rsup|0>≡1,<space|1em>4<rsup|1>≡4,<space|1em>4<rsup|2>≡16≡-1,
</equation*>

<\equation*>
4<rsup|3>≡-4≡13,<space|1em>4<rsup|4>≡1<pmod|17>.
</equation*>

Il primo ritorno a 1 avviene dopo quattro passi: <math|<math-up|ord><rsub|17>(4)=4>. Dunque l'esponente conta modulo 4. Le potenze assumono soltanto i valori <math|1,4,16,13>.

La congruenza <math|4<rsup|x>≡16<pmod|17>> ha perciò soluzioni <math|x≡2<pmod|4>>. Invece <math|4<rsup|x>≡2<pmod|17>> non ha soluzione: 2 non compare nel ciclo. Il fatto che 2 sia invertibile modulo 17 non basta.

<\concetto|Equazione esponenziale modulare>
Supponiamo <math|m≥2> e <math|gcd(a,m)=1>. Sia <math|r=<math-up|ord><rsub|m>(a)>. La congruenza <math|a<rsup|x>≡b<pmod|m>> ha soluzione se e solo se la classe di <math|b> compare tra le potenze di <math|a>. Se <math|x<rsub|0>> è una soluzione, tutte le soluzioni sono

<\equation*>
x≡x<rsub|0><pmod|r>.
</equation*>
</concetto>

Perché il modulo della risposta è <math|r>, mentre quello della domanda è <math|m>? Stiamo descrivendo gli <em|esponenti> che portano allo stesso punto del ciclo, e il ciclo si ripete ogni <math|r> passi.

La prova usa il capitolo 10. Se due potenze <math|a<rsup|x>> e <math|a<rsup|x<rsub|0>>> coincidono modulo <math|m>, moltiplicando per l'inversa della seconda otteniamo <math|a<rsup|x-x<rsub|0>>≡1>. Questo avviene esattamente quando <math|r∣(x-x<rsub|0>)>. Viceversa aggiungere un multiplo di <math|r> all'esponente non cambia la potenza.

Possiamo cercare <math|x> nei naturali. Se permettiamo esponenti interi negativi, una potenza negativa indica la potenza dell'inversa modulare: il ragionamento rimane lo stesso. Per basi non coprime con il modulo non applichiamo questo criterio dell'ordine.

<section|Spezzare il modulo, poi ricomporre gli esponenti>

Risolviamo <math|3<rsup|x>≡61<pmod|91>>. Poiché <math|91=7·13>, il teorema cinese ci permette di studiare separatamente i resti modulo 7 e modulo 13.

Modulo 7, il termine noto è <math|61≡5>. Le potenze, a partire dall'esponente zero, sono

<\equation*>
1,3,2,6,4,5,1,…
</equation*>

Il primo ritorno a 1 è all'esponente 6; il 5 compare all'esponente 5. Otteniamo <math|x≡5<pmod|6>>.

Modulo 13, il termine noto è <math|61≡9>. Le potenze sono <math|1,3,9,1,…>: ordine 3, quindi <math|x≡2<pmod|3>>.

Ora abbiamo due condizioni sull'esponente. I moduli 6 e 3 non sono coprimi, ma non serve forzare il teorema cinese nella forma coprima: ogni numero <math|x=5+6k> dà resto 2 nella divisione per 3. La seconda condizione è già contenuta nella prima.

Le soluzioni sono dunque <math|x≡5<pmod|6>>. Controlliamo un rappresentante: <math|3<rsup|5>=243=2·91+61>.

<section|Decimali periodici: che cosa si ripete nella divisione?>

Per trovare le cifre di <math|1/7>, moltiplichiamo il resto corrente per 10, dividiamo per 7, scriviamo la cifra ottenuta e conserviamo il nuovo resto. Il primo passo è <math|10=1·7+3>: la cifra è 1 e il nuovo resto è 3. Poi <math|30=4·7+2>: la cifra è 4 e il resto è 2.

I resti successivi sono <math|1,3,2,6,4,5,1>. Quando torna il resto iniziale, torna esattamente la situazione da cui eravamo partiti. Le cifre ricominciano: <math|1/7=0,<wide|142857|\<bar\>>>.

<figura|@IMG(resti7)|Ogni freccia indica una divisione: moltiplichiamo il resto per 10, otteniamo la cifra sulla freccia e passiamo al nuovo resto. Il ritorno al resto 1 fa ripartire le stesse cifre.>

Per un denominatore positivo <math|b>, i resti possibili sono soltanto <math|0,1,…,b-1>. Se compare zero, la divisione termina. Altrimenti, continuando, un resto deve ripetersi. Dallo stesso resto il procedimento produce sempre la stessa cifra e lo stesso resto successivo: da quel punto le cifre sono periodiche.

Abbiamo dimostrato che <strong|ogni razionale ha uno sviluppo decimale finito o eventualmente periodico>. «Eventualmente» significa che può esserci una parte iniziale prima del periodo.

<section|Dal periodo alla frazione>

Possiamo percorrere anche la strada inversa. Poniamo <math|x=0,<wide|34|\<bar\>>>. Il periodo ha due cifre, quindi moltiplicare per 100 sposta una copia del periodo prima della virgola:

<\equation*>
100x=34,343434…,<space|2em>x=0,343434…
</equation*>

Sottraendo, le due parti infinite coincidono e si cancellano: <math|99x=34>. Dunque <math|x=34/99>.

Se il periodo comincia più avanti, spostiamo prima la parte iniziale. Per <math|x=0,1<wide|6|\<bar\>>> abbiamo <math|10x=1,666…> e <math|100x=16,666…>. Sottraendo otteniamo <math|90x=15>, quindi <math|x=1/6>.

In generale, se il blocco periodico rappresenta l'intero <math|B> ed è lungo <math|r> cifre, la sua ripetizione pura vale <math|B/(10<rsup|r>-1)>. Una parte iniziale di <math|s> cifre aggiunge un decimale finito e sposta la parte periodica dividendo per <math|10<rsup|s>>. Il risultato è ancora razionale. Perciò vale anche il viceversa: <strong|un decimale eventualmente periodico rappresenta un razionale>.

<section|Il denominatore anticipa la forma del decimale>

Riduciamo la frazione <math|a/b> ai minimi termini, con <math|b›0>, e scriviamo

<\equation*>
b=2<rsup|α>5<rsup|β>c,<space|2em>gcd(c,10)=1.
</equation*>

Separiamo 2 e 5 perché sono i primi contenuti in 10. Una potenza di 10 può assorbirli; non può assorbire i fattori di <math|c>.

Se <math|c=1>, il denominatore divide <math|10<rsup|s>>, con <math|s=max(α,β)>. Possiamo quindi riscrivere la frazione con denominatore <math|10<rsup|s>>: il decimale termina. Per esempio <math|3/40=75/1000=0,075>.

Se <math|c›1>, il periodo non può scomparire. La parte iniziale ha lunghezza <math|s=max(α,β)> e la lunghezza minima del periodo è <math|<math-up|ord><rsub|c>(10)>.

Per capirne il motivo, dopo <math|s> spostamenti della virgola il denominatore rimasto, ridotto, è <math|c>. Un periodo di lunghezza <math|r> significa che spostare altre <math|r> cifre lascia la stessa parte frazionaria: <math|10<rsup|r>a'/c-a'/c> è intero, con <math|gcd(a',c)=1>. Questo equivale a <math|c∣(10<rsup|r>-1)>. Il primo <math|r> possibile è proprio l'ordine di 10 modulo <math|c>.

La lunghezza iniziale è esattamente <math|s>: prima di allora il denominatore ridotto contiene ancora un fattore 2 o 5, mentre un periodo puro ha denominatore che divide un numero <math|10<rsup|r>-1>, coprimo con 10. Per <math|1/6>, <math|6=2·3>: una cifra iniziale e periodo di lunghezza <math|<math-up|ord><rsub|3>(10)=1>.

<subsection|In sintesi>

Nelle <strong|potenze modulari> si ripete la posizione nel gruppo; nella <strong|divisione decimale> si ripete il resto. In entrambi i casi, conoscere il ritorno permette di descrivere un processo infinito con un numero finito di passi.

<\verifica|11>
<strong|1.> Risolvi <math|2<rsup|x>≡4<pmod|7>> per <math|x∈ℕ>. Prima calcola un intero ciclo delle potenze e trova l'ordine.

<strong|2.> Senza eseguire la divisione completa, stabilisci se <math|7/80> termina e quante cifre decimali servono. Trasforma poi <math|0,2<wide|7|\<bar\>>> in frazione.
</verifica>
