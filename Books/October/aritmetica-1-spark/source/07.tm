<chapter|Congruenze e classi>

<\inbreve>
Che giorno della settimana sarà fra cento giorni? Per rispondere non serve sapere quante settimane passeranno, basta il resto della divisione per sette. Le congruenze nascono da questa idea di tenere soltanto il resto e dimenticare il resto dell'informazione. Raccogliendo i numeri con lo stesso resto otterremo nuovi oggetti, le classi, con cui potremo fare somme e prodotti.
</inbreve>

<section|Congruenze: quando due interi hanno lo stesso resto>

Dividiamo per 5 i numeri 2, 7, 12 e 17. I quozienti sono tutti diversi, ma il resto è sempre 2. Se il problema che stiamo studiando dipende soltanto da quel resto, questi quattro numeri si comportano allo stesso modo, e possiamo smettere di distinguerli.

Quello che li accomuna è che si passa dall'uno all'altro aggiungendo multipli di 5, come in <math|17-2=15=3·5>. Della stessa famiglia fa parte anche <math|-3>, perché <math|-3=(-1)·5+2>.

<\concetto|Congruenza modulo n>
Fissato un intero <math|n≥1>, diciamo che <math|a> e <math|b> sono <strong|congrui modulo <math|n>> quando hanno lo stesso resto dividendo per <math|n>. Scriviamo <math|a≡b<pmod|n>>. Il numero <math|n> si chiama <strong|modulo>.

La forma più utile per ragionare è:

<\equation*>
a≡b<pmod|n><space|1em>⇔<space|1em>n∣(a-b).
</equation*>
</concetto>

Le due descrizioni dicono la stessa cosa. Se <math|a> e <math|b> hanno lo stesso resto, sottraendo le due divisioni il resto se ne va e resta un multiplo di <math|n>. Viceversa scriviamo <math|a=q<rsub|1>n+r<rsub|1>> e <math|b=q<rsub|2>n+r<rsub|2>>. Se <math|n> divide <math|a-b>, divide anche <math|r<rsub|1>-r<rsub|2>>, ma questa differenza è più piccola di <math|n> in valore assoluto e quindi deve essere zero. È lo stesso argomento che abbiamo usato per l'unicità della divisione euclidea.

Conviene tenere presente che una congruenza ricorda un'informazione precisa, non tutto. Scrivere <math|17≡2<pmod|5>> non vuol dire che 17 e 2 siano uguali, ma soltanto che, se guardiamo i resti nella divisione per 5, non li distinguiamo.

<section|Classi di congruenza: una famiglia diventa un oggetto>

Raccogliamo ora in un unico insieme tutti gli interi che hanno resto 2 modulo 5:

<\equation*>
[2]<rsub|5>=<around|{|…,-8,-3,2,7,12,17,…|}>.
</equation*>

Questo insieme si chiama <strong|classe di congruenza> di 2 modulo 5. Avremmo potuto chiamarlo anche <math|[7]<rsub|5>> o <math|[17]<rsub|5>>, perché la famiglia è la stessa, e ciascuno dei suoi elementi è un <strong|rappresentante> della classe.

<\concetto|Classe di congruenza>
La classe di <math|a> modulo <math|n> raccoglie tutti gli interi congrui ad <math|a>:

<\equation*>
[a]<rsub|n>=<around|{|a+kn:k∈ℤ|}>.
</equation*>
</concetto>

Per la divisione euclidea ogni intero ha esattamente un resto fra <math|0,1,…,n-1>, e quindi le classi sono esattamente <math|n>, cioè <math|[0]<rsub|n>,[1]<rsub|n>,…,[n-1]<rsub|n>>. L'insieme di tutte le classi modulo <math|n> si indica con <math|ℤ/nℤ>.

<figura|@IMG(spirale5,0.85)|Gli interi sullo stesso raggio hanno lo stesso resto modulo 5. Ogni raggio rappresenta una classe; cambiare il numero lungo quel raggio cambia il rappresentante, non la classe.>

Bisogna fare attenzione a tre livelli diversi. Il numero <math|2> è un intero, <math|[2]<rsub|5>> è un insieme infinito di interi, e <math|ℤ/5ℤ> è un insieme che contiene cinque classi. Ogni classe contiene infiniti numeri, ma le classi sono in numero finito. Modulo 1, per esempio, c'è una sola classe, perché tutti gli interi hanno resto 0.

<section|Relazioni di equivalenza: l'idea generale dietro le classi>

Quello che abbiamo fatto con i resti si può fare in molte altre situazioni. Basta avere una regola che dica quando due oggetti vanno considerati equivalenti per lo scopo che ci interessa, purché la regola si comporti in modo ragionevole.

Precisamente, una relazione <math|∼> su un insieme <math|X> è una <strong|relazione di equivalenza> se ha tre proprietà. Ogni elemento è equivalente a sé stesso, e questa è la <strong|riflessività>. Se <math|x∼y> allora anche <math|y∼x>, e questa è la <strong|simmetria>. Infine, se <math|x∼y> e <math|y∼z>, allora <math|x∼z>, e questa è la <strong|transitività>.

La congruenza modulo <math|n> le ha tutte e tre, e la definizione con la divisibilità lo rende facile da vedere. La differenza <math|a-a=0> è un multiplo di <math|n>, cambiando segno a un multiplo si ottiene ancora un multiplo, e sommando <math|a-b> e <math|b-c> si ottiene <math|a-c>.

Data un'equivalenza, la classe <math|[x]> raccoglie tutti gli elementi equivalenti a <math|x>. Le tre proprietà garantiscono che le classi non si sovrappongano in modo confuso. Se un elemento <math|z> sta sia in <math|[x]> sia in <math|[y]>, allora <math|x∼z> e <math|z∼y>, quindi <math|x∼y>, e ogni elemento equivalente a <math|x> lo è anche a <math|y> e viceversa. Le due classi sono allora la stessa.

Abbiamo così scoperto che <strong|due classi o coincidono o sono disgiunte>. Siccome ogni elemento sta nella propria classe, le classi formano una <strong|partizione> dell'insieme, cioè lo dividono in pezzi non vuoti e separati che lo coprono tutto. Vale anche il viceversa, perché ogni partizione definisce un'equivalenza, quella in cui due elementi sono equivalenti quando stanno nello stesso pezzo.

L'insieme delle classi si chiama <strong|insieme quoziente> e si scrive <math|X/∼>, mentre la funzione <math|x↦[x]>, che manda ogni oggetto nella sua classe, si chiama <strong|proiezione canonica>.

<section|Fare somme e prodotti con le classi>

Vorremmo poter fare i conti direttamente con le classi. Modulo 5, sommare la classe di 7 e quella di 9 dovrebbe dare la classe di <math|7+9=16>, che è la classe di 1. Viene naturale definire

<\equation*>
[a]<rsub|n>+[b]<rsub|n>=[a+b]<rsub|n>,<space|2em>[a]<rsub|n>[b]<rsub|n>=[ab]<rsub|n>.
</equation*>

C'è però una questione delicata. La classe di 7 si può chiamare anche classe di 2, e quella di 9 anche classe di 4, e con questi nomi la somma sarebbe 6 invece di 16. Per fortuna 6 e 16 stanno nella stessa classe modulo 5, quindi in questo caso la risposta non cambia. Dobbiamo però essere sicuri che vada sempre così.

<\anatomia|Buona definizione: la scelta del nome non deve cambiare l'oggetto>
Una formula che usa i rappresentanti definisce davvero un'operazione sulle classi soltanto se, cambiando i rappresentanti, la classe del risultato resta la stessa. Questa proprietà si chiama <strong|buona definizione>.

Supponiamo quindi che <math|a≡a'<pmod|n>> e <math|b≡b'<pmod|n>>. La differenza fra le due somme è <math|(a-a')+(b-b')>, che è un multiplo di <math|n>, e quindi le somme sono congrue.

Per i prodotti vogliamo far comparire le differenze <math|a-a'> e <math|b-b'>, che conosciamo. Ci riusciamo aggiungendo e togliendo <math|a'b>:

<\equation*>
ab-a'b'=(a-a')b+a'(b-b').
</equation*>

Entrambi gli addendi sono multipli di <math|n>, e così anche i prodotti stanno nella stessa classe. Le due operazioni sono ben definite.
</anatomia>

Questa verifica ha una conseguenza molto pratica: <strong|possiamo ridurre i numeri prima di sommarli o moltiplicarli>. Per calcolare <math|85·38> modulo 7, per esempio, sostituiamo 85 con il suo resto 1 e 38 con il suo resto 3, e otteniamo

<\equation*>
85·38≡1·3=3<pmod|7>.
</equation*>

Lo stesso vale per le potenze con esponente naturale, che sono prodotti ripetuti. Siccome <math|2<rsup|5>=32≡-1<pmod|33>>, ne segue subito <math|2<rsup|10>≡(-1)<rsup|2>=1<pmod|33>>, senza dover calcolare 1024.

<subsection|Un'applicazione: i criteri di divisibilità>

I criteri di divisibilità imparati a scuola trovano qui una spiegazione. Il numero 345 vuol dire <math|3·10<rsup|2>+4·10+5>. Modulo 3 e modulo 9 abbiamo <math|10≡1>, quindi ogni potenza di 10 si può sostituire con 1, e il numero ha lo stesso resto della somma delle sue cifre. Per questo 345 è divisibile per 3, visto che <math|3+4+5=12> lo è, ma non per 9.

Modulo 11 si ha invece <math|10≡-1>, e le potenze di 10 valgono alternativamente 1 e <math|-1>. Il criterio usa allora la somma delle cifre con segni alterni a partire dalle unità. Per 345 otteniamo <math|5-4+3=4>, quindi 345 non è divisibile per 11. Lo stesso ragionamento funziona per numeri con quante cifre vogliamo.

<section|Per proseguire: anche i razionali sono classi>

Le frazioni <math|1/2>, <math|2/4> e <math|3/6> sono scritte in modo diverso, ma indicano lo stesso numero. Possiamo vederle come coppie diverse <math|(1,2),(2,4),(3,6)> e decidere di identificarle mediante la relazione

<\equation*>
(a,b)∼(c,d)<space|1em>⇔<space|1em>ad=bc,<space|2em>b,d≠0.
</equation*>

Questa è un'equivalenza. Riflessività e simmetria seguono direttamente dalle proprietà dell'uguaglianza. Per la transitività partiamo da <math|ad=bc> e <math|cf=de> e otteniamo <math|adf=bcf=bde>, e siccome <math|d≠0> possiamo semplificarlo e arrivare a <math|af=be>.

<figura|@IMG(frazioni,0.9)|Il punto di coordinate <math|(b,a)> rappresenta la frazione <math|a/b>. Le coppie equivalenti stanno sulla stessa retta per l'origine; consideriamo soltanto i punti con <math|b≠0>.>

Un numero razionale è allora una classe di queste coppie, e le operazioni che conosciamo diventano

<\equation*>
[(a,b)]+[(c,d)]=[(ad+bc,bd)],
</equation*>

<\equation*>
[(a,b)][(c,d)]=[(ac,bd)].
</equation*>

Anche qui va controllata la buona definizione. Supponiamo <math|ab'=a'b> e <math|cd'=c'd>. Moltiplicando le due uguaglianze troviamo <math|acb'd'=a'c'bd>, cioè i due prodotti rappresentano la stessa frazione. Per la somma basta sviluppare e usare le stesse due uguaglianze, e si ottiene <math|(ad+bc)b'd'=(a'd'+b'c')bd>, quindi anche la somma non dipende dai rappresentanti.

Una regola come «prendi il numeratore», invece, non definisce una funzione sui razionali, perché darebbe 1 partendo da <math|1/2> e 2 partendo da <math|2/4>. Lo stesso numero riceverebbe due valori diversi.

<subsection|In sintesi>

Una <strong|congruenza> confronta i resti, una <strong|classe> raccoglie gli interi con lo stesso resto e l'<strong|insieme quoziente> raccoglie le classi. La <strong|buona definizione> ci permette di fare i conti con questi nuovi oggetti senza preoccuparci del rappresentante scelto. Nel prossimo capitolo useremo questi conti per risolvere equazioni modulari.

<\verifica|7>
<strong|1.> Scrivi tre rappresentanti diversi di <math|[-2]<rsub|7>>, scegliendo anche il resto fra 0 e 6. Calcola poi <math|[12]<rsub|7>+[17]<rsub|7>> e <math|[12]<rsub|7>[17]<rsub|7>>.

<strong|2.> Modulo 5, la regola «alla classe di <math|a> associa la classe di <math|a+1>» è ben definita? E la regola «alla classe di <math|a> associa l'intero <math|a+1>»? Spiega la differenza.
</verifica>
