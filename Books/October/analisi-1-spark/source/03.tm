<chapter|Induzione e disuguaglianza di Bernoulli>

<\inbreve>
Come dimostriamo una formula per tutti i naturali senza controllarli uno alla volta? Partiamo da somme e prodotti che sappiamo calcolare. L'induzione collegherà ogni caso al successivo e ci permetterà di dimostrare anche la disuguaglianza di Bernoulli.
</inbreve>

<section|Base e passo: come raggiungere tutti i naturali>

Useremo <math|ℕ={0,1,2,…}>. Una proprietà <math|P(n)> può dipendere da un indice naturale. Per esempio «la somma da 1 a <math|n> vale <math|n(n+1)/2>». Con <math|n=1,2,3> possiamo controllarla direttamente. Ma per dimostrarla da 1 in poi dobbiamo verificare un primo caso e spiegare come passare da un caso qualsiasi al successivo.

<\concetto|Principio di induzione>
Per dimostrare <math|P(n)> per ogni naturale <math|n≥n<rsub|0>>, bastano una <strong|base>, <math|P(n<rsub|0>)>, e un <strong|passo>: per ogni <math|n≥n<rsub|0>>, da <math|P(n)> segue <math|P(n+1)>.
</concetto>

Nel passo, <math|P(n)> è un'ipotesi temporanea. Non stiamo assumendo tutta la conclusione: proviamo che, se un caso è vero, lo sarà il seguente. La base mette in moto questo collegamento.

<figura|@IMG(domino,0.85)|La prima tessera deve cadere e ogni tessera deve poter far cadere la successiva. Le due condizioni svolgono lavori diversi.>

Il simbolo <math|<big|sum><rsub|k=1><rsup|n>a<rsub|k>> abbrevia <math|a<rsub|1>+⋯+a<rsub|n>>. La lettera <math|k> indica quale addendo stiamo sommando; <math|n> indica dove fermarci.

Quando il limite superiore diventa <math|n+1>, la nuova somma contiene quella vecchia più un addendo. Questo è il punto in cui l'ipotesi induttiva può essere utile.

<section|Una prova completa: la somma dei quadrati>

Le prime somme sono <math|0=0>, <math|0+1=1>, <math|0+1+4=5>. Una formula che le descrive è

<\equation*>
<big|sum><rsub|k=0><rsup|n>k<rsup|2>=<frac|n(n+1)(2n+1)|6><space|2em>(n≥0).
</equation*>

La base <math|n=0> dà <math|0=0>.

Per il passo supponiamo valida la formula all'indice <math|n>. Il caso nuovo contiene l'addendo <math|(n+1)<rsup|2>>; lo separiamo proprio per far comparire la somma su cui abbiamo informazioni:

<\equation*>
<big|sum><rsub|k=0><rsup|n+1>k<rsup|2>=<frac|n(n+1)(2n+1)|6>+(n+1)<rsup|2>.
</equation*>

Vogliamo riconoscere la formula con <math|n+1> al posto di <math|n>. Raccogliamo perciò il fattore <math|(n+1)/6>, che deve comparire nel risultato. Nel fattore rimasto troviamo

<\equation*>
n(2n+1)+6(n+1)=2n<rsup|2>+7n+6=(n+2)(2n+3).
</equation*>

Quindi la somma nuova è

<\equation*>
<frac|(n+1)(n+2)(2n+3)|6>,
</equation*>

cioè la stessa formula con <math|n+1> al posto di <math|n>. Questo conclude il passo e dunque l'induzione.

<subsection|La somma geometrica: far cancellare i termini>

In una somma geometrica ogni termine si ottiene moltiplicando il precedente per lo stesso numero. Per calcolarla possiamo cercare una cancellazione. Se <math|S=1+a+⋯+a<rsup|n>>, allora <math|aS=a+a<rsup|2>+⋯+a<rsup|n+1>>. Sottraendo, i termini intermedi scompaiono:

<\equation*>
(a-1)S=a<rsup|n+1>-1.
</equation*>

Per <math|a≠1> otteniamo <math|S=(a<rsup|n+1>-1)/(a-1)>.

Per <math|a=1> non dividiamo per zero: contiamo <math|n+1> addendi uguali a 1, quindi <math|S=n+1>. L'induzione offre una prova alternativa.

<section|Bernoulli: controllare un prodotto con una retta>

Con <math|x=1/10>, l'espressione <math|(1+x)<rsup|n>> applica ripetutamente un aumento del dieci per cento. La quantità <math|1+nx> tiene soltanto l'aumento semplice. La disuguaglianza di Bernoulli precisa che il prodotto ripetuto non è più piccolo:

<\concetto|Disuguaglianza di Bernoulli>
Per ogni naturale <math|n≥1> e ogni reale <math|x≥-1>,

<\equation*>
(1+x)<rsup|n>≥1+nx.
</equation*>
</concetto>

Fissiamo <math|x≥-1> e procediamo per induzione su <math|n>. La base <math|n=1> è un'uguaglianza.

Supponiamo <math|(1+x)<rsup|n>≥1+nx>. Per arrivare alla potenza successiva dobbiamo moltiplicare per <math|1+x>. È qui che serve l'ipotesi sul segno: <math|1+x≥0>, perciò il verso si conserva. Otteniamo

<\equation*>
(1+x)<rsup|n+1>≥(1+nx)(1+x)=1+(n+1)x+nx<rsup|2>≥1+(n+1)x.
</equation*>

L'ultimo passaggio elimina il termine non negativo <math|nx<rsup|2>>.

Il caso <math|x=-1> è compreso: per <math|n≥1>, <math|0≥1-n>. Per <math|n=0> la formula vale quando la potenza è definita, ma scegliendo la base 1 evitiamo di dover attribuire un significato a <math|0<rsup|0>>.

Bernoulli confronta una potenza con una retta. Nei limiti ci permetterà di controllare potenze e radici.

<section|Quando conviene rafforzare l'enunciato>

Consideriamo <math|S<rsub|n>=<big|sum><rsub|k=1><rsup|n>1/(k(k+1))>. Per dimostrare <math|S<rsub|n>≤1>, l'ipotesi <math|S<rsub|n>≤1> sembra poco utile: aggiungere un termine positivo dà soltanto un numero minore o uguale a <math|1+1/((n+1)(n+2))>, che supera 1.

Ci serve sapere quanto margine rimane. I primi risultati sono <math|1/2,2/3,3/4>. Proviamo l'affermazione più precisa <math|S<rsub|n>=n/(n+1)>. La base <math|n=1> funziona.

Nel passo,

<\equation*>
S<rsub|n+1>=<frac|n|n+1>+<frac|1|(n+1)(n+2)>=<frac|n(n+2)+1|(n+1)(n+2)>=<frac|n+1|n+2>.
</equation*>

Abbiamo usato <math|n(n+2)+1=(n+1)<rsup|2>>. L'uguaglianza più forte si lascia trasportare al caso successivo e implica <math|S<rsub|n>‹1>. Una prova può quindi diventare più semplice quando conserva più informazioni.

<\verifica|3>
<strong|1.> Dimostra per induzione <math|1+2+⋯+n=n(n+1)/2> per <math|n≥1>. Spiega dove usi l'ipotesi.

<strong|2.> Determina per quali naturali vale <math|n!≥2<rsup|n>>, dove <math|0!=1> e <math|n!=1·2·⋯·n> per <math|n≥1>. Controlla i primi casi, poi scegli una base adatta.
</verifica>
