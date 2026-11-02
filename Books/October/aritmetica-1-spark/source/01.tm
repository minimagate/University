<chapter|Il linguaggio matematico e l'induzione>

<\inbreve>
Possiamo controllare una formula su dieci numeri, o su mille, e restare comunque con il dubbio che il milleunesimo la smentisca. In questo capitolo vediamo come una dimostrazione riesce a parlare di tutti i numeri insieme. Lo strumento principale è l'induzione, che collega ogni caso al successivo e che ci accompagnerà per tutto il libro.
</inbreve>

<section|Insiemi ed enunciati: che cosa stiamo dicendo?>

Prima di dimostrare qualcosa conviene mettersi d'accordo sulle parole. Un <strong|insieme> è una raccolta di oggetti, che chiamiamo i suoi <strong|elementi>. Per esempio <math|A=<around|{|1,3,5|}>> contiene tre numeri. Scriviamo <math|3∈A> per dire che 3 appartiene ad <math|A>, e <math|2∉A> per dire che 2 non vi appartiene. L'insieme senza elementi si chiama insieme vuoto e si indica con <math|∅>.

Gli insiemi che useremo più spesso sono i naturali <math|ℕ=<around|{|0,1,2,…|}>>, gli interi <math|ℤ=<around|{|…,-2,-1,0,1,2,…|}>> e i razionali <math|ℚ>, cioè le frazioni di interi con denominatore diverso da zero. Sapere dove cerchiamo un numero fa già parte del problema. L'equazione <math|2x=1> ha la soluzione razionale <math|x=1/2>, ma fra gli interi non ha soluzioni.

Quando ogni elemento di <math|A> appartiene anche a <math|B> diciamo che <math|A> è un <strong|sottoinsieme> di <math|B> e scriviamo <math|A⊆B>. Da due insiemi possiamo poi costruirne altri. L'unione <math|A∪B> raccoglie gli elementi che stanno in almeno uno dei due, l'intersezione <math|A∩B> quelli che stanno in entrambi, e la differenza <math|A∖B> quelli di <math|A> che non stanno in <math|B>.

Due insiemi sono uguali quando hanno esattamente gli stessi elementi. Per dimostrare <math|A=B> facciamo quindi due lavori separati, mostrando prima che ogni elemento di <math|A> sta in <math|B> e poi che ogni elemento di <math|B> sta in <math|A>. Sono le cosiddette <strong|due inclusioni>, e le useremo spesso.

<subsection|Esempi e dimostrazioni>

Un <strong|enunciato> è una frase matematica di cui ha senso chiedersi se sia vera. Prendiamo «ogni intero pari ha quadrato pari». La parola <em|ogni> pesa moltissimo, perché la frase parla di tutti gli interi pari, che sono infiniti. Controllare che <math|2<rsup|2>=4> e <math|4<rsup|2>=16> sono pari ci incoraggia, ma lascia aperti tutti gli altri casi.

Una dimostrazione lavora invece con un intero pari qualsiasi, senza sceglierlo. Se <math|n> è pari possiamo scriverlo come <math|n=2k> con <math|k∈ℤ>, e allora <math|n<rsup|2>=4k<rsup|2>=2(2k<rsup|2>)>, che è pari. Il conto non dipende da quale <math|k> abbiamo in mente, e per questo vale per tutti.

Per abbreviare useremo il simbolo <math|∀>, che si legge «per ogni», e il simbolo <math|∃>, che si legge «esiste». Le due parole chiedono prove molto diverse. Per mostrare che <em|esiste> un intero con una certa proprietà basta trovarne uno, mentre per mostrare che <em|ogni> intero la possiede serve un ragionamento generale. Al contrario, per smentire «ogni intero è pari» basta un solo <strong|controesempio>, come 3.

Molti enunciati hanno la forma «se <math|P>, allora <math|Q>», che scriviamo <math|P⇒Q>. La parte <math|P> si chiama <strong|ipotesi> e la parte <math|Q> <strong|tesi>, e dimostrare l'enunciato vuol dire partire dall'ipotesi e arrivare alla tesi. La forma «<math|P> se e solo se <math|Q>», scritta <math|P⇔Q>, chiede di percorrere entrambe le strade, da <math|P> a <math|Q> e da <math|Q> a <math|P>. Infine «esiste un unico» chiede due cose distinte, cioè trovare un oggetto con la proprietà e mostrare che non ce ne sono altri.

<section|Induzione: passare da un caso al successivo>

Proviamo a sommare i primi numeri dispari e guardiamo che cosa succede:

<\equation*>
1=1,
<space|2em>1+3=4,
<space|2em>1+3+5=9,
<space|2em>1+3+5+7=16.
</equation*>

Escono sempre quadrati, e un disegno ci suggerisce perché. Un quadrato di lato <math|n> diventa un quadrato di lato <math|n+1> se gli aggiungiamo una cornice a forma di L, e quella cornice contiene <math|2n+1> quadratini, cioè proprio il dispari successivo.

<figura|@IMG(dispari)|Ogni nuova cornice aggiunge il dispari successivo. Dopo le prime <math|n> cornici, i quadratini formano un quadrato di lato <math|n>.>

Viene allora da congetturare che

<\equation*>
1+3+5+⋯+(2n-1)=n<rsup|2><space|2em>(n≥1).
</equation*>

Il disegno contiene anche l'idea della dimostrazione. La somma con <math|n+1> addendi è la somma con <math|n> addendi più il numero <math|2n+1>. Se sappiamo già quanto vale il caso <math|n>, il caso <math|n+1> si ottiene con un passo solo. Questa idea ha un nome preciso.

<\concetto|Principio di induzione>
Per dimostrare una proprietà <math|P(n)> per ogni naturale <math|n≥n<rsub|0>>, basta verificare la <strong|base> <math|P(n<rsub|0>)> e dimostrare il <strong|passo>: per ogni <math|n≥n<rsub|0>>, se vale <math|P(n)> allora vale <math|P(n+1)>.
</concetto>

Possiamo immaginare una fila di tessere del domino. La base fa cadere la prima, e il passo garantisce che ogni tessera che cade fa cadere la successiva, così prima o poi cadono tutte. Nel passo non sappiamo ancora che <math|P(n)> sia vera, la supponiamo soltanto per vedere se ne segue <math|P(n+1)>. Questa supposizione si chiama <strong|ipotesi induttiva>.

<\anatomia|La somma dei dispari>
Vogliamo la formula per ogni <math|n≥1>, quindi la base è <math|n=1>. In quel caso la somma contiene il solo 1, che è uguale a <math|1<rsup|2>>.

Per il passo supponiamo che la somma dei primi <math|n> dispari valga <math|n<rsup|2>> e guardiamo la somma dei primi <math|n+1>. Per poter usare quello che sappiamo, separiamo l'ultimo addendo dagli altri:

<\equation*>
1+3+⋯+(2n-1)+(2n+1)=n<rsup|2>+(2n+1).
</equation*>

Il membro destro è <math|(n+1)<rsup|2>>, che è esattamente ciò che volevamo. La formula passa quindi da ogni <math|n> al successivo, e per induzione vale per tutti gli <math|n≥1>.

La mossa da ricordare è la prima. Nel problema nuovo abbiamo cercato un pezzo che coincidesse con il problema già risolto, e qui l'abbiamo trovato staccando l'ultimo addendo.
</anatomia>

Vale la pena notare l'ordine in cui sono andate le cose. La formula ci è venuta in mente guardando gli esempi e il disegno, e soltanto dopo l'induzione ci ha permesso di <em|verificarla>. Scoprire una congettura e dimostrarla sono due momenti diversi del lavoro, e l'induzione aiuta solo nel secondo.

<\attenzione|La base e il passo devono combaciare>
La proprietà «<math|n≥5>» passa da ogni <math|n> al successivo, eppure non vale per tutti i naturali, perché per 0 è falsa e manca quindi una base. È vera soltanto da 5 in poi. Allo stesso modo bisogna controllare che il passo funzioni già a partire dalla base scelta: se la dimostrazione del passo vale solo da 2 in poi, nessuno ci porta dal caso 1 al caso 2.
</attenzione>

<section|Il principio del minimo e il più piccolo controesempio>

Scegliamo alcuni naturali, per esempio <math|S=<around|{|4,7,10,…|}>>. Fra quelli scelti ce n'è sempre uno che viene prima di tutti gli altri, che qui è 4. Il <strong|principio del minimo> dice che succede sempre, cioè che ogni sottoinsieme non vuoto di <math|ℕ> ha un elemento minimo.

Sembra ovvio, ma è una proprietà tipica dei naturali. Gli interi, presi tutti insieme, non hanno un minimo, perché da ogni intero possiamo scendere di uno. Nemmeno i numeri reali positivi, quelli che sulla retta stanno a destra dello zero, hanno un minimo, perché la metà di un numero positivo è ancora positiva ed è più piccola.

Il minimo ci aiuta a capire perché l'induzione funziona davvero. Supponiamo di aver dimostrato base e passo, ma che qualche caso sia comunque falso. Fra gli indici falsi scegliamo il più piccolo, che chiamiamo <math|m>. Non può essere la base, perché quella l'abbiamo controllata, e allora esiste il caso precedente <math|m-1>. Quel caso è vero, altrimenti <math|m> non sarebbe il primo falso, e il passo ci porta da <math|P(m-1)> a <math|P(m)>. Così <math|P(m)> risulterebbe insieme vera e falsa, il che è impossibile, e quindi casi falsi non ce ne sono.

Abbiamo appena ragionato <strong|per assurdo>, cioè abbiamo supposto che la conclusione fosse falsa e abbiamo mostrato che questa supposizione contraddice ciò che sappiamo. La scelta del <strong|minimo controesempio> ci ha regalato un'informazione in più, perché sapevamo che tutti i casi più piccoli funzionavano.

Anche il percorso inverso è possibile, e dall'induzione si ricava il principio del minimo. Prendiamo un insieme <math|S⊆ℕ> senza minimo. Lo 0 non può stare in <math|S>, perché ne sarebbe il minimo. Se poi nessun numero da 0 a <math|n> sta in <math|S>, nemmeno <math|n+1> può starci, per lo stesso motivo. Per induzione sulla frase «nessun numero da 0 a <math|n> sta in <math|S>» concludiamo che <math|S> è vuoto, e dunque ogni insieme non vuoto di naturali ha un minimo.

<section|Induzione forte: usare tutti i casi precedenti>

Ci sono problemi in cui il caso nuovo non dipende dal precedente, ma da casi più piccoli qualsiasi. Per scomporre 12 possiamo scrivere <math|12=3·4>, e a quel punto ci servono informazioni su 3 e su 4, mentre di 11 non ci importa nulla.

In queste situazioni usiamo l'<strong|induzione forte>. Verifichiamo la base come prima, ma nel passo, per dimostrare <math|P(n)>, ci concediamo di supporre vere tutte le proprietà <math|P(k)> con <math|n<rsub|0>≤k‹n>, e non soltanto l'ultima.

Vediamola all'opera su un risultato importante, il fatto che ogni intero <math|n≥2> sia un prodotto di numeri primi. Ricordiamo prima le parole. Un numero <math|d> <strong|divide> <math|n> se <math|n=dk> per qualche intero <math|k>. Un naturale <math|p≥2> è <strong|primo> se i suoi soli divisori positivi sono 1 e <math|p>, e un numero <math|n≥2> che non è primo si dice <strong|composto>, perché si può scrivere come <math|n=ab> con <math|2≤a,b‹n>.

La base è 2, che è già primo. Supponiamo ora di saper scomporre tutti i numeri da 2 a <math|n-1> e guardiamo <math|n>. Se <math|n> è primo non c'è nulla da fare, perché è già un prodotto con un solo fattore. Se invece è composto, lo scriviamo come <math|n=ab>. Entrambi i fattori sono più piccoli di <math|n>, quindi per ipotesi sappiamo scomporli in primi, e mettendo insieme le due scomposizioni otteniamo quella di <math|n>.

<figura|@IMG(fattori)|Un numero composto si divide in fattori più piccoli. Il ragionamento di induzione forte assicura che la scomposizione possa arrivare fino ai primi.>

Per ora sappiamo soltanto che una scomposizione esiste. Che sia anche <em|unica>, qualunque strada si scelga all'inizio, è una questione più delicata, e la risolveremo nel capitolo 5 con il lemma di Euclide.

L'induzione forte non è in realtà un principio nuovo. Si ottiene da quella ordinaria applicandola alla frase «tutti i casi fino a <math|n> sono veri», che porta con sé tutte le informazioni accumulate. Spesso la difficoltà di una dimostrazione per induzione sta proprio nello scegliere bene la frase da far passare da un caso all'altro.

<subsection|In sintesi>

Una dimostrazione chiarisce dove lavoriamo, che cosa supponiamo e che cosa vogliamo ottenere. L'induzione collega una base a un passo generale, e nella forma forte ci lascia usare tutti i casi precedenti. Il principio del minimo ci permette di ragionare sul primo caso che eventualmente fallisce. Sono gli strumenti con cui dimostreremo formule e spiegheremo perché certi procedimenti finiscono.

<\verifica|1>
<strong|1. Con un suggerimento.> Dimostra per induzione che <math|1+2+⋯+n=n(n+1)/2> per ogni <math|n≥1>. Nel passo, separa l'addendo <math|n+1> e raccogli il fattore comune <math|n+1>.

<strong|2. In autonomia.> Un ragionamento afferma: «Il primo numero naturale è pari. Se <math|n> è pari, anche <math|n+2> è pari. Quindi tutti i naturali sono pari». Quali numeri raggiunge davvero il ragionamento? Spiega quale passaggio manca per applicare l'induzione a tutti i naturali.
</verifica>
