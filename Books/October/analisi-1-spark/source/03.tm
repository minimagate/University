<chapter|Induzione e disuguaglianza di Bernoulli>

<\inbreve>
Una formula può funzionare per i primi dieci numeri e sbagliare all'undicesimo, quindi controllare molti casi non basta a dimostrarla. Ci serve un modo per collegare ogni caso al successivo, così che la verità si propaghi da sola lungo tutti i naturali. È l'idea dell'induzione, che proviamo su alcune somme e che ci porta alla disuguaglianza di Bernoulli, uno strumento che useremo spesso con i limiti.
</inbreve>

<section|Base e passo: come raggiungere tutti i naturali>

In questo libro <math|ℕ={0,1,2,…}>. Molte proprietà dipendono da un indice naturale, come «la somma dei numeri da 1 a <math|n> vale <math|n(n+1)/2>». Per <math|n=1,2,3> possiamo controllarla a mano, e troviamo 1, 3 e 6, come previsto. Ma i naturali sono infiniti, e nessuna quantità di controlli li esaurisce. L'idea è allora di verificare un primo caso e poi spiegare, una volta per tutte, perché da un caso qualsiasi segue il successivo.

<\concetto|Principio di induzione>
Per dimostrare <math|P(n)> per ogni naturale <math|n≥n<rsub|0>>, bastano una <strong|base>, <math|P(n<rsub|0>)>, e un <strong|passo>: per ogni <math|n≥n<rsub|0>>, da <math|P(n)> segue <math|P(n+1)>.
</concetto>

Nel passo trattiamo <math|P(n)> come un'ipotesi provvisoria, detta ipotesi induttiva. Non stiamo dando per buona la conclusione, stiamo solo mostrando che, se un caso è vero, lo è anche quello dopo. È la base a mettere in moto la catena, come la prima tessera di una fila di domino.

<figura|@IMG(domino,0.85)|La prima tessera deve cadere e ogni tessera deve poter far cadere la successiva. Le due condizioni svolgono lavori diversi.>

Per le somme useremo un simbolo compatto. La scrittura <math|<big|sum><rsub|k=1><rsup|n>a<rsub|k>> abbrevia <math|a<rsub|1>+⋯+a<rsub|n>>, dove la lettera <math|k> indica quale addendo stiamo prendendo e <math|n> dice dove fermarci. Quando il limite superiore passa da <math|n> a <math|n+1>, la nuova somma è la vecchia più un addendo in più, ed è questo addendo a creare il ponte fra un caso e il successivo.

<section|Una prova completa: la somma dei quadrati>

Le prime somme dei quadrati valgono <math|0>, <math|0+1=1> e <math|0+1+4=5>. Una formula che le descrive tutte è

<\equation*>
<big|sum><rsub|k=0><rsup|n>k<rsup|2>=<frac|n(n+1)(2n+1)|6><space|2em>(n≥0).
</equation*>

La base <math|n=0> è immediata, perché entrambi i membri valgono 0.

Per il passo supponiamo che la formula valga all'indice <math|n> e guardiamo la somma fino a <math|n+1>. Separiamo l'ultimo addendo <math|(n+1)<rsup|2>>, così da far comparire la somma fino a <math|n>, l'unica di cui sappiamo qualcosa:

<\equation*>
<big|sum><rsub|k=0><rsup|n+1>k<rsup|2>=<frac|n(n+1)(2n+1)|6>+(n+1)<rsup|2>.
</equation*>

Ora sappiamo dove vogliamo arrivare, cioè alla stessa formula con <math|n+1> al posto di <math|n>. Quella formula contiene il fattore <math|(n+1)/6>, quindi conviene raccoglierlo subito. Nel fattore che resta troviamo

<\equation*>
n(2n+1)+6(n+1)=2n<rsup|2>+7n+6=(n+2)(2n+3),
</equation*>

e la somma nuova diventa

<\equation*>
<frac|(n+1)(n+2)(2n+3)|6>.
</equation*>

È esattamente la formula con <math|n+1> al posto di <math|n>, perché <math|2(n+1)+1=2n+3>. Il passo è concluso, e con esso l'induzione.

<subsection|La somma geometrica: far cancellare i termini>

Non tutte le formule richiedono l'induzione. In una somma geometrica ogni termine è il precedente moltiplicato per lo stesso numero <math|a>, e c'è un trucco che fa sparire quasi tutto. Se <math|S=1+a+⋯+a<rsup|n>>, allora <math|aS=a+a<rsup|2>+⋯+a<rsup|n+1>>. Le due somme hanno in comune tutti i termini intermedi, quindi sottraendole restano solo il primo e l'ultimo:

<\equation*>
(a-1)S=a<rsup|n+1>-1.
</equation*>

Se <math|a≠1> possiamo dividere e otteniamo <math|S=(a<rsup|n+1>-1)/(a-1)>. Se <math|a=1> dividere non è permesso, ma non serve, perché la somma contiene <math|n+1> addendi tutti uguali a 1 e vale <math|n+1>. La stessa formula si potrebbe dimostrare anche per induzione.

<section|Bernoulli: controllare un prodotto con una retta>

Immaginiamo un aumento del dieci per cento ripetuto <math|n> volte. Con <math|x=1/10>, il fattore complessivo è <math|(1+x)<rsup|n>>, perché ogni aumento si calcola anche su quelli precedenti. Se invece contassimo solo l'aumento semplice, senza interessi sugli interessi, otterremmo <math|1+nx>. È naturale aspettarsi che il primo numero sia almeno grande quanto il secondo, ed è ciò che afferma la disuguaglianza di Bernoulli, valida per molti più valori di <math|x>.

<\concetto|Disuguaglianza di Bernoulli>
Per ogni naturale <math|n≥1> e ogni reale <math|x≥-1>,

<\equation*>
(1+x)<rsup|n>≥1+nx.
</equation*>
</concetto>

Fissiamo <math|x≥-1> e ragioniamo per induzione su <math|n>. Per <math|n=1> i due membri sono uguali.

Supponiamo ora <math|(1+x)<rsup|n>≥1+nx>. Per passare alla potenza successiva dobbiamo moltiplicare entrambi i membri per <math|1+x>, e qui l'ipotesi <math|x≥-1> diventa essenziale. Una disuguaglianza moltiplicata per un numero negativo cambierebbe verso, mentre <math|1+x≥0> ci garantisce che il verso resta lo stesso. Otteniamo

<\equation*>
(1+x)<rsup|n+1>≥(1+nx)(1+x)=1+(n+1)x+nx<rsup|2>≥1+(n+1)x,
</equation*>

dove nell'ultimo passaggio abbiamo tolto il termine <math|nx<rsup|2>>, che non è mai negativo.

Anche il caso estremo <math|x=-1> è compreso, perché per <math|n≥1> la disuguaglianza diventa <math|0≥1-n>, che è vera. Abbiamo scelto la base <math|n=1> invece di <math|n=0> per non dover dare un significato a <math|0<rsup|0>>.

Bernoulli confronta una potenza con una retta, e per questo nei capitoli sui limiti ci aiuterà a tenere sotto controllo potenze e radici.

<section|Quando conviene rafforzare l'enunciato>

A volte l'induzione si inceppa, e il rimedio sorprendente è dimostrare qualcosa di più forte. Consideriamo

<\equation*>
S<rsub|n>=<big|sum><rsub|k=1><rsup|n><frac|1|k(k+1)>
</equation*>

e proviamo a dimostrare che <math|S<rsub|n>≤1>. Nel passo l'ipotesi <math|S<rsub|n>≤1> ci dice soltanto che <math|S<rsub|n+1>> è al massimo <math|1+1/((n+1)(n+2))>, un numero maggiore di 1, e quindi non arriviamo da nessuna parte. Il problema è che l'ipotesi non dice quanto margine resta sotto 1.

Calcoliamo allora i primi valori, che sono <math|1/2>, <math|2/3> e <math|3/4>. Sembra che <math|S<rsub|n>=n/(n+1)>, e questa affermazione, più precisa, contiene l'informazione sul margine che ci mancava. La base <math|n=1> funziona, e il passo diventa un semplice calcolo:

<\equation*>
S<rsub|n+1>=<frac|n|n+1>+<frac|1|(n+1)(n+2)>=<frac|n(n+2)+1|(n+1)(n+2)>=<frac|n+1|n+2>,
</equation*>

dove abbiamo usato <math|n(n+2)+1=(n+1)<rsup|2>>. L'uguaglianza si trasmette da un caso al successivo e implica subito <math|S<rsub|n>‹1>. Una prova per induzione, quindi, può diventare più facile quando porta con sé più informazioni.

<\verifica|3>
<strong|1.> Dimostra per induzione <math|1+2+⋯+n=n(n+1)/2> per <math|n≥1>. Spiega dove usi l'ipotesi.

<strong|2.> Determina per quali naturali vale <math|n!≥2<rsup|n>>, dove <math|0!=1> e <math|n!=1·2·⋯·n> per <math|n≥1>. Controlla i primi casi, poi scegli una base adatta.
</verifica>
