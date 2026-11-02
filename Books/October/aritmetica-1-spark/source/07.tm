<chapter|Congruenze e classi>

<\inbreve>
Con le diofantee cercavamo interi precisi. Ora impariamo a conservare soltanto l'informazione che ci interessa: il resto di una divisione. Dalle congruenze arriveremo alle classi, nuovi oggetti sui quali potremo fare somme e prodotti.
</inbreve>

<section|Congruenze: quando due interi hanno lo stesso resto>

Dividiamo 2, 7, 12 e 17 per 5. I quozienti cambiano, ma il resto è sempre 2. Se il nostro problema riguarda soltanto quel resto, possiamo trattare questi quattro numeri nello stesso modo.

Che cosa hanno in comune? Si ottengono l'uno dall'altro aggiungendo multipli di 5. Per esempio <math|17-2=15=3·5>. Anche <math|-3> appartiene alla stessa famiglia, perché <math|-3=(-1)·5+2>.

<\concetto|Congruenza modulo n>
Fissato un intero <math|n≥1>, diciamo che <math|a> e <math|b> sono <strong|congrui modulo <math|n>> quando hanno lo stesso resto dividendo per <math|n>. Scriviamo <math|a≡b<pmod|n>>. Il numero <math|n> si chiama <strong|modulo>.

La forma più utile per ragionare è:

<\equation*>
a≡b<pmod|n><space|1em>⇔<space|1em>n∣(a-b).
</equation*>
</concetto>

Se i resti sono uguali, sottrarre le divisioni elimina il resto e lascia un multiplo di <math|n>. Viceversa, scrivendo <math|a=q<rsub|1>n+r<rsub|1>> e <math|b=q<rsub|2>n+r<rsub|2>>, se <math|n∣(a-b)> allora <math|n∣(r<rsub|1>-r<rsub|2>)>. La differenza dei resti ha valore assoluto minore di <math|n>: deve essere zero. Questa è la stessa idea usata nell'unicità della divisione euclidea.

<strong|Una congruenza conserva un'informazione precisa, non tutte le informazioni.> Scrivere <math|17≡2<pmod|5>> non significa <math|17=2>. Significa che dividendo per 5 non distinguiamo i loro resti.

<section|Classi di congruenza: una famiglia diventa un oggetto>

Raccogliamo tutti gli interi che hanno resto 2 modulo 5:

<\equation*>
[2]<rsub|5>=<around|{|…,-8,-3,2,7,12,17,…|}>.
</equation*>

Questo insieme è la <strong|classe di congruenza> di 2 modulo 5. Possiamo indicarlo anche con <math|[7]<rsub|5>> o <math|[17]<rsub|5>>: la famiglia è la stessa. Ciascuno di questi numeri è un <strong|rappresentante> della classe.

<\concetto|Classe di congruenza>
La classe di <math|a> modulo <math|n> raccoglie tutti gli interi congrui ad <math|a>:

<\equation*>
[a]<rsub|n>=<around|{|a+kn:k∈ℤ|}>.
</equation*>
</concetto>

Per la divisione euclidea ogni intero ha esattamente un resto fra <math|0,1,…,n-1>. Ci sono quindi esattamente <math|n> classi: <math|[0]<rsub|n>,[1]<rsub|n>,…,[n-1]<rsub|n>>. Il loro insieme si scrive <math|ℤ/nℤ>.

<figura|@IMG(spirale5,0.85)|Gli interi sullo stesso raggio hanno lo stesso resto modulo 5. Ogni raggio rappresenta una classe; cambiare il numero lungo quel raggio cambia il rappresentante, non la classe.>

La distinzione da conservare è questa: <math|2> è un intero, <math|[2]<rsub|5>> è un insieme di interi, <math|ℤ/5ℤ> è l'insieme delle cinque classi. Ogni classe contiene infiniti interi, ma il numero di classi è finito. Modulo 1 c'è una sola classe, perché tutti gli interi hanno resto 0.

<section|Relazioni di equivalenza: l'idea generale dietro le classi>

Il passaggio appena compiuto si può ripetere anche quando non ci sono resti. Scegliamo una relazione che dica quando due oggetti vengono considerati equivalenti per lo scopo che ci interessa.

Una relazione <math|∼> su un insieme <math|X> è una <strong|relazione di equivalenza> se soddisfa tre proprietà: ogni elemento è equivalente a sé stesso (<strong|riflessività>); se <math|x∼y>, allora <math|y∼x> (<strong|simmetria>); se <math|x∼y> e <math|y∼z>, allora <math|x∼z> (<strong|transitività>).

La congruenza le soddisfa: <math|a-a=0>; cambiare segno a un multiplo lascia un multiplo; sommare <math|a-b> e <math|b-c> dà <math|a-c>. La definizione tramite divisibilità rende quindi verificabili tutte e tre le proprietà.

La classe <math|[x]> raccoglie tutti gli elementi equivalenti a <math|x>. Perché queste classi non si sovrappongono in modo confuso? Se <math|z> appartiene sia a <math|[x]> sia a <math|[y]>, abbiamo <math|x∼z> e <math|z∼y>, dunque <math|x∼y>. Ogni elemento equivalente a <math|x> è allora equivalente a <math|y>, e viceversa. Le classi coincidono.

Quindi <strong|due classi o coincidono o sono disgiunte>. Inoltre ogni elemento appartiene alla propria classe. Le classi formano così una <strong|partizione>: pezzi non vuoti, separati, che coprono tutto l'insieme. Viceversa, una partizione definisce un'equivalenza dicendo che due elementi sono equivalenti quando stanno nello stesso pezzo.

L'insieme delle classi si chiama <strong|insieme quoziente> e si scrive <math|X/∼>. La funzione <math|x↦[x]> si chiama <strong|proiezione canonica>: manda ogni oggetto nella sua classe.

<section|Fare somme e prodotti con le classi>

Vogliamo poter calcolare usando soltanto le classi. Modulo 5, per esempio, sommare la classe di 7 e quella di 9 dovrebbe dare la classe di <math|7+9=16>, cioè la classe di 1.

Definiamo perciò

<\equation*>
[a]<rsub|n>+[b]<rsub|n>=[a+b]<rsub|n>,<space|2em>[a]<rsub|n>[b]<rsub|n>=[ab]<rsub|n>.
</equation*>

Ma potevamo scegliere 2 al posto di 7 e 4 al posto di 9. La somma sarebbe 6 anziché 16. Va bene, perché 6 e 16 appartengono alla stessa classe modulo 5. È la <em|classe del risultato> che deve rimanere uguale.

<\anatomia|Buona definizione: la scelta del nome non deve cambiare l'oggetto>
Una formula che usa rappresentanti definisce un'operazione sulle classi soltanto se cambiarli non cambia la classe del risultato. Questa proprietà si chiama <strong|buona definizione>.

Supponiamo <math|a≡a'<pmod|n>> e <math|b≡b'<pmod|n>>. La differenza fra le due somme è <math|(a-a')+(b-b')>: è multipla di <math|n>, quindi le somme sono congrue.

Per i prodotti cerchiamo di far comparire le differenze che conosciamo. Aggiungiamo e sottraiamo <math|a'b>:

<\equation*>
ab-a'b'=(a-a')b+a'(b-b').
</equation*>

Ogni addendo è multiplo di <math|n>. Anche i prodotti appartengono dunque alla stessa classe. Le due operazioni sono ben definite.
</anatomia>

Questo controllo giustifica una regola pratica: <strong|possiamo ridurre i numeri prima di sommarli o moltiplicarli>. Per esempio,

<\equation*>
85·38≡1·3=3<pmod|7>.
</equation*>

Vale anche per le potenze intere non negative, che sono prodotti ripetuti. Dato che <math|2<rsup|5>=32≡-1<pmod|33>>, segue <math|2<rsup|10>≡(-1)<rsup|2>=1<pmod|33>>.

<subsection|Un'applicazione: i criteri di divisibilità>

Il numero 345 significa <math|3·10<rsup|2>+4·10+5>. Modulo 3 e modulo 9 vale <math|10≡1>, quindi ogni potenza di 10 può essere sostituita con 1: il numero ha lo stesso resto della somma delle sue cifre. Perciò 345 è divisibile per 3, dato che <math|3+4+5=12> lo è, ma non per 9.

Modulo 11, invece, <math|10≡-1>. Le potenze di 10 alternano 1 e <math|-1>: il criterio usa la somma delle cifre a segni alterni. Per 345 otteniamo <math|3-4+5=4>, dunque non è divisibile per 11. Gli stessi ragionamenti funzionano con qualsiasi numero di cifre.

<section|Per proseguire: anche i razionali sono classi>

Le scritture <math|1/2>, <math|2/4> e <math|3/6> rappresentano lo stesso razionale. Possiamo interpretarle come coppie diverse <math|(1,2),(2,4),(3,6)> e identificarle con la relazione

<\equation*>
(a,b)∼(c,d)<space|1em>⇔<space|1em>ad=bc,<space|2em>b,d≠0.
</equation*>

È un'equivalenza. Riflessività e simmetria seguono dall'uguaglianza. Per la transitività, da <math|ad=bc> e <math|cf=de> otteniamo <math|adf=bcf=bde>; cancellando il denominatore non nullo <math|d>, resta <math|af=be>.

<figura|@IMG(frazioni,0.9)|Il punto di coordinate <math|(b,a)> rappresenta la frazione <math|a/b>. Le coppie equivalenti stanno sulla stessa retta per l'origine; consideriamo soltanto i punti con <math|b≠0>.>

Un razionale è una classe di queste coppie. Le operazioni usuali diventano

<\equation*>
[(a,b)]+[(c,d)]=[(ad+bc,bd)],
</equation*>

<\equation*>
[(a,b)][(c,d)]=[(ac,bd)].
</equation*>

Anche qui occorre la buona definizione. Se <math|ab'=a'b> e <math|cd'=c'd>, allora <math|acb'd'=a'c'bd>: i prodotti rappresentano la stessa frazione. Per la somma, sviluppando e usando le stesse due uguaglianze otteniamo <math|(ad+bc)b'd'=(a'd'+b'c')bd>. Anche la somma è indipendente dai rappresentanti.

Una regola come «prendi il numeratore», invece, non è una funzione sui razionali: darebbe 1 usando <math|1/2> e 2 usando <math|2/4>. Lo stesso oggetto avrebbe due immagini diverse.

<subsection|In sintesi>

Una <strong|congruenza> confronta i resti. Una <strong|classe> raccoglie gli interi con lo stesso resto; un <strong|quoziente> raccoglie le classi. La <strong|buona definizione> permette di calcolare con questi nuovi oggetti senza dipendere dal rappresentante scelto. Nel prossimo capitolo useremo questi calcoli per risolvere equazioni modulari.

<\verifica|7>
<strong|1.> Scrivi tre rappresentanti diversi di <math|[-2]<rsub|7>>, scegliendo anche il resto fra 0 e 6. Calcola poi <math|[12]<rsub|7>+[17]<rsub|7>> e <math|[12]<rsub|7>[17]<rsub|7>>.

<strong|2.> Modulo 5, la regola «alla classe di <math|a> associa la classe di <math|a+1>» è ben definita? E la regola «alla classe di <math|a> associa l'intero <math|a+1>»? Spiega la differenza.
</verifica>

