<chapter|Congruenze lineari e teorema cinese>

<\inbreve>
Sappiamo sommare e moltiplicare le classi. Ma possiamo anche dividere? La risposta ci porterà agli inversi modulari e alle congruenze lineari. Poi combineremo informazioni su resti diversi attraverso il teorema cinese.
</inbreve>

<section|Inversi modulari: che cosa significa dividere?>

L'equazione <math|3x=1> non ha una soluzione intera. La congruenza <math|3x≡1<pmod|7>> invece sì: <math|x=5>, perché <math|3·5=15=2·7+1>.

Modulo 7, moltiplicare per 5 annulla l'effetto di moltiplicare per 3: il prodotto dei due fattori è congruo a 1. Diciamo che <math|[5]<rsub|7>> è l'<strong|inverso moltiplicativo> di <math|[3]<rsub|7>>.

Per <math|n≥2>, la classe <math|[a]<rsub|n>> è <strong|invertibile> se esiste una classe <math|[u]<rsub|n>> tale che <math|[a]<rsub|n>[u]<rsub|n>=[1]<rsub|n>>. In termini di congruenze, cerchiamo <math|au≡1<pmod|n>>.

Questa richiesta equivale a scrivere <math|au+nv=1> per qualche intero <math|v>. Ritroviamo Bézout: una classe è invertibile esattamente quando

<\equation*>
gcd(a,n)=1.
</equation*>

Se esiste l'inverso, ogni divisore comune di <math|a,n> divide <math|au+nv=1>, quindi il MCD è 1. Viceversa, se il MCD è 1, Bézout costruisce proprio un'uguaglianza <math|au+nv=1>, e riducendola modulo <math|n> troviamo l'inverso <math|[u]<rsub|n>>.

L'inverso è unico come classe. Se <math|au≡1> e <math|av≡1> nello stesso modulo, allora <math|u≡u(av)≡(ua)v≡v>. Due rappresentanti diversi possono quindi indicare lo stesso inverso, ma non esistono due classi inverse diverse.

Per trovarlo possiamo usare la risalita di Euclide. L'identità già ottenuta <math|8·17-3·45=1> dice che l'inverso di 17 modulo 45 è 8. Per numeri piccoli basta anche cercare un multiplo con resto 1, come <math|3·5=15> modulo 7.

<figura|@IMG(tabelle)|Nelle tabelline modulo 5 e modulo 6, gli 1 cerchiati segnalano le coppie di inversi. Modulo 6 alcune classi non nulle non hanno inverso: nelle loro righe non compare 1.>

<section|Cancellazione: quando il modulo deve cambiare>

Negli interi, da <math|2x=2y> possiamo concludere <math|x=y>. Nelle congruenze serve attenzione. Modulo 6 abbiamo <math|2·1≡2·4>, perché 2 e 8 hanno lo stesso resto. Ma <math|1≢4<pmod|6>>.

Se il fattore è invertibile, possiamo moltiplicare entrambi i membri per il suo inverso e cancellarlo mantenendo il modulo. Se non lo è, la cancellazione conserva meno informazione.

Poniamo <math|d=gcd(c,n)>. Dalla definizione di congruenza:

<\equation*>
cx≡cy<pmod|n><space|1em>⇔<space|1em>n∣c(x-y).
</equation*>

Dividendo il divisore e il numero da dividere per <math|d>, la condizione diventa <math|(n/d)∣(c/d)(x-y)>. I numeri <math|n/d,c/d> sono coprimi; per il lemma di Euclide equivale a <math|(n/d)∣(x-y)>. Abbiamo dimostrato la regola:

<\equation*>
cx≡cy<pmod|n><space|1em>⇔<space|1em>x≡y<pmod|n/d>.
</equation*>

Nell'esempio, cancellare 2 riduce il modulo da 6 a 3: infatti <math|1≡4<pmod|3>>. Il modulo rimane lo stesso soltanto se <math|d=1>.

<section|Congruenze lineari: una diofantea sui resti>

Consideriamo <math|ax≡b<pmod|n>>. Per definizione <math|ax-b> è multiplo di <math|n>, quindi possiamo riscrivere il problema come

<\equation*>
ax+ny=b,<space|2em>x,y∈ℤ.
</equation*>

È una diofantea lineare. Il criterio del MCD ci dà subito la risposta sull'esistenza:

<\concetto|Congruenza lineare>
Posto <math|d=gcd(a,n)>, la congruenza <math|ax≡b<pmod|n>> ha soluzioni se e solo se <math|d∣b>. Quando esistono, formano una sola classe modulo <math|n/d>, cioè <math|d> classi distinte modulo <math|n>.
</concetto>

Vediamo concretamente perché il modulo ridotto compare. Vogliamo risolvere

<\equation*>
6x≡9<pmod|15>.
</equation*>

Il MCD è 3 e divide 9: possiamo procedere. La condizione <math|15∣(6x-9)> equivale, dividendo tutto per 3, a <math|5∣(2x-3)>. Otteniamo quindi

<\equation*>
2x≡3<pmod|5>.
</equation*>

Ora 2 è invertibile modulo 5: il suo inverso è 3 perché <math|2·3≡1>. Moltiplichiamo entrambi i membri per 3 e troviamo <math|x≡9≡4<pmod|5>>. Gli interi cercati sono dunque <math|x=4+5t>, <math|t∈ℤ>.

Se vogliamo elencare le soluzioni modulo il modulo iniziale 15, troviamo tre resti: <math|4,9,14>. Verifichiamo: <math|6·4=24>, <math|6·9=54> e <math|6·14=84> danno tutti resto 9 modulo 15. La congruenza <math|6x≡8<pmod|15>>, invece, è impossibile, perché 3 non divide 8.

In generale dividiamo <math|a,b,n> per <math|d>. Quando <math|n/d≥2>, il coefficiente <math|a/d> è invertibile nel nuovo modulo: otteniamo un'unica classe <math|x≡x<rsub|0><pmod|n/d>>. Se <math|n/d=1>, la condizione ridotta è automatica e ogni intero è soluzione.

Perché nel modulo iniziale le classi sono esattamente <math|d>? I rappresentanti

<\equation*>
x<rsub|0>,<space|0.5em>x<rsub|0>+<frac|n|d>,<space|0.5em>…,<space|0.5em>x<rsub|0>+(d-1)<frac|n|d>
</equation*>

sono distinti modulo <math|n>: due di essi differiscono di meno di <math|d> passi, quindi non di un multiplo non nullo di <math|n>. Dopo <math|d> passi abbiamo aggiunto <math|n> e torniamo alla stessa classe. Ogni altro valore del parametro ripete una di queste possibilità.

<section|Teorema cinese: combinare due informazioni>

Cerchiamo ora un intero con resto 2 modulo 3 e resto 3 modulo 5:

<\equation*>
x≡2<pmod|3>,<space|2em>x≡3<pmod|5>.
</equation*>

La prima condizione descrive tutti i candidati: <math|x=2+3k>. Sostituiamo nella seconda: <math|2+3k≡3<pmod|5>>, quindi <math|3k≡1<pmod|5>>. Poiché l'inverso di 3 modulo 5 è 2, segue <math|k≡2<pmod|5>>.

Scriviamo <math|k=2+5t> e torniamo a <math|x>: <math|x=2+3(2+5t)=8+15t>. Le due informazioni insieme descrivono dunque un'unica classe modulo 15:

<\equation*>
x≡8<pmod|15>.
</equation*>

La sostituzione ha trasformato il sistema in una sola congruenza lineare. È un metodo da cui possiamo anche ricavare il teorema generale.

<strong|Teorema cinese del resto.> Se <math|m,n›0> sono coprimi, per ogni scelta di <math|a,b> il sistema <math|x≡a<pmod|m>>, <math|x≡b<pmod|n>> ha soluzione. Tutte le soluzioni costituiscono un'unica classe modulo <math|mn>.

<subsection|Perché esiste una soluzione>

Dalla prima congruenza scriviamo <math|x=a+mk>. La seconda chiede <math|mk≡b-a<pmod|n>>. Siccome <math|m,n> sono coprimi, <math|m> è invertibile modulo <math|n> se <math|n≥2>: la congruenza per <math|k> ha sempre una soluzione. Se <math|n=1>, la seconda condizione non impone alcun vincolo e basta scegliere <math|x=a>.

Bézout permette anche di costruire direttamente un numero adatto. Scriviamo <math|um+vn=1>. Il termine <math|vn> è congruo a 1 modulo <math|m> e a 0 modulo <math|n>; il termine <math|um> fa il contrario. Perciò

<\equation*>
x=avn+bum
</equation*>

è congruo ad <math|a> modulo <math|m> e a <math|b> modulo <math|n>. La formula nasce dal desiderio di controllare i due resti separatamente.

<subsection|Perché è unica la classe, non il numero>

Se <math|x,y> risolvono lo stesso sistema, <math|x-y> è divisibile sia per <math|m> sia per <math|n>. Scriviamo <math|x-y=mh>. Allora <math|n∣mh>; essendo <math|m,n> coprimi, il lemma di Euclide dà <math|n∣h>. Quindi <math|mn∣(x-y)>.

Le soluzioni hanno tutte lo stesso resto modulo <math|mn>. Viceversa, aggiungere un multiplo di <math|mn> a una soluzione conserva entrambe le congruenze. È questo il significato preciso di «unica modulo <math|mn>».

<figura|@IMG(cinese)|A sinistra ogni coppia di resti modulo 3 e modulo 5 compare una volta fra 0 e 14. A destra i moduli 2 e 4 impongono vincoli di parità: alcune coppie di resti sono impossibili.>

<section|Moduli non coprimi: compatibilità e mcm>

Consideriamo <math|x≡1<pmod|4>>, <math|x≡3<pmod|6>>. Entrambe le condizioni chiedono un numero dispari, quindi non si contraddicono sulla parità. Scrivendo <math|x=1+4k> otteniamo <math|4k≡2<pmod|6>>, che si riduce a <math|2k≡1<pmod|3>>. Segue <math|k≡2<pmod|3>>, e quindi <math|x=9+12t>.

Se il secondo resto fosse 2, avremmo invece un numero dispari dalla prima condizione e pari dalla seconda: il sistema sarebbe impossibile.

In generale la sostituzione dà ancora <math|mk≡b-a<pmod|n>>. Posto <math|d=gcd(m,n)>, questa congruenza è risolvibile se e solo se <math|d∣(b-a)>. Ecco la condizione di <strong|compatibilità>: i due resti devono essere congrui modulo il MCD.

Quando sono compatibili, <math|k> varia di passi <math|n/d>, quindi <math|x=a+mk> varia di passi <math|mn/d>. Quest'ultimo numero è <math|<math-up|mcm>(m,n)>. Le soluzioni formano dunque un'unica classe modulo il <strong|mcm>, non necessariamente modulo il prodotto.

<subsection|Più di due moduli>

Per moduli a due a due coprimi ricombiniamo le prime due condizioni, poi il risultato con la terza e così via. A ogni passo il prodotto dei moduli già usati è coprimo con il successivo: un primo che dividesse entrambi dovrebbe dividere uno dei moduli precedenti, contraddicendo la coprimalità a due a due. Ripetendo il teorema per due moduli otteniamo, per induzione, esistenza e unicità modulo il prodotto di tutti i moduli.

Per moduli non coprimi possiamo ugualmente combinarli due alla volta, controllando la compatibilità e usando ogni volta il mcm come nuovo modulo. Una potenza prima va conservata: sapere il resto modulo 9 contiene più informazione che sapere soltanto quello modulo 3.

<subsection|In sintesi>

Un <strong|inverso modulare> permette di dividere mantenendo il modulo. Le <strong|congruenze lineari> si risolvono con il MCD e poi con un inverso. Il <strong|teorema cinese> combina informazioni su moduli diversi: con moduli coprimi tutte le coppie di resti sono possibili; nel caso generale serve compatibilità e il periodo è il mcm.

<\verifica|8>
<strong|1.> Trova l'inverso di 5 modulo 12 e risolvi <math|8x≡4<pmod|12>>. Distingui la classe nel modulo ridotto dalle classi nel modulo iniziale.

<strong|2.> Risolvi <math|x≡2<pmod|6>>, <math|x≡5<pmod|9>>. Che cosa accade se il secondo resto diventa 4? Comincia controllando la compatibilità.
</verifica>

