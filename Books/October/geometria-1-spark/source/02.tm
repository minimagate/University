<chapter|Numeri complessi: operazioni, forma polare e radici>

<\inbreve>
Come possiamo risolvere un'equazione come <math|z<rsup|2>=-1>? Costruiamo i numeri complessi a partire da coppie reali. Impareremo poi a leggere prodotti e radici nel piano.
</inbreve>

<section|Da una coppia reale a un numero complesso>

Un numero complesso è una coppia di reali <math|(a,b)>, scritta <math|a+ib>. Si pone <math|i=(0,1)> e si identifica il reale <math|a> con <math|(a,0)>.

Le parti <strong|reale> e <strong|immaginaria> sono rispettivamente <math|a> e <math|b>; la parte immaginaria è dunque un numero reale, senza il fattore <math|i>. Due complessi sono uguali quando coincidono entrambe le parti.

Per sommare, operiamo separatamente sulle due componenti:

<\equation*>
(a+ib)+(c+id)=(a+c)+i(b+d).
</equation*>

Per moltiplicare vogliamo poter sviluppare le parentesi e sostituire <math|i<rsup|2>> con <math|-1>. Questo suggerisce la definizione

<\equation*>
(a+ib)(c+id)=(ac-bd)+i(ad+bc).
</equation*>

La definizione usa solo operazioni reali e produce ancora una coppia reale. Con <math|a=c=0> e <math|b=d=1> dà proprio <math|i<rsup|2>=-1>. Per esempio,

<\equation*>
(2+i)+(3-2i)=5-i,
</equation*>

<\equation*>
(2+i)(3-2i)=6-4i+3i-2i<rsup|2>=8-i.
</equation*>

Le operazioni coincidono con quelle usuali quando <math|b=d=0>, perciò possiamo considerare <math|ℝ> dentro <math|ℂ>. La somma ha zero <math|0+i0> e opposto <math|-a-ib>; il prodotto ha unità <math|1+i0>. Associatività e commutatività della somma si verificano sulle singole componenti reali.

Anche il prodotto è commutativo: scambiando le due coppie, <math|ac-bd> e <math|ad+bc> rimangono uguali.

Per l'associatività, prendiamo un terzo numero <math|e+if>. Sviluppando sia <math|((a+ib)(c+id))(e+if)> sia <math|(a+ib)((c+id)(e+if))> si trovano la stessa parte reale <math|ace-bde-adf-bcf> e la stessa parte immaginaria <math|acf-bdf+ade+bce>.

La distributività si verifica sviluppando il prodotto con una somma: ogni componente si distribuisce con le regole reali. Resta da costruire l'inverso di ogni complesso non nullo.

<section|Modulo e coniugato: costruire l'inverso>

Rappresentiamo <math|z=a+ib> come punto <math|(a,b)> del piano. La distanza dall'origine è il <strong|modulo>:

<\equation*>
\|z\|=<sqrt|a<rsup|2>+b<rsup|2>>.
</equation*>

È un reale non negativo. È zero soltanto per <math|z=0>, perché una somma di quadrati reali può essere zero solo se entrambi sono nulli. Sui numeri reali il modulo coincide con il valore assoluto.

Il <strong|coniugato> <math|<wide|z|\<bar\>>=a-ib> è il punto riflesso rispetto all'asse reale. Coniugare due volte restituisce <math|z>; inoltre <math|z=<wide|z|\<bar\>>> esattamente quando <math|b=0>, cioè quando <math|z> è reale.

Il coniugio rispetta somme e prodotti:

<\equation*>
<wide|z+w|\<bar\>>=<wide|z|\<bar\>>+<wide|w|\<bar\>>,<space|2em><wide|zw|\<bar\>>=<wide|z|\<bar\>><wide|w|\<bar\>>.
</equation*>

Per la somma, entrambi i membri sono <math|(a+c)-i(b+d)>. Per il prodotto, entrambi sono <math|(ac-bd)-i(ad+bc)>: basta applicare le due definizioni. La combinazione più utile è

<\equation*>
z<wide|z|\<bar\>>=(a+ib)(a-ib)=a<rsup|2>+b<rsup|2>=\|z\|<rsup|2>.
</equation*>

I termini immaginari si cancellano. Se vogliamo ottenere 1, questo prodotto ci porta già a un numero reale positivo: basta dividere il coniugato per quel numero.

<\concetto|Inverso complesso>
Per <math|z≠0>,

<\equation*>
z<rsup|-1>=<frac|<wide|z|\<bar\>>|\|z\|<rsup|2>>=<frac|a-ib|a<rsup|2>+b<rsup|2>>.
</equation*>

Moltiplicando per <math|z> otteniamo <math|\|z\|<rsup|2>/\|z\|<rsup|2>=1>. Il denominatore è non nullo proprio perché <math|z≠0>. Questo completa la verifica che <math|ℂ> è un campo.
</concetto>

Per dividere <math|3-2i> per <math|1-i>, moltiplichiamo per l'inverso del denominatore, cioè <math|(1+i)/2>:

<\equation*>
<frac|3-2i|1-i>=<frac|(3-2i)(1+i)|2>=<frac|3+i-2i<rsup|2>|2>=<frac|5+i|2>.
</equation*>

Il controllo consiste nel moltiplicare il risultato per <math|1-i>: ritroviamo <math|3-2i>.

<section|Forma polare e significato del prodotto>

Per indicare un punto diverso dall'origine possiamo dare la distanza <math|ρ=\|z\|> e un angolo <math|θ> dal semiasse reale positivo, misurato in senso antiorario. L'angolo si chiama <strong|argomento>. Le coordinate del punto sono <math|a=ρcosθ> e <math|b=ρsinθ>, quindi

<\equation*>
z=ρ(cosθ+i·sinθ).
</equation*>

Angoli che differiscono di <math|2kπ>, con <math|k∈ℤ>, rappresentano lo stesso punto. L'argomento di zero non è definito: il punto nell'origine non sceglie alcuna direzione.

<figura|@IMG(piano-complesso)|Lo stesso numero si descrive con due coordinate oppure con modulo e argomento. Il coniugato cambia il segno della coordinata verticale.>

Per <math|z=-1-i>, il modulo è <math|<sqrt|2>>. Le due coordinate sono negative, dunque scegliamo <math|θ=5π/4>, oppure <math|-3π/4>. La sola uguaglianza <math|tanθ=b/a=1> non distinguerebbe questo punto da <math|1+i>, che ha argomento <math|π/4>.

Se usiamo <math|arctan(b/a)> dobbiamo controllare il quadrante; se <math|a=0> usiamo direttamente <math|π/2> per <math|b›0> e <math|-π/2> per <math|b‹0>.

Per ricavare la formula supponiamo <math|z,w≠0>, così <math|ρ,λ›0>. Scriviamo ora <math|w=λ(cosφ+i·sinφ)>.

Applicando la definizione del prodotto, la parte reale di <math|zw/(ρλ)> è <math|cosθcosφ-sinθsinφ>; quella immaginaria è <math|cosθsinφ+sinθcosφ>.

Le formule di addizione della trigonometria riconoscono queste espressioni come <math|cos(θ+φ)> e <math|sin(θ+φ)>. Perciò

<\equation*>
zw=ρλ(cos(θ+φ)+i·sin(θ+φ)).
</equation*>

<strong|I moduli si moltiplicano, gli angoli si sommano.> In particolare <math|\|zw\|=\|z\|\|w\|>, anche quando un fattore è zero. Moltiplicare per <math|i> ruota di <math|π/2> senza cambiare lunghezza; moltiplicare per 2 raddoppia la lunghezza senza ruotare.

Ripetendo il prodotto <math|n> volte, con <math|n≥1> intero, otteniamo la <strong|formula di De Moivre>:

<\equation*>
z<rsup|n>=ρ<rsup|n>(cos(nθ)+i·sin(nθ)).
</equation*>

La giustificazione è anche una piccola induzione: la formula vale per <math|n=1>; moltiplicando il caso <math|n> per <math|z> si moltiplica il modulo per <math|ρ> e si aggiunge un altro <math|θ>.

Talvolta scriveremo <math|e<rsup|iθ>> come abbreviazione di <math|cosθ+i·sinθ>; qui questa notazione non richiede di studiare la funzione esponenziale complessa.

<section|Radici ennesime: perché sono più di una?>

Cerchiamo prima le soluzioni di <math|z<rsup|3>=-8>. Il modulo deve soddisfare <math|ρ<rsup|3>=8>, quindi <math|ρ=2>. Un argomento di <math|-8> è <math|π>, ma possiamo usare anche <math|π+2kπ>. Perciò l'angolo di una radice deve soddisfare <math|3θ=π+2kπ>:

<\equation*>
θ=<frac|π|3>+<frac|2kπ|3>.
</equation*>

Per <math|k=0,1,2> troviamo <math|π/3,π,5π/3>. Da <math|k=3> in poi ripassiamo sugli stessi angoli, perché abbiamo aggiunto un giro completo. Le soluzioni sono

<\equation*>
1+i<sqrt|3>,<space|2em>-2,<space|2em>1-i<sqrt|3>.
</equation*>

Il passaggio decisivo è avere conservato <math|2kπ> <em|prima> di dividere per 3: quel giro completo diventa un terzo di giro e produce radici diverse.

<\concetto|Radici ennesime di un complesso>
Sia <math|n≥1> intero. Se <math|w=R(cosφ+i·sinφ)≠0>, tutte le soluzioni di <math|z<rsup|n>=w> sono

<\equation*>
z<rsub|k>=<sqrt|R|n><around*|(|cos<around*|(|<frac|φ+2kπ|n>|)>+i·sin<around*|(|<frac|φ+2kπ|n>|)>|)>,
</equation*>

con <math|k=0,…,n-1>. Sono <math|n> soluzioni distinte, equidistanti in angolo sulla circonferenza di raggio <math|<sqrt|R|n>>. Se <math|w=0>, l'unica soluzione è <math|z=0>.
</concetto>

La formula si ricava confrontando il modulo e l'angolo nella formula di De Moivre, come abbiamo appena fatto.

Due indici fra 0 e <math|n-1> danno lo stesso punto solo se la loro differenza è multipla di <math|n>, e quindi solo se sono uguali. Ogni indice intero si riporta a uno di questi sottraendo multipli di <math|n>: la lista è completa.

Per <math|w=1> otteniamo le <strong|radici dell'unità>, con modulo 1 e angoli <math|2kπ/n>.

Le radici seste hanno angoli <math|0,π/3,2π/3,π,4π/3,5π/3>. I loro valori sono <math|1,-1> e i quattro numeri <math|±1/2±i<sqrt|3>/2>, scegliendo indipendentemente i due segni.

<figura|@IMG(radici)|A sinistra le radici cubiche di <math|-8>; a destra le radici seste di 1. Scelta la prima radice, troviamo le altre avanzando di <math|2π/n>.>

Se conosciamo una radice <math|z<rsub|0>> di un complesso non nullo, otteniamo tutte le altre moltiplicandola per le radici ennesime dell'unità: il prodotto ha la stessa potenza, perché <math|(z<rsub|0>u)<rsup|n>=z<rsub|0><rsup|n>u<rsup|n>=w>. La formula polare mostra che queste sono tutte le possibilità.

<\verifica|2>
<strong|2.1.> Calcola <math|(2+i)/(1+i)> e verifica il risultato moltiplicando per il denominatore.

<strong|2.2.> Trova tutte le soluzioni di <math|z<rsup|4>=1>. Poi trova quelle di <math|z<rsup|4>=-1>: spiega quale rotazione trasforma la prima figura nella seconda.
</verifica>
