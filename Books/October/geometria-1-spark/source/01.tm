<chapter|Insiemi, applicazioni e campi>

<\inbreve>
Prima di parlare di vettori ci serve un linguaggio preciso per dire che cosa contiene un insieme e come un oggetto viene associato a un altro. Gli insiemi e le applicazioni ci danno questo, insieme a un modo affidabile di riconoscere quando una funzione si può invertire. Nell'ultima parte ci chiederemo quali regole deve rispettare un insieme di numeri perché si possa sommare, moltiplicare e dividere senza sorprese, e arriveremo così all'idea di campo.
</inbreve>

<section|Insiemi e uguaglianza: guardare gli elementi>

Prendiamo <math|X={1,2,3}> e <math|Y={2,3,4}>. Scriviamo <math|2∈X> per dire che 2 appartiene a <math|X>, e <math|4∉X> per dire che 4 invece non gli appartiene. Un insieme è determinato soltanto dai suoi elementi, quindi tutto ciò che diremo sugli insiemi si riduce, alla fine, a domande su quali elementi ci sono e quali no.

Gli elementi che <math|X> e <math|Y> hanno in comune formano l'<strong|intersezione> <math|X∩Y={2,3}>. Quelli che stanno in almeno uno dei due formano l'<strong|unione> <math|X∪Y={1,2,3,4}>. In matematica «oppure» comprende anche il caso in cui un elemento stia in entrambi gli insiemi, ed è per questo che 2 e 3 compaiono nell'unione. L'insieme che non ha alcun elemento si chiama insieme vuoto e si indica con <math|∅>.

Diciamo che <math|A> è contenuto in <math|B>, e scriviamo <math|A⊆B>, quando ogni elemento di <math|A> appartiene anche a <math|B>. La definizione non esclude che i due insiemi coincidano, perciò ogni insieme è contenuto in sé stesso.

Per dimostrare un'inclusione non basta provare qualche esempio, perché gli esempi non coprono mai tutti i casi. Prendiamo allora un elemento qualsiasi di <math|A>, senza sapere nulla su di lui tranne che sta in <math|A>, e mostriamo che deve stare in <math|B>. Per provare che due insiemi sono uguali facciamo lo stesso lavoro nelle due direzioni.

Vediamo come funziona su un'uguaglianza che vale per tre insiemi qualsiasi:

<\equation*>
X∩(Y∪Z)=(X∩Y)∪(X∩Z).
</equation*>

A sinistra chiediamo a un elemento di stare in <math|X> e, in più, in <math|Y> oppure in <math|Z>. Se sta in <math|X> e in <math|Y>, appartiene a <math|X∩Y>; se sta in <math|X> e in <math|Z>, appartiene a <math|X∩Z>. In ogni caso sta nel membro destro.

Il ragionamento si rovescia senza fatica. Un elemento del membro destro sta in una delle due intersezioni, e quindi in entrambi i casi sta in <math|X> e in almeno uno fra <math|Y> e <math|Z>. Appartiene così al membro sinistro, e con le due inclusioni abbiamo provato l'uguaglianza.

<figura|@IMG(distributiva)|Le due espressioni descrivono la stessa zona. La dimostrazione spiega perché questo accade per qualsiasi insieme, anche quando non possiamo disegnarlo.>

Allo stesso modo vale <math|X∪(Y∩Z)=(X∪Y)∩(X∪Z)>. Qui conviene distinguere due casi. Se un elemento sta in <math|X>, soddisfa entrambe le richieste del membro destro e sta anche a sinistra. Se non sta in <math|X>, per stare a sinistra deve trovarsi sia in <math|Y> sia in <math|Z>, e per stare a destra gli si chiede esattamente la stessa cosa.

Un'ultima costruzione ci servirà spesso. Il <strong|prodotto cartesiano> <math|X×Y> è l'insieme delle coppie ordinate <math|(x,y)> con <math|x∈X> e <math|y∈Y>. L'ordine conta, perché <math|(1,2)> e <math|(2,1)> sono coppie diverse. Il piano <math|ℝ<rsup|2>=ℝ×ℝ> è l'insieme delle coppie di numeri reali, e lo spazio <math|ℝ<rsup|3>> quello delle terne. A rigore la coppia <math|((x,y),z)> e la terna <math|(x,y,z)> hanno forme diverse, ma le identifichiamo tranquillamente togliendo le parentesi interne.

<section|Applicazioni, iniettività e suriettività>

Consideriamo la funzione <math|f:ℝ→ℝ> definita da <math|f(x)=x<rsup|2>>, che a ogni numero reale associa il suo quadrato. L'insieme da cui partiamo si chiama <strong|dominio>, quello che dichiariamo come arrivo si chiama <strong|codominio>. I valori che la funzione raggiunge davvero formano l'<strong|immagine>, che qui è <math|[0,+∞)> perché un quadrato non è mai negativo. Il codominio è dunque una scelta che facciamo noi, mentre l'immagine dipende da come è fatta la funzione, e le due cose possono essere diverse.

<\concetto|Applicazione>
Un'applicazione <math|f:X→Y> assegna a ogni <math|x∈X> uno e un solo elemento <math|f(x)∈Y>. Dominio, codominio e assegnazione fanno parte della definizione.
</concetto>

Possiamo anche descrivere una funzione con il suo <strong|grafico>, cioè l'insieme delle coppie <math|(x,f(x))> dentro <math|X×Y>. Questo punto di vista ci dice quando una qualsiasi relazione <math|Γ⊆X×Y> è il grafico di una funzione. Deve succedere che per ogni <math|x∈X> ci sia una e una sola coppia di <math|Γ> con prima voce <math|x>. Con i simboli <math|∀> («per ogni»), <math|∃> («esiste») e <math|∃!> («esiste uno e un solo») la richiesta si scrive <math|∀x∈X<space|0.5em>∃!y∈Y> con <math|(x,y)∈Γ>.

Due domande accompagneranno ogni funzione che incontreremo. La prima è se la funzione distingue elementi diversi. Diciamo che <math|f> è <strong|iniettiva> quando da <math|f(x)=f(x')> segue sempre <math|x=x'>, cioè quando due elementi distinti non finiscono mai sullo stesso valore. Il quadrato su <math|ℝ> non è iniettivo, perché <math|f(1)=f(-1)=1>.

La seconda domanda è se la funzione raggiunge tutto il codominio. Diciamo che <math|f> è <strong|suriettiva> quando per ogni <math|y∈Y> esiste almeno un <math|x∈X> con <math|f(x)=y>. Il quadrato visto come funzione da <math|ℝ> a <math|ℝ> non lo è, perché nessun numero reale ha quadrato <math|-1>.

Entrambi i difetti si possono correggere cambiando gli insiemi. Se prendiamo <math|[0,+∞)> come codominio, il quadrato diventa suriettivo; se restringiamo anche il dominio a <math|[0,+∞)>, diventa pure iniettivo. Una funzione che è insieme iniettiva e suriettiva si dice <strong|biiettiva>.

<figura|@IMG(funzioni,0.95)|Ogni elemento del dominio deve avere una sola freccia in uscita. L'iniettività riguarda le frecce che arrivano allo stesso punto; la suriettività richiede di raggiungere tutti i punti del codominio.>

<section|Composizione e inversa: tornare al punto di partenza>

Se abbiamo <math|f:X→Y> e <math|g:Y→Z>, possiamo applicare prima <math|f> e poi <math|g>. Otteniamo la <strong|composizione> <math|g∘f>, definita da <math|(g∘f)(x)=g(f(x))>. Con tre funzioni compatibili il modo di mettere le parentesi non cambia nulla, perché in entrambi i casi arriviamo a <math|h(g(f(x)))>. Fra tutte le funzioni da un insieme in sé stesso ce n'è una particolarmente semplice, l'<strong|identità> <math|<math-up|id><rsub|X>>, che lascia fermo ogni elemento.

Prendiamo ora <math|f:ℝ→ℝ> con <math|f(x)=2x+1>. Se qualcuno ci dice il risultato <math|y>, possiamo risalire al numero di partenza sottraendo 1 e dividendo per 2. La funzione <math|g(y)=(y-1)/2> fa esattamente questo, e infatti <math|g(f(x))=x> per ogni <math|x> e <math|f(g(y))=y> per ogni <math|y>. Una funzione così si chiama <strong|inversa> di <math|f> e si indica con <math|f<rsup|-1>>. L'esponente qui non indica il reciproco del valore, ma il fatto che <math|f<rsup|-1>> annulla l'effetto di <math|f>.

Quando esiste un'inversa? Se <math|f> è biiettiva, per definire <math|f<rsup|-1>(y)> cerchiamo un elemento <math|x> con <math|f(x)=y>. La suriettività garantisce che un tale <math|x> esista, e l'iniettività garantisce che sia uno solo, quindi la scelta è ben definita. Per costruzione valgono le due identità

<\equation*>
f<rsup|-1>∘f=<math-up|id><rsub|X>,<space|2em>f∘f<rsup|-1>=<math-up|id><rsub|Y>.
</equation*>

Anche il viceversa è vero. Supponiamo che una funzione <math|g> soddisfi entrambe le identità. Se <math|f(x)=f(x')>, applicando <math|g> otteniamo <math|x=x'>, quindi <math|f> è iniettiva. Ogni <math|y> poi si scrive come <math|f(g(y))>, quindi è raggiunto e <math|f> è suriettiva. Le due identità caratterizzano dunque esattamente le funzioni invertibili.

Infine l'inversa, quando c'è, è una sola. Se anche <math|h> soddisfa le due identità, possiamo scrivere <math|g=g∘(f∘h)=(g∘f)∘h=h>.

<section|Campi: quali regole servono per calcolare?>

L'equazione <math|2x=1> ha la soluzione <math|1/2> fra i razionali, ma nessuna soluzione fra gli interi. Il fatto di poter dividere non dipende quindi dall'equazione, ma dall'insieme di numeri in cui lavoriamo. Vogliamo capire quali regole deve avere un insieme perché i calcoli dell'algebra elementare funzionino sempre.

Il primo ingrediente è un'<strong|operazione interna> su <math|K>, cioè una funzione <math|K×K→K> che combina due elementi e dà come risultato ancora un elemento di <math|K>. Ci servono due operazioni di questo tipo, la somma e il prodotto, legate dalle regole che usiamo da sempre con i numeri.

<\concetto|Campo>
Un campo <math|K> possiede due operazioni interne, somma e prodotto, con elementi <math|0≠1>, e soddisfa le seguenti regole per tutti i suoi elementi.

<\itemize>

<item>La somma è associativa e commutativa: <math|(a+b)+c=a+(b+c)> e <math|a+b=b+a>. Lo zero è neutro, <math|a+0=a>; ogni <math|a> ha un opposto <math|-a> con <math|a+(-a)=0>.

<item>Il prodotto è associativo e commutativo: <math|(ab)c=a(bc)> e <math|ab=ba>. L'unità è neutra, <math|a·1=a>; ogni <math|a≠0> ha un inverso <math|a<rsup|-1>> con <math|aa<rsup|-1>=1>.

<item>Vale la distributività: <math|a(b+c)=ab+ac>. Per commutatività vale anche <math|(a+b)c=ac+bc>.
</itemize>
</concetto>

I razionali <math|ℚ> e i reali <math|ℝ> sono campi. Gli interi <math|ℤ> invece non lo sono, perché manca per esempio l'inverso di 2, ed è questo che impediva di risolvere <math|2x=1>. Nel prossimo capitolo costruiremo un campo nuovo, quello dei numeri complessi.

Il vantaggio di questa definizione è che le proprietà del calcolo si possono dimostrare una volta per tutte partendo dalle regole, senza sapere come sono fatti gli elementi. Per esempio, se <math|a+b=a+c>, sommiamo <math|-a> a entrambi i membri e otteniamo <math|b=c>. Questa è la cancellazione nella somma, e la useremo subito.

<subsection|Perché zero, opposto e inverso sono unici>

Gli assiomi chiedono che zero, opposti e inversi esistano, ma non dicono che siano unici. Conviene controllarlo, perché altrimenti scrivere «<math|-a>» o «<math|a<rsup|-1>>» sarebbe ambiguo. Supponiamo che <math|e> ed <math|e'> siano entrambi neutri per la somma e guardiamo <math|e+e'>. Poiché <math|e> è neutro, la somma vale <math|e'>; poiché anche <math|e'> è neutro, la stessa somma vale <math|e>. Dunque <math|e=e'>.

Per l'opposto basta la cancellazione. Se <math|a+b=0> e anche <math|a+c=0>, allora <math|a+b=a+c>, e quindi <math|b=c>.

Per l'inverso usiamo le regole del prodotto. Se <math|ab=1> e <math|ac=1>, allora

<\equation*>
b=b·1=b(ac)=(ba)c=1·c=c,
</equation*>

e anche l'inverso è unico. Lo stesso ragionamento usato per lo zero mostra che l'unità moltiplicativa è una sola.

<subsection|Moltiplicare per zero e cancellare un fattore>

Per risolvere <math|3x=0> fra i reali dividiamo per 3 e otteniamo <math|x=0>. In un campo possiamo fare la stessa cosa con qualsiasi fattore non nullo, ma prima dobbiamo sapere che cosa succede quando si moltiplica per zero.

Dimostriamo che <math|a·0=0> per ogni <math|a>. Poiché <math|0=0+0>, la distributività dà <math|a·0=a(0+0)=a·0+a·0>. Cancellando uno dei due addendi uguali resta <math|0=a·0>. Ne segue anche che lo zero non può avere un inverso, perché moltiplicandolo per qualsiasi cosa otteniamo 0 e mai 1.

Ora possiamo cancellare un fattore. Se <math|ab=0> e <math|a≠0>, moltiplichiamo entrambi i membri per <math|a<rsup|-1>> e otteniamo <math|b=0>. È la <strong|legge di annullamento del prodotto>, secondo cui un prodotto nullo ha sempre almeno un fattore nullo.

Le regole della somma (associatività, commutatività, esistenza del neutro e degli opposti) si riassumono dicendo che <math|K> è un <strong|gruppo abeliano> rispetto alla somma. Anche gli elementi non nulli formano un gruppo abeliano rispetto al prodotto. Il nome è utile da conoscere, ma nel seguito useremo soprattutto le singole regole.

<section|Un campo piccolo: due elementi>

I campi non sono soltanto insiemi infiniti di numeri. Dividiamo gli interi in pari e dispari e osserviamo che la parità di una somma o di un prodotto dipende solo dalla parità dei fattori. Due dispari, per esempio, danno una somma pari e un prodotto dispari. Se scriviamo 0 per «pari» e 1 per «dispari», otteniamo un insieme di due elementi <math|<math-up|F><rsub|2>={0,1}> con queste tabelle:

<\equation*>
0+0=0,<space|1em>0+1=1+0=1,<space|1em>1+1=0,
</equation*>

<\equation*>
0·0=0·1=1·0=0,<space|2em>1·1=1.
</equation*>

Le proprietà associative, commutative e distributive vengono direttamente da quelle degli interi, perché passare alla parità rispetta le operazioni. Ogni elemento ha un opposto, dato che ciascuno è l'opposto di sé stesso, e l'unico elemento non nullo, cioè 1, è inverso di sé stesso. Tutti gli assiomi sono soddisfatti, e <math|<math-up|F><rsub|2>> è un campo.

In questo campo però <math|2=1+1=0>. Da <math|2a=0> non possiamo quindi concludere <math|a=0>, e dividere per 2 non ha senso. È un buon motivo per cui, quando lavoreremo con gli spazi vettoriali, dichiareremo sempre il campo degli scalari.

<\verifica|1>
<strong|1.1.> Studia iniettività e suriettività di <math|f:ℝ→[0,+∞)>, <math|f(x)=x<rsup|2>>. Trova una restrizione del dominio che la renda biiettiva e scrivine l'inversa.

<strong|1.2.> Nei reali, da <math|a=-a> segue <math|a=0>. Spiega il passaggio e decidi se la conclusione vale anche in <math|<math-up|F><rsub|2>>.
</verifica>
