<chapter|Gruppi, anelli e campi>

<\inbreve>
Interi e classi di resto sono oggetti diversi, eppure molti conti si fanno con le stesse regole. Ha senso allora chiedersi quali regole valgano davvero in ciascun caso e quali, invece, dipendano dagli oggetti scelti. Gruppi, anelli e campi sono i nomi che la matematica dà a queste famiglie di regole, e qui li costruiremo a partire dalle operazioni che già conosciamo.
</inbreve>

<section|Prima domanda: su quali oggetti facciamo i conti?>

Se sommiamo due interi otteniamo un intero, e se sommiamo due classi modulo 5 otteniamo una classe modulo 5. Gli oggetti sono diversi, ma in entrambi i casi abbiamo uno zero, possiamo sommare in qualsiasi ordine e ogni elemento ha un opposto.

Con il prodotto degli interi, invece, qualcosa cambia. Il prodotto di due interi è ancora un intero, ma l'equazione <math|2x=1> non ha soluzione intera, e quindi non sempre possiamo annullare una moltiplicazione restando fra gli interi.

Per questo una struttura algebrica è fatta <strong|sia dall'insieme sia dalle operazioni>. Dire soltanto «gli interi» non basta, perché non sappiamo ancora se stiamo guardando la somma, il prodotto o entrambi.

La prima richiesta è che l'operazione non ci faccia uscire dall'insieme. Un'<strong|operazione binaria interna> su <math|G> è una funzione <math|G×G→G>, che a due elementi di <math|G> associa un elemento di <math|G>. La sottrazione, per esempio, è interna su <math|ℤ> ma non su <math|ℕ>, perché <math|2-5=-3> non è un naturale.

<section|Gruppo: un'operazione che possiamo invertire>

Prendiamo come modello <math|(ℤ,+)>. Possiamo raggruppare le somme come vogliamo senza cambiarne il risultato, sommare zero non sposta nessun numero, e a ogni intero possiamo sommare il suo opposto per tornare a zero. La definizione di gruppo raccoglie esattamente queste tre proprietà.

<\concetto|Gruppo>
Un <strong|gruppo> è un insieme <math|G> con un'operazione interna, scritta <math|xy>, tale che:

<\itemize>
<item>è <strong|associativa>: <math|(xy)z=x(yz)> per ogni <math|x,y,z∈G>;

<item>ha un <strong|elemento neutro> <math|e>: <math|xe=ex=x> per ogni <math|x∈G>;

<item>ogni <math|x> ha un <strong|inverso> <math|x<rsup|-1>> con <math|xx<rsup|-1>=x<rsup|-1>x=e>.
</itemize>

Se inoltre <math|xy=yx> per ogni coppia, il gruppo si chiama <strong|abeliano>.
</concetto>

Associatività e commutatività sono due richieste diverse, e conviene non confonderle. La prima ci permette di spostare le parentesi, la seconda di scambiare gli elementi. Ogni gruppo deve avere la prima, mentre la seconda può mancare, e nel capitolo sulle permutazioni ne vedremo un esempio.

Quando l'operazione è la somma scriviamo <math|0> al posto di <math|e> e <math|-x> al posto di <math|x<rsup|-1>>. L'inverso di 3 rispetto alla somma è quindi <math|-3>, mentre rispetto al prodotto sarebbe <math|1/3>, e questo ci ricorda che è sempre l'operazione a dare un significato alla parola «inverso».

Con queste definizioni <math|(ℤ,+)> e <math|(ℤ/nℤ,+)> sono gruppi abeliani. Non lo è invece <math|(ℕ,+)>, perché fra i naturali 1 non ha opposto, e non lo è nemmeno <math|(ℤ,·)>, perché 2 non ha un inverso intero.

<subsection|Perché in un gruppo possiamo cancellare>

Supponiamo che <math|ax=ay> e chiediamoci se possiamo concludere <math|x=y>. L'ostacolo è il fattore <math|a> davanti alle incognite, e la definizione di gruppo ci mette a disposizione esattamente l'elemento che lo annulla, cioè <math|a<rsup|-1>>. Moltiplichiamo allora entrambi i membri <em|a sinistra> per <math|a<rsup|-1>>:

<\equation*>
a<rsup|-1>(ax)=a<rsup|-1>(ay).
</equation*>

Grazie all'associatività possiamo raggruppare <math|a<rsup|-1>a>, che vale <math|e>, e otteniamo <math|ex=ey>, cioè <math|x=y>. Se invece partissimo da <math|xa=ya> moltiplicheremmo a destra. In nessun momento abbiamo scambiato l'ordine dei fattori, quindi il ragionamento funziona anche nei gruppi non abeliani.

Lo stesso tipo di argomento mostra che il neutro e gli inversi sono unici. Se <math|e> e <math|f> fossero due neutri, il prodotto <math|ef> varrebbe <math|e> perché <math|f> è neutro, e varrebbe <math|f> perché <math|e> è neutro, quindi <math|e=f>. Se <math|u> e <math|v> fossero due inversi di <math|x>, avremmo <math|u=u(xv)=(ux)v=v>. Ne segue anche che l'inverso di <math|x<rsup|-1>> è <math|x>. Possiamo quindi parlare tranquillamente del neutro e dell'inverso.

<section|Anello: somma e prodotto insieme>

Un gruppo descrive una sola operazione. Per ragionare su espressioni come <math|a(b+c)> ci serve una struttura che contenga somma e prodotto e dica come si parlano.

<\concetto|Anello>
Un <strong|anello> ha due operazioni interne. La somma forma un gruppo abeliano; il prodotto è associativo; valgono le due leggi distributive <math|a(b+c)=ab+ac> e <math|(a+b)c=ac+bc>.

Nel seguito lavoriamo con <strong|anelli commutativi con identità>: richiediamo anche <math|ab=ba> e un elemento <math|1> neutro per il prodotto. Esistono anelli più generali, ma queste sono le proprietà usate nei nostri esempi.
</concetto>

Gli interi e le classi modulo <math|n> sono anelli di questo tipo. In <math|ℤ/nℤ> lo zero è <math|[0]> e l'uno è <math|[1]>, e tutte le regole vengono da quelle degli interi, una volta controllata la buona definizione come abbiamo fatto nel capitolo 7.

In un anello, però, non tutti gli elementi hanno un inverso per il prodotto. Quelli che ce l'hanno si chiamano <strong|unità>, e insieme formano un gruppo rispetto al prodotto. Contengono infatti 1, il prodotto di due unità ha come inverso il prodotto dei loro inversi, e l'inverso di un'unità è a sua volta un'unità.

Per le classi di resto il criterio lo conosciamo già dal capitolo precedente:

<\equation*>
(ℤ/nℤ)<rsup|×>=<around|{|[a]<rsub|n>:gcd(a,n)=1|}>.
</equation*>

Modulo 12, per esempio, le unità sono <math|[1],[5],[7],[11]>. La classe <math|[3]> ha un opposto per la somma, che è <math|[9]>, ma non ha un inverso per il prodotto. Sono due domande diverse sullo stesso oggetto, e possono avere risposte diverse.

<section|Campo: dividere per ogni elemento non nullo>

Il caso più comodo è quello in cui si può dividere per qualsiasi elemento diverso da zero, come siamo abituati a fare con le frazioni.

<\concetto|Campo>
Un <strong|campo> è un anello commutativo con identità, con <math|1≠0>, in cui ogni elemento diverso da zero ha inverso moltiplicativo.
</concetto>

I razionali <math|ℚ> sono un campo, e lo sono anche i reali <math|ℝ>, che comprendono numeri come <math|<sqrt|2>>. Gli interi, invece, non lo sono.

Fra le classi di resto i campi si riconoscono facilmente: per <math|n≥2>, l'anello <math|ℤ/nℤ> è un campo <strong|esattamente quando <math|n> è primo>. Se <math|n=p> è primo, ogni numero fra <math|1> e <math|p-1> è coprimo con <math|p>, e quindi ogni classe non nulla è invertibile.

Se invece <math|n=uv> è composto, con <math|1‹u,v‹n>, le classi <math|[u]> e <math|[v]> sono diverse da zero ma il loro prodotto è <math|[n]=[0]>. In un campo questo non può succedere, perché da <math|[u][v]=[0]> potremmo moltiplicare per l'inverso di <math|[u]> e ottenere <math|[v]=[0]>. Due elementi non nulli con prodotto zero si chiamano <strong|divisori dello zero>, e la loro presenza basta a escludere che si tratti di un campo.

<figura|@IMG(strutture,0.9)|Un gruppo descrive una sola operazione. Un anello è un gruppo abeliano per la somma, con un prodotto collegato dalla distributività. In un campo ogni elemento non nullo ha anche un inverso moltiplicativo.>

<section|Omomorfismi: cambiare oggetti senza cambiare i conti>

Consideriamo la funzione che manda ogni intero nella sua classe modulo 5, cioè <math|f(a)=[a]<rsub|5>>. Possiamo sommare due interi e poi prendere la classe, oppure prendere prima le classi e poi sommarle, e il risultato è lo stesso:

<\equation*>
f(a+b)=f(a)+f(b).
</equation*>

Lo stesso vale per il prodotto, <math|f(ab)=f(a)f(b)>, e inoltre <math|f(1)=[1]>. Una funzione fra anelli con queste tre proprietà, che rispetta somma, prodotto e identità, si chiama <strong|omomorfismo di anelli unitari>. Fra gruppi, invece, un omomorfismo deve rispettare soltanto l'operazione del gruppo.

Se un omomorfismo è anche <strong|biiettivo> si chiama <strong|isomorfismo>, e in quel caso le due strutture hanno esattamente gli stessi conti, scritti con nomi diversi. Un omomorfismo qualsiasi può invece perdere informazione. La riduzione <math|ℤ→ℤ/5ℤ>, per esempio, manda 2 e 7 nella stessa classe e quindi non è biiettiva.

<subsection|Per proseguire: il teorema cinese come isomorfismo>

Su un prodotto <math|A×B> di due anelli si somma e si moltiplica componente per componente, cioè <math|(a,b)+(c,d)=(a+c,b+d)> e <math|(a,b)(c,d)=(ac,bd)>. Consideriamo la funzione

<\equation*>
F:ℤ/(mn)ℤ→ℤ/mℤ×ℤ/nℤ,<space|2em>[x]<rsub|mn>↦([x]<rsub|m>,[x]<rsub|n>),
</equation*>

che a una classe modulo <math|mn> associa i suoi due resti. È ben definita, perché cambiare <math|x> di un multiplo di <math|mn> non cambia nessuno dei due resti, ed è un omomorfismo, perché ridurre una somma o un prodotto è come operare sui resti.

Se <math|m> e <math|n> sono coprimi, il teorema cinese dice che ogni coppia di classi viene da una e una sola classe modulo <math|mn>, e quindi <math|F> è un isomorfismo. Vale anche il viceversa. Se <math|F> fosse suriettiva, la coppia <math|([0]<rsub|m>,[1]<rsub|n>)> verrebbe da qualche <math|x>, e ogni divisore comune dei due moduli dividerebbe sia <math|x> sia <math|x-1>, quindi dividerebbe 1. I moduli sarebbero allora coprimi.

L'isomorfismo si comporta bene anche con le unità. Una classe modulo <math|mn> è invertibile esattamente quando lo sono entrambi i suoi resti, perché <math|gcd(x,mn)=1> equivale a <math|gcd(x,m)=gcd(x,n)=1>, dato che un primo divide un prodotto solo se divide uno dei fattori. Otteniamo così anche un isomorfismo fra i gruppi delle unità.

<subsection|In sintesi>

Gruppo, anello e campo distinguono quali operazioni abbiamo a disposizione e quali inversi esistono. Gli omomorfismi ci permettono di confrontare strutture diverse, trasportando i conti dall'una all'altra.

<\verifica|9>
<strong|1.> Le classi <math|[1],[2],[3],[4]> modulo 5 formano un gruppo con il prodotto? Individua neutro e inversi. Perché aggiungere <math|[0]> farebbe fallire una proprietà?

<strong|2.> La funzione <math|f:ℤ/6ℤ→ℤ/3ℤ>, <math|[a]<rsub|6>↦[a]<rsub|3>>, è ben definita? Rispetta somma, prodotto e identità? È un isomorfismo?
</verifica>
