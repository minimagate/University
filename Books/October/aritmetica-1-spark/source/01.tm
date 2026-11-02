<chapter|Il linguaggio matematico e l'induzione>

<\inbreve>
Come possiamo essere sicuri che una proprietà valga per tutti i numeri, anche quelli che non abbiamo controllato? Cominciamo dal significato di una dimostrazione e impariamo l'induzione. Questo sarà il punto di partenza per giustificare molti risultati del libro.
</inbreve>

<section|Insiemi ed enunciati: che cosa stiamo dicendo?>

Un <strong|insieme> raccoglie oggetti che chiamiamo <strong|elementi>. Per esempio <math|A=<around|{|1,3,5|}>>. Scrivere <math|3∈A> significa che 3 appartiene ad <math|A>; scrivere <math|2∉A> significa che 2 non vi appartiene. L'insieme senza elementi si indica con <math|∅>.

Useremo soprattutto i naturali <math|ℕ=<around|{|0,1,2,…|}>>, gli interi <math|ℤ=<around|{|…,-2,-1,0,1,2,…|}>> e i razionali <math|ℚ>, cioè le frazioni di interi con denominatore diverso da zero. Specificare dove cerchiamo un numero fa parte del problema: <math|2x=1> ha una soluzione razionale, <math|x=1/2>, ma nessuna soluzione intera.

Se ogni elemento di <math|A> appartiene anche a <math|B>, scriviamo <math|A⊆B>: <math|A> è un <strong|sottoinsieme> di <math|B>. L'unione <math|A∪B> contiene gli elementi che stanno in almeno uno dei due insiemi; l'intersezione <math|A∩B> quelli comuni; la differenza <math|A∖B> quelli di <math|A> che non stanno in <math|B>.

Due insiemi sono uguali quando hanno esattamente gli stessi elementi. Per dimostrare <math|A=B> possiamo quindi fare due lavori: mostrare che ogni elemento di <math|A> sta in <math|B>, poi che ogni elemento di <math|B> sta in <math|A>. Sono le <strong|due inclusioni>.

Un <strong|enunciato> è una frase matematica di cui possiamo discutere la verità. In «ogni intero pari ha quadrato pari», la parola <em|ogni> è essenziale: la frase riguarda tutti gli interi pari. Controllare <math|2<rsup|2>=4> e <math|4<rsup|2>=16> dà esempi favorevoli, ma lascia aperti tutti gli altri casi.

Una dimostrazione considera invece un intero pari qualsiasi. Si può scrivere <math|n=2k> con <math|k∈ℤ>. Allora <math|n<rsup|2>=4k<rsup|2>=2(2k<rsup|2>)>, che è pari. Il ragionamento vale per qualunque <math|k>, e perciò copre tutti i casi.

Il simbolo <math|∀> significa «per ogni», mentre <math|∃> significa «esiste». Per dimostrare che <em|esiste> un intero con una proprietà basta esibirne uno; per dimostrare che <em|ogni> intero la possiede serve un ragionamento generale. Per smentire «ogni intero è pari» basta invece un <strong|controesempio>, come 3.

Nella frase «se <math|P>, allora <math|Q>», indicata con <math|P⇒Q>, <math|P> è l'<strong|ipotesi> e <math|Q> la <strong|tesi>. Assumiamo l'ipotesi e cerchiamo di arrivare alla tesi. «Se e solo se», scritto <math|P⇔Q>, richiede entrambi i versi: <math|P⇒Q> e <math|Q⇒P>. La frase «esiste un unico» richiede sia l'esistenza sia l'unicità: trovare un oggetto e provare che non ce ne sono altri.

<section|Induzione: passare da un caso al successivo>

Guardiamo le somme dei primi numeri dispari:

<\equation*>
1=1,
<space|2em>1+3=4,
<space|2em>1+3+5=9,
<space|2em>1+3+5+7=16.
</equation*>

I risultati sono quadrati. Il disegno suggerisce una spiegazione: per passare da un quadrato di lato <math|n> a uno di lato <math|n+1> aggiungiamo una cornice a L di <math|2n+1> quadratini.

<figura|@IMG(dispari)|Ogni nuova cornice aggiunge il dispari successivo. Dopo le prime <math|n> cornici, i quadratini formano un quadrato di lato <math|n>.>

La formula da dimostrare è quindi

<\equation*>
1+3+5+⋯+(2n-1)=n<rsup|2><space|2em>(n≥1).
</equation*>

L'idea è usare il caso con <math|n> addendi per ottenere quello con <math|n+1>. Il nuovo caso contiene infatti la somma precedente, più il numero <math|2n+1>.

<\concetto|Principio di induzione>
Per dimostrare una proprietà <math|P(n)> per ogni naturale <math|n≥n<rsub|0>>, basta verificare la <strong|base> <math|P(n<rsub|0>)> e dimostrare il <strong|passo>: per ogni <math|n≥n<rsub|0>>, se vale <math|P(n)> allora vale <math|P(n+1)>.
</concetto>

La base fa iniziare il ragionamento. Il passo permette di ripeterlo: dalla base otteniamo il caso successivo, poi quello ancora successivo, e così raggiungiamo ogni indice. Nel passo assumiamo solo il caso <math|n> per dimostrare il caso <math|n+1>; questa assunzione si chiama <strong|ipotesi induttiva>.

<\anatomia|La somma dei dispari>
Vogliamo dimostrare la formula per ogni <math|n≥1>. La base è <math|n=1>: la somma vale 1, come <math|1<rsup|2>>.

Per il passo, supponiamo che la somma dei primi <math|n> dispari sia <math|n<rsup|2>>. Il nostro obiettivo è la somma dei primi <math|n+1> dispari. Per poter usare l'ipotesi separiamo l'ultimo addendo:

<\equation*>
1+3+⋯+(2n-1)+(2n+1)=n<rsup|2>+(2n+1).
</equation*>

Il membro destro è <math|(n+1)<rsup|2>>. Abbiamo quindi dimostrato che la formula passa da <math|n> a <math|n+1>. Per induzione vale per ogni <math|n≥1>.

Il punto riutilizzabile è questo: prima cerchiamo, nel problema nuovo, una parte che coincida con il problema precedente. Qui la troviamo separando l'ultimo addendo.
</anatomia>

L'induzione ci ha permesso di <em|verificare> una formula. La formula era stata suggerita dagli esempi e dal disegno. Scoprire una congettura e dimostrarla sono due momenti diversi del lavoro.

<\attenzione|La base e il passo devono combaciare>
La proprietà «<math|n≥5>» passa da <math|n> a <math|n+1>, ma non vale per tutti i naturali: manca una base a 0. È invece vera da 5 in poi. Bisogna anche controllare che il passo funzioni a partire dalla base scelta: una dimostrazione valida soltanto da 2 in poi non collega il caso 1 al caso 2.
</attenzione>

<section|Il principio del minimo e il più piccolo controesempio>

Se scegliamo alcuni naturali, per esempio <math|S=<around|{|4,7,10,…|}>>, tra quelli scelti ce n'è uno che viene prima di tutti: qui è 4. Il <strong|principio del minimo> afferma che ogni sottoinsieme non vuoto di <math|ℕ> ha un elemento minimo.

È una proprietà specifica dei naturali. L'insieme di tutti gli interi non ha minimo: per ogni intero possiamo scendere di uno. Neppure i numeri reali positivi, cioè i numeri sulla retta a destra dello zero, hanno minimo, perché la metà di un numero positivo è ancora positiva ed è più piccola.

Il minimo spiega perché l'induzione funziona. Supponiamo di avere base e passo, ma che qualche caso sia falso. Scegliamo il più piccolo indice falso, <math|m>. Non è la base, che abbiamo controllato. Perciò esiste il caso precedente <math|m-1>, ed è vero: altrimenti <math|m> non sarebbe il primo caso falso. Il passo ci porta allora da <math|P(m-1)> a <math|P(m)>. Contraddizione: <math|P(m)> risulta sia vera sia falsa. Non possono dunque esistere casi falsi.

Questo è un ragionamento <strong|per assurdo>: assumiamo che la conclusione fallisca e mostriamo che l'assunzione è incompatibile con ciò che sappiamo. Scegliere il <strong|minimo controesempio> aggiunge un'informazione preziosa: tutti i casi più piccoli funzionano.

Anche l'induzione permette di recuperare il principio del minimo. Se un insieme <math|S⊆ℕ> non avesse minimo, 0 non potrebbe appartenergli. Supponiamo ora che nessun numero da 0 a <math|n> appartenga a <math|S>. Neppure <math|n+1> potrebbe appartenergli: sarebbe il suo minimo. L'induzione sulla frase cumulativa «nessun numero da 0 a <math|n> sta in <math|S>» darebbe <math|S=∅>. Quindi un insieme non vuoto deve avere minimo.

<section|Induzione forte: usare tutti i casi precedenti>

A volte il caso nuovo dipende da numeri più piccoli, ma non dal solo precedente. Per esempio, per scomporre 12 possiamo usare <math|12=3·4>: ci servono informazioni su 3 e 4, non su 11.

L'<strong|induzione forte> permette proprio questo. Verifichiamo la base; poi, per dimostrare <math|P(n)>, possiamo assumere vere tutte le proprietà <math|P(k)> con <math|n<rsub|0>≤k‹n>.

Come esempio, mostriamo che ogni intero <math|n≥2> è prodotto di numeri primi. Ricordiamo il significato dei termini: un numero <math|d> <strong|divide> <math|n> se <math|n=dk> per qualche intero <math|k>; un naturale <math|p≥2> è <strong|primo> se i suoi soli divisori positivi sono 1 e <math|p>. Un numero <math|n≥2> non primo è <strong|composto>: si scrive <math|n=ab> con <math|2≤a,b‹n>.

La base è 2, che è già primo. Per il passo, supponiamo fattorizzabili tutti i numeri da 2 a <math|n-1>. Se <math|n> è primo, è esso stesso il prodotto cercato, con un solo fattore. Se è composto, scriviamo <math|n=ab>: entrambi i fattori sono più piccoli di <math|n>, quindi per ipotesi si scompongono in primi. Unendo le loro scomposizioni otteniamo quella di <math|n>.

<figura|@IMG(fattori)|Un numero composto si divide in fattori più piccoli. Il ragionamento di induzione forte assicura che la scomposizione possa arrivare fino ai primi.>

Abbiamo provato che una scomposizione esiste. Per dimostrare che è <em|unica>, indipendentemente dalle scelte iniziali, servirà il lemma di Euclide del capitolo 5.

L'induzione forte si ottiene anche dall'induzione ordinaria: basta applicare quest'ultima alla frase «tutti i casi fino a <math|n> sono veri». La forza apparente in più viene dalla scelta di una proprietà che conserva tutte le informazioni utili.

<subsection|In sintesi>

Una dimostrazione precisa il dominio, le ipotesi e la tesi. L'induzione collega una base a un passo generale; la forma forte permette di usare tutti i casi precedenti. Il principio del minimo consente di ragionare sul primo eventuale fallimento. Useremo queste idee per dimostrare formule e spiegare perché certi procedimenti terminano.

<\verifica|1>
<strong|1. Con un suggerimento.> Dimostra per induzione che <math|1+2+⋯+n=n(n+1)/2> per ogni <math|n≥1>. Nel passo, separa l'addendo <math|n+1> e raccogli il fattore comune <math|n+1>.

<strong|2. In autonomia.> Un ragionamento afferma: «Il primo numero naturale è pari. Se <math|n> è pari, anche <math|n+2> è pari. Quindi tutti i naturali sono pari». Quali numeri raggiunge davvero il ragionamento? Spiega quale passaggio manca per applicare l'induzione a tutti i naturali.
</verifica>

