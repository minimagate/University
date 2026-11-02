<chapter|Congruenze lineari e teorema cinese>

<\inbreve>
Con le classi sappiamo già sommare e moltiplicare, e manca la divisione. Scopriremo che modulo <math|n> si può dividere per alcuni numeri ma non per altri, e che a decidere è ancora una volta il MCD. Con gli inversi modulari risolveremo le congruenze lineari, e alla fine metteremo insieme informazioni su resti diversi grazie al teorema cinese.
</inbreve>

<section|Inversi modulari: che cosa significa dividere?>

Fra gli interi l'equazione <math|3x=1> non ha soluzione. La congruenza <math|3x≡1<pmod|7>>, invece, ne ha una, <math|x=5>, perché <math|3·5=15=2·7+1>.

In altre parole, modulo 7 moltiplicare per 5 annulla l'effetto di moltiplicare per 3, perché il prodotto dei due fattori è congruo a 1. Diciamo allora che <math|[5]<rsub|7>> è l'<strong|inverso moltiplicativo> di <math|[3]<rsub|7>>, e moltiplicare per 5 è il modo di «dividere per 3» modulo 7.

In generale, per <math|n≥2>, una classe <math|[a]<rsub|n>> si dice <strong|invertibile> se esiste una classe <math|[u]<rsub|n>> tale che <math|[a]<rsub|n>[u]<rsub|n>=[1]<rsub|n>>, cioè se possiamo risolvere <math|au≡1<pmod|n>>.

Dire che <math|au-1> è un multiplo di <math|n> equivale a scrivere <math|au+nv=1> per qualche intero <math|v>, e così ritroviamo l'identità di Bézout. Ne segue che una classe è invertibile esattamente quando

<\equation*>
gcd(a,n)=1.
</equation*>

Se l'inverso esiste, ogni divisore comune di <math|a> e <math|n> divide <math|au+nv=1>, e quindi il MCD è 1. Viceversa, se il MCD è 1, Bézout ci dà un'uguaglianza <math|au+nv=1>, e leggendola modulo <math|n> troviamo l'inverso <math|[u]<rsub|n>>.

L'inverso, quando c'è, è unico come classe. Se <math|au≡1> e <math|av≡1> nello stesso modulo, allora <math|u≡u(av)≡(ua)v≡v>. Possiamo scriverlo con rappresentanti diversi, ma due classi inverse diverse non esistono.

Per trovarlo in pratica possiamo usare la risalita di Euclide. L'identità <math|8·17-3·45=1>, ottenuta nel capitolo 5, ci dice per esempio che l'inverso di 17 modulo 45 è 8. Con numeri piccoli basta anche cercare un multiplo che abbia resto 1, come abbiamo fatto con <math|3·5=15> modulo 7.

<figura|@IMG(tabelle)|Nelle tabelline modulo 5 e modulo 6, gli 1 cerchiati segnalano le coppie di inversi. Modulo 6 alcune classi non nulle non hanno inverso: nelle loro righe non compare 1.>

<section|Cancellazione: quando il modulo deve cambiare>

Fra gli interi, da <math|2x=2y> possiamo concludere che <math|x=y>. Con le congruenze bisogna stare più attenti. Modulo 6, per esempio, <math|2·1≡2·4>, perché 2 e 8 hanno lo stesso resto, eppure <math|1≢4<pmod|6>>.

Se il fattore da cancellare è invertibile non ci sono problemi, perché basta moltiplicare entrambi i membri per il suo inverso. Quando non lo è, la cancellazione si può ancora fare, ma ci fa perdere un po' di informazione, e vogliamo capire quanta.

Sia <math|d=gcd(c,n)>. Per definizione di congruenza

<\equation*>
cx≡cy<pmod|n><space|1em>⇔<space|1em>n∣c(x-y).
</equation*>

Dividendo per <math|d> sia <math|n> sia <math|c>, la condizione diventa <math|(n/d)∣(c/d)(x-y)>. I numeri <math|n/d> e <math|c/d> sono coprimi, e il lemma di Euclide ci permette di togliere il fattore <math|c/d>, arrivando a <math|(n/d)∣(x-y)>. Abbiamo così la regola

<\equation*>
cx≡cy<pmod|n><space|1em>⇔<space|1em>x≡y<pmod|n/d>.
</equation*>

Nel nostro esempio, cancellare il 2 fa scendere il modulo da 6 a 3, e infatti <math|1≡4<pmod|3>>. Il modulo resta lo stesso soltanto quando <math|d=1>, cioè quando il fattore è invertibile.

<section|Congruenze lineari: una diofantea sui resti>

Una congruenza della forma <math|ax≡b<pmod|n>> si può tradurre in un problema che conosciamo già. Dire che <math|ax-b> è un multiplo di <math|n> significa infatti risolvere

<\equation*>
ax+ny=b,<space|2em>x,y∈ℤ,
</equation*>

che è una diofantea lineare. Il criterio del MCD risponde subito alla domanda sull'esistenza.

<\concetto|Congruenza lineare>
Posto <math|d=gcd(a,n)>, la congruenza <math|ax≡b<pmod|n>> ha soluzioni se e solo se <math|d∣b>. Quando esistono, formano una sola classe modulo <math|n/d>, cioè <math|d> classi distinte modulo <math|n>.
</concetto>

Vediamo su un esempio da dove viene il modulo ridotto. Vogliamo risolvere

<\equation*>
6x≡9<pmod|15>.
</equation*>

Il MCD di 6 e 15 è 3, che divide 9, quindi le soluzioni esistono. La condizione <math|15∣(6x-9)>, divisa per 3, equivale a <math|5∣(2x-3)>, cioè a

<\equation*>
2x≡3<pmod|5>.
</equation*>

Ora 2 è invertibile modulo 5, con inverso 3, perché <math|2·3≡1>. Moltiplicando entrambi i membri per 3 troviamo <math|x≡9≡4<pmod|5>>, e quindi gli interi cercati sono <math|x=4+5t> con <math|t∈ℤ>.

Se vogliamo elencare le soluzioni rispetto al modulo iniziale 15, troviamo tre resti, cioè <math|4,9,14>. Possiamo controllarli direttamente, perché <math|6·4=24>, <math|6·9=54> e <math|6·14=84> hanno tutti resto 9 modulo 15. La congruenza <math|6x≡8<pmod|15>>, al contrario, non ha soluzioni, perché 3 non divide 8.

Il procedimento generale è lo stesso. Dividiamo <math|a,b,n> per <math|d>. Se <math|n/d≥2>, il nuovo coefficiente <math|a/d> è invertibile nel nuovo modulo, e otteniamo un'unica classe <math|x≡x<rsub|0><pmod|n/d>>. Se invece <math|n/d=1>, la condizione ridotta è sempre vera e ogni intero è soluzione.

Rimane da capire perché, nel modulo iniziale, le classi siano esattamente <math|d>. Consideriamo i rappresentanti

<\equation*>
x<rsub|0>,<space|0.5em>x<rsub|0>+<frac|n|d>,<space|0.5em>…,<space|0.5em>x<rsub|0>+(d-1)<frac|n|d>.
</equation*>

Sono distinti modulo <math|n>, perché due di loro differiscono di meno di <math|d> passi da <math|n/d>, cioè di meno di <math|n>, e quindi non di un multiplo non nullo di <math|n>. Dopo <math|d> passi, invece, abbiamo aggiunto esattamente <math|n> e torniamo alla classe di partenza. Ogni altro valore del parametro ripete quindi una di queste <math|d> possibilità.

<section|Teorema cinese: combinare due informazioni>

Cerchiamo adesso un intero che abbia resto 2 nella divisione per 3 e resto 3 nella divisione per 5:

<\equation*>
x≡2<pmod|3>,<space|2em>x≡3<pmod|5>.
</equation*>

La prima condizione ci dice che i candidati sono i numeri <math|x=2+3k>. Mettiamoli nella seconda condizione, che diventa <math|2+3k≡3<pmod|5>>, cioè <math|3k≡1<pmod|5>>. L'inverso di 3 modulo 5 è 2, e quindi <math|k≡2<pmod|5>>.

Scriviamo allora <math|k=2+5t> e torniamo a <math|x>, trovando <math|x=2+3(2+5t)=8+15t>. Le due informazioni insieme individuano dunque un'unica classe modulo 15:

<\equation*>
x≡8<pmod|15>.
</equation*>

La sostituzione ha trasformato il sistema in una sola congruenza lineare, e lo stesso metodo ci darà anche il teorema generale.

<strong|Teorema cinese del resto.> Se <math|m,n›0> sono coprimi, per ogni scelta di <math|a,b> il sistema <math|x≡a<pmod|m>>, <math|x≡b<pmod|n>> ha soluzione. Tutte le soluzioni costituiscono un'unica classe modulo <math|mn>.

<subsection|Perché esiste una soluzione>

Dalla prima congruenza scriviamo <math|x=a+mk>, e la seconda chiede allora che <math|mk≡b-a<pmod|n>>. Se <math|n≥2>, siccome <math|m> e <math|n> sono coprimi, <math|m> è invertibile modulo <math|n>, e questa congruenza in <math|k> ha sempre soluzione. Se <math|n=1> la seconda condizione non chiede nulla, e basta prendere <math|x=a>.

Bézout permette anche di scrivere direttamente una soluzione. Partiamo da <math|um+vn=1>. Il numero <math|vn> è congruo a 1 modulo <math|m> e a 0 modulo <math|n>, mentre <math|um> fa il contrario. Ciascuno dei due termini controlla quindi un resto senza disturbare l'altro, e il numero

<\equation*>
x=avn+bum
</equation*>

è congruo ad <math|a> modulo <math|m> e a <math|b> modulo <math|n>.

<subsection|Perché è unica la classe, non il numero>

Se <math|x> e <math|y> risolvono lo stesso sistema, la differenza <math|x-y> è divisibile sia per <math|m> sia per <math|n>. Scriviamo <math|x-y=mh>. Allora <math|n∣mh>, e siccome <math|m> e <math|n> sono coprimi il lemma di Euclide dà <math|n∣h>, cioè <math|mn∣(x-y)>.

Tutte le soluzioni hanno quindi lo stesso resto modulo <math|mn>, e d'altra parte aggiungere a una soluzione un multiplo di <math|mn> non rovina nessuna delle due congruenze. È questo il senso preciso di «unica modulo <math|mn>».

<figura|@IMG(cinese)|A sinistra ogni coppia di resti modulo 3 e modulo 5 compare una volta fra 0 e 14. A destra i moduli 2 e 4 impongono vincoli di parità: alcune coppie di resti sono impossibili.>

<section|Moduli non coprimi: compatibilità e mcm>

Che cosa succede se i moduli hanno fattori in comune? Prendiamo <math|x≡1<pmod|4>> e <math|x≡3<pmod|6>>. Entrambe le condizioni chiedono un numero dispari, quindi almeno sulla parità vanno d'accordo. Scrivendo <math|x=1+4k> otteniamo <math|4k≡2<pmod|6>>, che cancellando il 2 diventa <math|2k≡1<pmod|3>>. Ne segue <math|k≡2<pmod|3>>, e quindi <math|x=9+12t>. Con secondo resto 2, invece, la prima condizione chiederebbe un numero dispari e la seconda un numero pari, e il sistema sarebbe impossibile.

In generale la sostituzione porta ancora a <math|mk≡b-a<pmod|n>>. Posto <math|d=gcd(m,n)>, questa congruenza ha soluzione se e solo se <math|d∣(b-a)>. È la condizione di <strong|compatibilità>, che chiede ai due resti di essere congrui modulo il MCD dei moduli, come la parità nell'esempio.

Quando i resti sono compatibili, <math|k> varia a passi di <math|n/d>, e quindi <math|x=a+mk> varia a passi di <math|mn/d>, che è proprio <math|<math-up|mcm>(m,n)>. Le soluzioni formano allora un'unica classe modulo il <strong|mcm>, che in generale è più piccolo del prodotto. Nell'esempio, infatti, la classe è modulo 12 e non modulo 24.

<subsection|Più di due moduli>

Con tre o più moduli a due a due coprimi possiamo combinare le prime due condizioni, poi il risultato con la terza, e così via. A ogni passo il prodotto dei moduli già usati è coprimo con il successivo, perché un primo che li dividesse entrambi dovrebbe dividere anche uno dei moduli precedenti, contro l'ipotesi. Per induzione otteniamo così una soluzione unica modulo il prodotto di tutti i moduli. Con moduli non coprimi si procede allo stesso modo, controllando ogni volta la compatibilità e usando il mcm come nuovo modulo. Quando si semplifica un sistema, una potenza di un primo va tenuta intera, perché il resto modulo 9 dice più del resto modulo 3.

<subsection|In sintesi>

Un <strong|inverso modulare> ci permette di dividere senza cambiare il modulo, ed esiste quando il numero è coprimo con il modulo. Le <strong|congruenze lineari> si risolvono controllando il MCD e usando un inverso nel modulo ridotto. Il <strong|teorema cinese> unisce informazioni su moduli diversi: con moduli coprimi ogni coppia di resti determina una classe modulo il prodotto, mentre nel caso generale serve la compatibilità e il periodo è il mcm.

<\verifica|8>
<strong|1.> Trova l'inverso di 5 modulo 12 e risolvi <math|8x≡4<pmod|12>>. Distingui la classe nel modulo ridotto dalle classi nel modulo iniziale.

<strong|2.> Risolvi <math|x≡2<pmod|6>>, <math|x≡5<pmod|9>>. Che cosa accade se il secondo resto diventa 4? Comincia controllando la compatibilità.
</verifica>
