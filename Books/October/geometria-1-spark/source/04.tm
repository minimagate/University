<chapter|Spazi vettoriali e sottospazi>

<\inbreve>
Che cosa hanno in comune frecce, polinomi e matrici? Sappiamo sommarli e moltiplicarli per numeri. Raccoglieremo le regole comuni nella definizione di spazio vettoriale e impareremo a riconoscerne i sottospazi.
</inbreve>

<section|Spazio vettoriale: le regole di somma e scalari>

Con <math|u=(1,2)> e <math|v=(3,-1)> otteniamo <math|u+v=(4,1)> e <math|2u=(2,4)>. Per le frecce la somma segue il parallelogramma; un multiplo cambia lunghezza e, se negativo, verso. Zero dà la freccia nulla. Conserveremo queste regole anche per oggetti diversi.

Sia <math|K> un campo, come <math|ℝ> o <math|ℂ>. I suoi elementi saranno gli <strong|scalari>.

Uno <strong|spazio vettoriale su <math|K>> è un insieme <math|V>, i cui elementi chiamiamo vettori, con una somma <math|V×V→V> e un prodotto per scalare <math|K×V→V>. Le operazioni devono restituire vettori di <math|V>. Per ogni <math|u,v,w∈V> e <math|α,β∈K> richiediamo:

<\itemize>

<item><math|(u+v)+w=u+(v+w)> e <math|u+v=v+u>;

<item>esiste un vettore nullo <math|0<rsub|V>> con <math|v+0<rsub|V>=v>;

<item>ogni <math|v> ha un opposto <math|-v> con <math|v+(-v)=0<rsub|V>>;

<item><math|α(u+v)=αu+αv> e <math|(α+β)v=αv+βv>;

<item><math|(αβ)v=α(βv)> e <math|1<rsub|K>v=v>.
</itemize>

Non richiediamo un prodotto di due vettori. In <math|αβ> moltiplichiamo due scalari; in <math|αv> uno scalare e un vettore. Anche i due segni di somma in <math|(α+β)v=αv+βv> agiscono su insiemi diversi.

<\concetto|Spazio vettoriale>
Il punto comune fra frecce, polinomi, funzioni e matrici è poter fare somme e prodotti per scalari con queste regole. Dire su quale campo lavoriamo è parte della definizione.
</concetto>

In <math|K<rsup|n>> definiamo le operazioni componente per componente:

<\equation*>
x+y=(x<rsub|1>+y<rsub|1>,…,x<rsub|n>+y<rsub|n>),
</equation*>

<\equation*>
αx=(αx<rsub|1>,…,αx<rsub|n>).
</equation*>

Per capire una verifica, guardiamo l'associatività. La componente <math|i> di <math|(x+y)+z> è <math|(x<rsub|i>+y<rsub|i>)+z<rsub|i>>. Nel campo questa vale <math|x<rsub|i>+(y<rsub|i>+z<rsub|i>)>, componente di <math|x+(y+z)>. Tutte le componenti coincidono, dunque coincidono i vettori.

Le due distributività, la compatibilità e l'azione dell'unità si verificano applicando la corrispondente regola del campo a ciascuna componente. Zero e opposto sono <math|(0,…,0)> e <math|(-x<rsub|1>,…,-x<rsub|n>)>.

<subsection|Che cosa significa moltiplicare per zero>

Lo zero del campo e il vettore nullo sono oggetti diversi. Gli assiomi collegano i loro ruoli. Da <math|0<rsub|K>v=(0<rsub|K>+0<rsub|K>)v=0<rsub|K>v+0<rsub|K>v>, sottraendo <math|0<rsub|K>v> ai due membri, segue <math|0<rsub|K>v=0<rsub|V>>.

Da <math|α0<rsub|V>=α(0<rsub|V>+0<rsub|V>)=α0<rsub|V>+α0<rsub|V>> segue nello stesso modo <math|α0<rsub|V>=0<rsub|V>>.

Infine <math|v+(-1<rsub|K>)v=(1<rsub|K>-1<rsub|K>)v=0<rsub|V>>, quindi <math|(-1<rsub|K>)v=-v>.

Nel seguito scriveremo spesso soltanto 0: il contesto dirà se è uno scalare oppure un vettore.

<section|Polinomi, funzioni e matrici come vettori>

<subsection|Polinomi: lavorare sui coefficienti>

Per <strong|polinomi formali> <math|K[X]> sommiamo i coefficienti della stessa potenza e moltiplichiamo tutti i coefficienti per lo scalare. Per esempio <math|(1+2X)+(3-X)=4+X>. Il vettore nullo ha tutti i coefficienti zero. Le regole del campo valgono coefficiente per coefficiente. Il simbolo <math|X> è formale: due polinomi sono uguali quando hanno gli stessi coefficienti.

I polinomi di grado al più <math|d>, incluso il polinomio nullo, formano <math|K<rsub|d>[X]>. Le operazioni non alzano il grado oltre <math|d>. Il grado può invece abbassarsi: <math|(X<rsup|2>+X)+(-X<rsup|2>+1)=X+1>. Perciò i polinomi di grado <em|esattamente> 2 non formano uno spazio con queste operazioni; manca anche il polinomio nullo.

<subsection|Funzioni: lavorare punto per punto>

Per le <strong|funzioni> <math|f,g:D→K>, con dominio fissato <math|D>, le operazioni sono punto per punto:

<\equation*>
(f+g)(t)=f(t)+g(t),<space|2em>(αf)(t)=αf(t).
</equation*>

Se <math|f(3)=5> e <math|g(3)=7>, la funzione <math|f+g> vale 12 nel punto 3. Il vettore nullo è la funzione sempre nulla.

Verificare un assioma significa verificarlo per ogni <math|t>: per esempio le due funzioni <math|(f+g)+h> e <math|f+(g+h)> hanno valori <math|(f(t)+g(t))+h(t)> e <math|f(t)+(g(t)+h(t))>, uguali nel campo.

<subsection|Matrici: lavorare casella per casella>

Una <strong|matrice> <math|A=(a<rsub|ij>)> di tipo <math|m×n> è una tabella con <math|m> righe e <math|n> colonne. Il primo indice indica la riga, il secondo la colonna.

In <math|M<rsub|m,n>(K)> poniamo <math|(A+B)<rsub|ij>=a<rsub|ij>+b<rsub|ij>> e <math|(αA)<rsub|ij>=αa<rsub|ij>>. Zero è la tabella di tutti zeri.

Gli assiomi si verificano casella per casella; le matrici da sommare devono avere lo stesso tipo. Il prodotto tra matrici sarà un'altra operazione, introdotta più avanti.

<subsection|Lo stesso insieme su campi diversi>

Infine <math|ℂ> è uno spazio su <math|ℂ> con il prodotto usuale come prodotto per scalare. Possiamo anche ammettere soltanto scalari reali e considerarlo su <math|ℝ>.

Entrambe le strutture rispettano gli assiomi, ma le combinazioni consentite cambiano: <math|i·1> è lecito nella prima, mentre nella seconda il coefficiente <math|i> non è ammesso. Ritroveremo questa differenza studiando basi e dimensione.

<section|Sottospazi: quando le operazioni restano dentro>

Dentro <math|ℝ<rsup|2>> consideriamo la retta <math|L={t(1,2):t∈ℝ}>. Sommare due suoi vettori dà <math|s(1,2)+t(1,2)=(s+t)(1,2)>, ancora sulla retta. Anche moltiplicare per <math|α> dà <math|(αs)(1,2)>. La retta conserva le due operazioni.

Un <strong|sottospazio> <math|W> di <math|V> è un sottoinsieme che è uno spazio vettoriale con le stesse operazioni e lo stesso campo di <math|V>. Gli assiomi di uguaglianza, come associatività e distributività, sono già veri nello spazio ambiente. Dobbiamo garantire che i risultati restino in <math|W> e che vi siano zero e opposti.

<\concetto|Criterio di sottospazio>
Un sottoinsieme <math|W⊆V> è un sottospazio se e solo se contiene <math|0<rsub|V>>, è chiuso per somma ed è chiuso per prodotto con ogni scalare di <math|K>.
</concetto>

La necessità segue dalla definizione; in particolare, preso <math|w∈W>, anche <math|0<rsub|K>w=0<rsub|V>> deve stare in <math|W>. Viceversa, le tre condizioni garantiscono operazioni interne, il vettore nullo e gli opposti, perché <math|-w=(-1)w∈W>. Gli altri assiomi sono ereditati da <math|V>. Abbiamo così dimostrato la sufficienza.

Al posto di chiedere <math|0∈W> possiamo chiedere <math|W≠∅>: con la chiusura per scalari, un qualunque elemento produce zero. La sola chiusura non basta: l'insieme vuoto la soddisfa senza essere uno spazio.

<figura|@IMG(rette,0.9)|Una retta per l'origine conserva somme e multipli. Una retta che non contiene l'origine non è un sottospazio: manca il vettore nullo.>

Il piano <math|{(x,y,0):x,y∈ℝ}> è un sottospazio di <math|ℝ<rsup|3>>. È una copia di <math|ℝ<rsup|2>>, ma i suoi elementi sono terne: non bisogna confondere la coppia <math|(x,y)> con la terna <math|(x,y,0)>.

Un esempio più utile è <math|W={(x,y,z)∈ℝ<rsup|3>:2x-y+3z=0}>. Se <math|u=(x,y,z)> e <math|u'=(x',y',z')> stanno in <math|W>, allora

<\equation*>
2(x+x')-(y+y')+3(z+z')=(2x-y+3z)+(2x'-y'+3z')=0.
</equation*>

Per un multiplo l'espressione diventa <math|α(2x-y+3z)=0>. Zero soddisfa l'equazione. È dunque un sottospazio. Lo stesso argomento vale per qualunque sistema di equazioni lineari omogenee. Con termine noto 1 lo zero non soddisfa l'equazione, quindi il criterio fallisce.

Possiamo anche costruire tutti i vettori di <math|W>. Isoliamo <math|y=2x+3z> e lasciamo liberi <math|x=s,z=t>. Otteniamo

<\equation*>
(s,2s+3t,t)=s(1,2,0)+t(0,3,1).
</equation*>

Le equazioni indicano quali vettori sono ammessi; i parametri mostrano come ottenerli. Nel prossimo capitolo daremo un nome all'insieme di queste combinazioni.

<section|Intersezione e unione di sottospazi>

Se <math|U,W> sono sottospazi dello stesso <math|V>, la loro <strong|intersezione> è sempre un sottospazio. Contiene zero. Due vettori nell'intersezione stanno in entrambi i sottospazi; la loro somma e ogni multiplo stanno ancora in entrambi, dunque nell'intersezione. La dimostrazione vale anche per una famiglia arbitraria di sottospazi.

Per l'<strong|unione> la situazione cambia. Nell'unione dei due assi di <math|ℝ<rsup|2>> troviamo <math|(1,0)> e <math|(0,1)>, ma non <math|(1,1)>: la chiusura per somma fallisce.

Precisamente, <math|U∪W> è un sottospazio se e solo se <math|U⊆W> oppure <math|W⊆U>. Se uno contiene l'altro, l'unione coincide col più grande.

Se nessuno contiene l'altro, scegliamo <math|u∈U> fuori da <math|W> e <math|w∈W> fuori da <math|U>. La somma <math|u+w> non può stare nell'unione: se stesse in <math|U>, avremmo <math|w=(u+w)-u∈U>; se stesse in <math|W>, avremmo <math|u=(u+w)-w∈W>. Entrambi i casi contraddicono la scelta. Manca dunque la chiusura per somma.

<\verifica|4>
<strong|4.1.> L'insieme dei polinomi <math|p∈ℝ<rsub|3>[X]> con <math|p(1)=0> è un sottospazio? E quello con <math|p(1)=2>? Usa il comportamento della valutazione rispetto alle due operazioni.

<strong|4.2.> In <math|ℝ<rsup|3>> considera <math|H={(x,y,z):x+y+z=0}>. Descrivi tutti i suoi vettori con due parametri. Decidi se <math|(1,1,-2)> appartiene a <math|H> e spiega perché.
</verifica>
