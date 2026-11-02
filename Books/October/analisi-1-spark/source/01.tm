<chapter|Logica, quantificatori e insiemi>

<\inbreve>
«A ciascuno piace una birra» e «a tutti piace la stessa birra» sembrano dire quasi la stessa cosa, eppure la prima può essere vera mentre la seconda è falsa. Tutta la differenza sta nell'ordine in cui scegliamo le cose di cui parliamo. In questo capitolo impariamo a leggere con precisione quantificatori, negazioni e implicazioni, e poi introduciamo gli insiemi, il linguaggio in cui scriveremo tutto il resto del libro.
</inbreve>

<section|Proposizioni e quantificatori: chi scegliamo prima?>

Una <strong|proposizione> è una frase che può essere vera o falsa, come <math|7≥5>, che è vera. Molte frasi della matematica però non hanno ancora un valore di verità, perché dipendono da qualcosa che non abbiamo fissato. La frase <math|x≥3> è vera se <math|x=5> e falsa se <math|x=1>, quindi la sua verità dipende da <math|x>. Una frase di questo tipo si chiama <strong|predicato> e la scriviamo, per esempio, <math|P(x):x≥3>. Insieme al predicato dobbiamo sempre dire dove varia <math|x>; qui prendiamo i reali <math|ℝ>, cioè i numeri della retta.

Per trasformare un predicato in una proposizione abbiamo due possibilità. Il simbolo <math|∀> significa «per ogni», mentre <math|∃> significa «esiste almeno un». La frase <math|∀x∈ℝ, x≥3> è falsa, e per accorgercene basta un solo controesempio come <math|x=0>. La frase <math|∃x∈ℝ, x≥3> è invece vera, perché basta esibire un esempio, come <math|x=3>.

Le variabili che non abbiamo ancora fissato si chiamano <strong|variabili libere>. Quando le fissiamo tutte, oppure le leghiamo a un quantificatore, il predicato diventa una proposizione.

Il caso più interessante arriva quando i quantificatori sono due. Indichiamo con <math|P(S,B)> la frase «allo studente <math|S> piace la birra <math|B>» e confrontiamo

<\equation*>
∀S∃B, P(S,B),<space|2em>∃B∀S, P(S,B).
</equation*>

Nella prima frase scegliamo prima lo studente e solo dopo cerchiamo una birra che gli piaccia, quindi la birra può cambiare da uno studente all'altro. Nella seconda dobbiamo scegliere subito una birra, e quella stessa birra deve andare bene per tutti. Se tre studenti apprezzano ciascuno una sola birra, diversa da quella degli altri, la prima frase è vera e la seconda è falsa.

<figura|@IMG(quantificatori,0.92)|A sinistra la birra può dipendere dallo studente; a destra deve esserci una stessa birra gradita a tutti.>

Le altre combinazioni si leggono nello stesso modo. <math|∀S∀B> dice che a ogni studente piacciono tutte le birre, mentre <math|∃S∃B> si accontenta di una sola coppia studente–birra favorevole. La frase <math|∃S∀B> chiede uno studente a cui piacciano tutte le birre, mentre <math|∀B∃S> permette di cambiare studente per ciascuna birra.

Quando i quantificatori sono tutti dello stesso tipo, tutti universali oppure tutti esistenziali, possiamo scambiarli senza cambiare il significato. Quando invece sono di tipo diverso l'ordine conta, come abbiamo appena visto con gli studenti e le birre.

<section|Negazione, implicazione e dimostrazione>

Per combinare le frasi usiamo tre simboli. Scriviamo <math|¬P> per «non <math|P>», <math|P∧Q> per «<math|P> e <math|Q>» e <math|P∨Q> per «<math|P> oppure <math|Q>». L'oppure della matematica è inclusivo, cioè basta che almeno una delle due frasi sia vera, e possono esserlo anche entrambe.

Che cosa significa negare queste combinazioni? Se non è vero che due frasi sono entrambe vere, allora almeno una delle due è falsa. Se non è vero che almeno una è vera, allora sono false tutte e due. Sono le leggi di De Morgan:

<\equation*>
¬(P∧Q)⇔(¬P∨¬Q),<space|2em>¬(P∨Q)⇔(¬P∧¬Q).
</equation*>

Con i quantificatori succede qualcosa di simile. Per smentire un'affermazione su «tutti» basta un solo caso contrario, mentre per smentire un «esiste» bisogna mostrare che ogni caso fallisce.

<\concetto|Negazione dei quantificatori>
Negare un quantificatore lo trasforma nell'altro e sposta la negazione all'interno:

<\equation*>
¬(∀x,P(x))⇔∃x,¬P(x),<space|1em>¬(∃x,P(x))⇔∀x,¬P(x).
</equation*>
</concetto>

Applichiamo la regola a «ogni studente apprezza almeno una birra». La negazione diventa «esiste uno studente che non ne apprezza nessuna», cioè <math|∃S∀B,¬P(S,B)>. Abbiamo negato i quantificatori uno dopo l'altro, lasciandoli nello stesso ordine. Notiamo che la negazione non pretende che tutti gli studenti rifiutino tutte le birre, perché per smentire la frase basta un solo studente scontento.

L'<strong|implicazione> <math|P⇒Q> si legge «se <math|P>, allora <math|Q>». Promette soltanto che, quando <math|P> è vera, anche <math|Q> lo è, e quindi è falsa in un caso solo, quando <math|P> è vera e <math|Q> è falsa. Se <math|P> è falsa la promessa non viene messa alla prova, e l'implicazione è vera qualunque sia <math|Q>. Per questo <math|P⇒Q> equivale a <math|¬P∨Q>, e la sua negazione è <math|P∧¬Q>.

Prendiamo la frase «se un intero è multiplo di 4, allora è pari». Essere multiplo di 4 è una condizione <strong|sufficiente> per essere pari, perché basta a garantirlo. Essere pari è invece una condizione <strong|necessaria> per essere multiplo di 4, perché senza di essa non c'è speranza. Il viceversa è falso, dato che 6 è pari ma non è multiplo di 4. Quando valgono entrambe le implicazioni scriviamo <math|P⇔Q> e diciamo «se e solo se».

Un'implicazione si può dimostrare anche passando per una frase equivalente. La <strong|contrapposizione> sostituisce <math|P⇒Q> con <math|¬Q⇒¬P>, che ha lo stesso significato. Nel nostro esempio diventa «un intero dispari non può essere multiplo di 4». Una prova <strong|per assurdo> segue un'altra strada ancora, perché assume le ipotesi insieme alla negazione della tesi e mostra che da queste segue una contraddizione.

<section|Insiemi, inclusione e operazioni>

Un insieme è una collezione di elementi. L'insieme <math|A={2,3}> contiene i numeri 2 e 3, e scriviamo <math|2∈A> per dire che 2 appartiene ad <math|A>. Di un insieme conta soltanto quali elementi contiene, non l'ordine in cui li elenchiamo né quante volte li ripetiamo, quindi <math|{2,3}={3,2}={2,2,3}>.

Spesso è più comodo descrivere un insieme attraverso una proprietà. Per esempio <math|{m∈ℤ:∃k∈ℤ,m=k<rsup|2>}> raccoglie gli interi che sono quadrati di un intero. Lo stesso insieme si scrive più brevemente <math|{k<rsup|2>:k∈ℤ}>, elencando i risultati che si ottengono al variare di <math|k>.

L'<strong|inclusione> <math|A⊆B> dice che ogni elemento di <math|A> appartiene anche a <math|B>. È una relazione fra due insiemi, e non va confusa con l'appartenenza <math|x∈A>, che riguarda un singolo elemento. Scriviamo <math|A⊊B> quando <math|A> è contenuto in <math|B> ma è diverso da <math|B>. L'inclusione dà anche un metodo pratico per dimostrare che due insiemi sono uguali, perché basta verificare che ciascuno è contenuto nell'altro.

Da due insiemi ne possiamo costruire altri. L'intersezione <math|A∩B> raccoglie gli elementi comuni, l'unione <math|A∪B> quelli che stanno in almeno uno dei due insiemi e la differenza <math|A∖B> quelli di <math|A> che non stanno in <math|B>. Con <math|A={1,2}> e <math|B={2,3}> otteniamo

<\equation*>
A∩B={2},<space|1em>A∪B={1,2,3},<space|1em>A∖B={1}.
</equation*>

Nella differenza l'ordine conta, infatti <math|B∖A={3}>.

Il <strong|prodotto cartesiano> <math|A×B> contiene le coppie ordinate <math|(a,b)> con <math|a∈A> e <math|b∈B>. Qui l'ordine è essenziale, perché la prima e la seconda coordinata hanno ruoli diversi e in generale <math|(a,b)≠(b,a)>.

L'<strong|insieme delle parti> <math|𝒫(A)> contiene tutti i sottoinsiemi di <math|A>. Se <math|A={1,2}>, allora <math|𝒫(A)={∅,{1},{2},{1,2}}>. Per contarli basta osservare che, per ciascuno dei due elementi, decidiamo se metterlo o no nel sottoinsieme, e queste due decisioni indipendenti danno quattro possibilità. Con <math|n> elementi le decisioni sono <math|n>, e i sottoinsiemi sono <math|2<rsup|n>>.

L'insieme vuoto <math|∅> non ha elementi ed è contenuto in ogni insieme. Può sembrare strano, ma per smentire l'inclusione <math|∅⊆B> servirebbe un elemento del vuoto che non sta in <math|B>, e un elemento del vuoto non esiste. Bisogna invece distinguerlo da <math|{∅}>, che ha esattamente un elemento, il vuoto stesso. In particolare <math|𝒫(∅)={∅}>.

<\verifica|1>
<strong|1.> Nega «per ogni anno esiste uno studente che fallisce tutti gli esami». Scrivi prima il predicato con tre variabili.

<strong|2.> Elenca <math|𝒫({a,b})>. Stabilisci poi quali frasi sono vere: <math|∅∈{∅}>, <math|∅⊆{∅}>, <math|{∅}⊆∅>.
</verifica>
