<chapter|Spazi vettoriali e sottospazi>

<\inbreve>
Le frecce del piano, i polinomi e le tabelle di numeri sono oggetti diversissimi, ma con tutti sappiamo fare le stesse due operazioni: sommarli fra loro e moltiplicarli per un numero. In questo capitolo raccogliamo le regole che queste operazioni rispettano nella definizione di spazio vettoriale. Poi guarderemo dentro uno spazio e cercheremo le sue parti che sono a loro volta spazi, i sottospazi, che saranno i protagonisti dei capitoli successivi.
</inbreve>

<section|Spazio vettoriale: le regole di somma e scalari>

Cominciamo dalle frecce del piano. Con <math|u=(1,2)> e <math|v=(3,-1)> otteniamo <math|u+v=(4,1)> e <math|2u=(2,4)>. Geometricamente la somma segue la regola del parallelogramma, mentre moltiplicare per un numero allunga o accorcia la freccia, e se il numero è negativo ne inverte anche il verso. Moltiplicare per zero dà la freccia nulla. Vogliamo isolare le regole che rendono possibili questi calcoli, per poterle usare anche con oggetti che non sono frecce.

I numeri per cui moltiplichiamo vengono da un campo <math|K>, di solito <math|ℝ> oppure <math|ℂ>, e li chiamiamo <strong|scalari>.

Uno <strong|spazio vettoriale su <math|K>> è un insieme <math|V>, i cui elementi chiamiamo vettori, dotato di una somma <math|V×V→V> e di un prodotto per scalare <math|K×V→V>. Entrambe le operazioni devono dare come risultato vettori di <math|V>. Inoltre, per ogni <math|u,v,w∈V> e <math|α,β∈K>, chiediamo che valgano queste regole:

<\itemize>

<item><math|(u+v)+w=u+(v+w)> e <math|u+v=v+u>;

<item>esiste un vettore nullo <math|0<rsub|V>> con <math|v+0<rsub|V>=v>;

<item>ogni <math|v> ha un opposto <math|-v> con <math|v+(-v)=0<rsub|V>>;

<item><math|α(u+v)=αu+αv> e <math|(α+β)v=αv+βv>;

<item><math|(αβ)v=α(βv)> e <math|1<rsub|K>v=v>.
</itemize>

Notiamo che non chiediamo di saper moltiplicare due vettori fra loro. In <math|αβ> moltiplichiamo due scalari, mentre in <math|αv> moltiplichiamo uno scalare per un vettore, e sono due operazioni diverse. Lo stesso accade nella regola <math|(α+β)v=αv+βv>, dove il primo segno di somma unisce due scalari e il secondo due vettori.

<\concetto|Spazio vettoriale>
Il punto comune fra frecce, polinomi, funzioni e matrici è poter fare somme e prodotti per scalari con queste regole. Dire su quale campo lavoriamo è parte della definizione.
</concetto>

L'esempio più importante è <math|K<rsup|n>>, l'insieme delle liste di <math|n> scalari, in cui le operazioni si fanno componente per componente:

<\equation*>
x+y=(x<rsub|1>+y<rsub|1>,…,x<rsub|n>+y<rsub|n>),
</equation*>

<\equation*>
αx=(αx<rsub|1>,…,αx<rsub|n>).
</equation*>

Per vedere come si verifica una regola, prendiamo l'associatività. La componente di posto <math|i> di <math|(x+y)+z> è <math|(x<rsub|i>+y<rsub|i>)+z<rsub|i>>. Nel campo questo numero è uguale a <math|x<rsub|i>+(y<rsub|i>+z<rsub|i>)>, che è la componente di posto <math|i> di <math|x+(y+z)>. Poiché tutte le componenti coincidono, coincidono anche i vettori. Le altre regole si verificano nello stesso modo, applicando a ogni componente la regola corrispondente del campo. Il vettore nullo è <math|(0,…,0)> e l'opposto di <math|x> è <math|(-x<rsub|1>,…,-x<rsub|n>)>.

<subsection|Che cosa significa moltiplicare per zero>

In uno spazio vettoriale ci sono due zeri, lo zero <math|0<rsub|K>> del campo e il vettore nullo <math|0<rsub|V>>. Sono oggetti diversi, ma gli assiomi li collegano in un modo che ci aspettiamo. Poiché <math|0<rsub|K>=0<rsub|K>+0<rsub|K>>, la distributività dà <math|0<rsub|K>v=0<rsub|K>v+0<rsub|K>v>. Sottraendo <math|0<rsub|K>v> a entrambi i membri otteniamo <math|0<rsub|K>v=0<rsub|V>>.

Con lo stesso ragionamento, partendo da <math|0<rsub|V>=0<rsub|V>+0<rsub|V>>, troviamo <math|α0<rsub|V>=0<rsub|V>> per ogni scalare <math|α>. Infine <math|v+(-1<rsub|K>)v=(1<rsub|K>-1<rsub|K>)v=0<rsub|V>>, e quindi <math|(-1<rsub|K>)v> è proprio l'opposto <math|-v>.

D'ora in poi scriveremo spesso soltanto 0, lasciando al contesto il compito di dire se si tratta di uno scalare o di un vettore.

<section|Polinomi, funzioni e matrici come vettori>

<subsection|Polinomi: lavorare sui coefficienti>

Due <strong|polinomi formali> di <math|K[X]> si sommano sommando i coefficienti delle stesse potenze, e un polinomio si moltiplica per uno scalare moltiplicando tutti i suoi coefficienti. Per esempio <math|(1+2X)+(3-X)=4+X>. Il vettore nullo è il polinomio con tutti i coefficienti nulli, e le regole del campo valgono coefficiente per coefficiente. La lettera <math|X> è soltanto un segnaposto, e due polinomi sono uguali quando hanno gli stessi coefficienti.

Fissato un numero <math|d>, i polinomi di grado al più <math|d>, insieme al polinomio nullo, formano lo spazio <math|K<rsub|d>[X]>. Le operazioni non possono far salire il grado oltre <math|d>, ma possono farlo scendere. Per esempio <math|(X<rsup|2>+X)+(-X<rsup|2>+1)=X+1>. È per questo che i polinomi di grado <em|esattamente> 2 non formano uno spazio: la somma di due di loro può avere grado più basso, e inoltre fra loro manca il polinomio nullo.

<subsection|Funzioni: lavorare punto per punto>

Anche le <strong|funzioni> <math|f,g:D→K> definite su uno stesso insieme <math|D> formano uno spazio vettoriale, con le operazioni fatte punto per punto:

<\equation*>
(f+g)(t)=f(t)+g(t),<space|2em>(αf)(t)=αf(t).
</equation*>

Se <math|f(3)=5> e <math|g(3)=7>, la funzione <math|f+g> nel punto 3 vale 12. Il vettore nullo è la funzione che vale zero ovunque. Per verificare una regola dobbiamo controllarla in ogni punto <math|t>. Le funzioni <math|(f+g)+h> e <math|f+(g+h)>, per esempio, valgono in <math|t> rispettivamente <math|(f(t)+g(t))+h(t)> e <math|f(t)+(g(t)+h(t))>, due numeri uguali nel campo.

<subsection|Matrici: lavorare casella per casella>

Una <strong|matrice> <math|A=(a<rsub|ij>)> di tipo <math|m×n> è una tabella di scalari con <math|m> righe e <math|n> colonne, in cui il primo indice indica la riga e il secondo la colonna. Le matrici dello stesso tipo formano lo spazio <math|M<rsub|m,n>(K)>, con le operazioni fatte casella per casella: <math|(A+B)<rsub|ij>=a<rsub|ij>+b<rsub|ij>> e <math|(αA)<rsub|ij>=αa<rsub|ij>>. Lo zero è la tabella piena di zeri. Si possono sommare soltanto matrici dello stesso tipo, e il prodotto fra matrici, che incontreremo più avanti, è un'operazione completamente diversa.

<subsection|Lo stesso insieme su campi diversi>

L'insieme <math|ℂ> è uno spazio vettoriale su <math|ℂ>, con il prodotto usuale come prodotto per scalare. Possiamo però decidere di ammettere come scalari soltanto i numeri reali, e allora <math|ℂ> diventa uno spazio vettoriale su <math|ℝ>. Entrambe le strutture rispettano gli assiomi, ma le combinazioni che possiamo formare sono diverse. Nella prima possiamo scrivere <math|i·1>, nella seconda no, perché <math|i> non è uno scalare ammesso. Questa differenza tornerà quando parleremo di basi e di dimensione.

<section|Sottospazi: quando le operazioni restano dentro>

Dentro <math|ℝ<rsup|2>> consideriamo la retta <math|L={t(1,2):t∈ℝ}>. Se sommiamo due suoi vettori otteniamo <math|s(1,2)+t(1,2)=(s+t)(1,2)>, che sta ancora sulla retta, e lo stesso accade moltiplicando per uno scalare, perché <math|α(t(1,2))=(αt)(1,2)>. Le due operazioni non ci fanno mai uscire dalla retta, e quindi la retta è a sua volta uno spazio vettoriale.

In generale chiamiamo <strong|sottospazio> di <math|V> un sottoinsieme <math|W> che è uno spazio vettoriale con le stesse operazioni e lo stesso campo di <math|V>. Per riconoscerlo non dobbiamo ricontrollare tutti gli assiomi. Le regole che sono uguaglianze, come l'associatività o la distributività, valgono già in <math|V> e quindi anche in <math|W>. Dobbiamo solo assicurarci che le operazioni non portino fuori da <math|W> e che in <math|W> ci siano lo zero e gli opposti.

<\concetto|Criterio di sottospazio>
Un sottoinsieme <math|W⊆V> è un sottospazio se e solo se contiene <math|0<rsub|V>>, è chiuso per somma ed è chiuso per prodotto con ogni scalare di <math|K>.
</concetto>

Le tre condizioni sono necessarie, perché un sottospazio deve contenere lo zero e deve essere chiuso per le operazioni. Sono anche sufficienti. Le due chiusure garantiscono che le operazioni restino interne, lo zero è presente per ipotesi e l'opposto di ogni <math|w∈W> è <math|(-1)w>, che sta in <math|W> per la chiusura rispetto agli scalari. Tutte le altre regole sono ereditate da <math|V>.

Al posto di chiedere <math|0∈W> potremmo chiedere soltanto che <math|W> non sia vuoto. Se contiene un vettore <math|w>, infatti, contiene anche <math|0<rsub|K>w=0<rsub|V>>. Le sole chiusure, senza nessuna delle due richieste, non basterebbero, perché l'insieme vuoto è chiuso per entrambe le operazioni senza essere uno spazio.

<figura|@IMG(rette,0.9)|Una retta per l'origine resta chiusa per somme e multipli. Una retta che non contiene l'origine non è un sottospazio: manca il vettore nullo.>

Il piano <math|{(x,y,0):x,y∈ℝ}> è un sottospazio di <math|ℝ<rsup|3>>. Somiglia moltissimo a <math|ℝ<rsup|2>>, ma i suoi elementi sono terne, e conviene non confondere la coppia <math|(x,y)> con la terna <math|(x,y,0)>.

Un esempio più interessante è <math|W={(x,y,z)∈ℝ<rsup|3>:2x-y+3z=0}>. Se <math|u=(x,y,z)> e <math|u'=(x',y',z')> soddisfano l'equazione, anche la loro somma la soddisfa, perché

<\equation*>
2(x+x')-(y+y')+3(z+z')=(2x-y+3z)+(2x'-y'+3z')=0.
</equation*>

Per un multiplo l'espressione diventa <math|α(2x-y+3z)=α·0=0>, e lo zero soddisfa chiaramente l'equazione. Dunque <math|W> è un sottospazio, e lo stesso argomento funziona per qualsiasi sistema di equazioni lineari omogenee, cioè con termini noti nulli. Se invece l'equazione fosse <math|2x-y+3z=1>, lo zero non la soddisferebbe e il criterio fallirebbe subito.

Oltre a riconoscere i vettori di <math|W>, possiamo anche costruirli tutti. Ricaviamo <math|y=2x+3z> e lasciamo liberi <math|x=s> e <math|z=t>. I vettori di <math|W> sono allora tutti e soli quelli della forma

<\equation*>
(s,2s+3t,t)=s(1,2,0)+t(0,3,1).
</equation*>

L'equazione ci dice quali vettori sono ammessi, mentre i parametri ci dicono come ottenerli a partire da due vettori fissati. Nel prossimo capitolo daremo un nome a questo modo di costruire un sottospazio.

<section|Intersezione e unione di sottospazi>

Se <math|U> e <math|W> sono sottospazi dello stesso spazio <math|V>, la loro <strong|intersezione> è sempre un sottospazio. Contiene lo zero, perché lo contengono entrambi. Se due vettori stanno nell'intersezione, stanno sia in <math|U> sia in <math|W>, e quindi anche la loro somma e i loro multipli stanno in entrambi. Lo stesso ragionamento funziona per l'intersezione di quanti sottospazi vogliamo.

Con l'<strong|unione> le cose vanno diversamente. Nell'unione dei due assi di <math|ℝ<rsup|2>> troviamo <math|(1,0)> e <math|(0,1)>, ma non la loro somma <math|(1,1)>, che non sta su nessuno dei due assi. La chiusura per somma fallisce, e l'unione non è un sottospazio.

Si può dire esattamente quando l'unione funziona: <math|U∪W> è un sottospazio se e solo se uno dei due è contenuto nell'altro. In quel caso, infatti, l'unione coincide con il più grande dei due. Se invece nessuno dei due contiene l'altro, scegliamo <math|u∈U> che non sta in <math|W> e <math|w∈W> che non sta in <math|U>, e guardiamo la somma <math|u+w>. Se stesse in <math|U>, anche <math|w=(u+w)-u> starebbe in <math|U>. Se stesse in <math|W>, anche <math|u=(u+w)-w> starebbe in <math|W>. Entrambe le possibilità contraddicono la nostra scelta, quindi <math|u+w> non sta nell'unione e la chiusura per somma fallisce.

<\verifica|4>
<strong|4.1.> L'insieme dei polinomi <math|p∈ℝ<rsub|3>[X]> con <math|p(1)=0> è un sottospazio? E quello con <math|p(1)=2>? Usa il comportamento della valutazione rispetto alle due operazioni.

<strong|4.2.> In <math|ℝ<rsup|3>> considera <math|H={(x,y,z):x+y+z=0}>. Descrivi tutti i suoi vettori con due parametri. Decidi se <math|(1,1,-2)> appartiene a <math|H> e spiega perché.
</verifica>
