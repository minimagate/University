<chapter|Gruppi, anelli e campi>

<\inbreve>
Abbiamo fatto conti con interi e classi di resto. Quali regole rimangono valide quando cambiano gli oggetti? Gruppi, anelli e campi danno un nome preciso a queste regole. Partiremo dalle operazioni che conosciamo e capiremo che cosa possiamo chiedere loro.
</inbreve>

<section|Prima domanda: su quali oggetti facciamo i conti?>

Sommiamo due interi: otteniamo ancora un intero. Sommiamo due classi modulo 5: otteniamo ancora una classe modulo 5. Gli oggetti sono diversi, ma in entrambi i casi possiamo sommare, usare uno zero e trovare un opposto.

Ora moltiplichiamo due interi. Il prodotto rimane intero, ma una regola cambia: l'equazione <math|2x=1> non ha soluzione intera. Non possiamo sempre annullare una moltiplicazione restando nello stesso insieme.

Per questo una struttura comprende <strong|sia l'insieme sia le operazioni>. Dire soltanto «gli interi» non ci dice se stiamo studiando la somma o il prodotto.

Un'<strong|operazione binaria interna> su <math|G> è una funzione <math|G×G→G>. Prende due elementi e restituisce un elemento dello stesso insieme. La sottrazione è interna su <math|ℤ>, ma non su <math|ℕ>: <math|2-5=-3> esce dai naturali.

<section|Gruppo: un'operazione che possiamo invertire>

Guardiamo <math|(ℤ,+)>. Possiamo raggruppare le somme senza cambiarne il risultato; sommare zero lascia fermo ogni numero; a ogni intero possiamo sommare il suo opposto per ottenere zero. Queste tre proprietà sono il modello della definizione.

<\concetto|Gruppo>
Un <strong|gruppo> è un insieme <math|G> con un'operazione interna, scritta <math|xy>, tale che:

<\itemize>
<item>è <strong|associativa>: <math|(xy)z=x(yz)> per ogni <math|x,y,z∈G>;

<item>ha un <strong|elemento neutro> <math|e>: <math|xe=ex=x> per ogni <math|x∈G>;

<item>ogni <math|x> ha un <strong|inverso> <math|x<rsup|-1>> con <math|xx<rsup|-1>=x<rsup|-1>x=e>.
</itemize>

Se inoltre <math|xy=yx> per ogni coppia, il gruppo si chiama <strong|abeliano>.
</concetto>

Associatività e commutatività chiedono cose diverse. La prima permette di spostare le parentesi; la seconda di scambiare gli elementi. Un gruppo deve avere la prima proprietà; può non avere la seconda. Vedremo un esempio con le permutazioni.

Con la somma scriviamo <math|0> al posto di <math|e> e <math|-x> al posto di <math|x<rsup|-1>>. L'inverso additivo di 3 è <math|-3>; l'inverso moltiplicativo sarebbe <math|1/3>. È sempre l'operazione a decidere che cosa significa «inverso».

Perciò <math|(ℤ,+)> e <math|(ℤ/nℤ,+)> sono gruppi abeliani. Invece <math|(ℕ,+)> non è un gruppo, perché manca l'opposto di 1. Anche <math|(ℤ,·)> fallisce: manca l'inverso moltiplicativo di 2.

<subsection|Perché in un gruppo possiamo cancellare>

Supponiamo <math|ax=ay>. L'ostacolo è il fattore <math|a> davanti alle incognite. La definizione di gruppo ci offre un elemento che lo annulla: <math|a<rsup|-1>>. Moltiplichiamo <em|a sinistra> entrambi i membri:

<\equation*>
a<rsup|-1>(ax)=a<rsup|-1>(ay).
</equation*>

Per associatività possiamo raggruppare <math|a<rsup|-1>a>. Otteniamo <math|ex=ey>, dunque <math|x=y>. Da <math|xa=ya> useremmo invece l'inverso a destra. Non abbiamo scambiato nessun fattore.

Anche il neutro e gli inversi sono unici. Se <math|e,f> fossero due neutri, <math|ef=e> perché <math|f> è neutro, ma <math|ef=f> perché lo è <math|e>: quindi <math|e=f>. Se <math|u,v> fossero due inversi di <math|x>, allora <math|u=u(xv)=(ux)v=v>. L’inverso di <math|x<rsup|-1>> è quindi <math|x>. Possiamo così parlare di <em|quel> neutro e di <em|quell'>inverso.

<section|Anello: somma e prodotto insieme>

Un gruppo descrive una sola operazione. Per studiare anche espressioni come <math|a(b+c)> dobbiamo collegare somma e prodotto.

<\concetto|Anello>
Un <strong|anello> ha due operazioni interne. La somma forma un gruppo abeliano; il prodotto è associativo; valgono le due leggi distributive <math|a(b+c)=ab+ac> e <math|(a+b)c=ac+bc>.

Nel seguito lavoriamo con <strong|anelli commutativi con identità>: richiediamo anche <math|ab=ba> e un elemento <math|1> neutro per il prodotto. Esistono anelli più generali, ma queste sono le proprietà usate nei nostri esempi.
</concetto>

Gli interi e le classi modulo <math|n> sono anelli di questo tipo. In <math|ℤ/nℤ> lo zero è <math|[0]> e l'uno è <math|[1]>. Le regole discendono da quelle degli interi, dopo la verifica della buona definizione fatta nel capitolo 7.

Essere un anello non garantisce gli inversi moltiplicativi. Chiamiamo <strong|unità> gli elementi che li hanno. Le unità formano un gruppo con il prodotto: contengono 1; il prodotto di due unità ha inverso dato dal prodotto dei loro inversi; l'inverso di un'unità è a sua volta un'unità.

Per le classi di resto conosciamo già il criterio:

<\equation*>
(ℤ/nℤ)<rsup|×>=<around|{|[a]<rsub|n>:gcd(a,n)=1|}>.
</equation*>

Modulo 12 le unità sono <math|[1],[5],[7],[11]>. La classe <math|[3]> ha un opposto additivo, <math|[9]>, ma non un inverso moltiplicativo. Sono due domande diverse sullo stesso oggetto.

<section|Campo: dividere per ogni elemento non nullo>

<\concetto|Campo>
Un <strong|campo> è un anello commutativo con identità, con <math|1≠0>, in cui ogni elemento diverso da zero ha inverso moltiplicativo.
</concetto>

Sono campi i razionali <math|ℚ> e i reali <math|ℝ>, che comprendono anche numeri come <math|<sqrt|2>>. Gli interi non lo sono.

Per <math|n≥2>, l'anello <math|ℤ/nℤ> è un campo <strong|esattamente quando <math|n> è primo>. Se <math|n=p> è primo, ogni rappresentante <math|1,…,p-1> è coprimo con <math|p>, quindi ogni classe non nulla è invertibile.

Se invece <math|n=uv> è composto, con <math|1‹u,v‹n>, le classi <math|[u],[v]> sono non nulle ma il loro prodotto è zero. In un campo questo è impossibile: da <math|[u][v]=[0]> potremmo moltiplicare per l'inverso di <math|[u]> e ottenere <math|[v]=[0]>. Elementi non nulli che danno prodotto zero si chiamano <strong|divisori dello zero>.

<figura|@IMG(strutture,0.9)|Un gruppo descrive una sola operazione. Un anello è un gruppo abeliano per la somma, con un prodotto collegato dalla distributività. In un campo ogni elemento non nullo ha anche un inverso moltiplicativo.>

<section|Omomorfismi: cambiare oggetti conservando i conti>

Consideriamo la funzione che manda un intero nella sua classe modulo 5: <math|f(a)=[a]<rsub|5>>. Sommare prima e passare alla classe dopo dà lo stesso risultato che passare prima alle classi e poi sommarle:

<\equation*>
f(a+b)=f(a)+f(b).
</equation*>

Anche <math|f(ab)=f(a)f(b)> e <math|f(1)=[1]>. Chiamiamo <strong|omomorfismo di anelli unitari> una funzione che conserva somma, prodotto e identità. Per un omomorfismo di gruppi chiediamo la conservazione della sola operazione del gruppo.

Un omomorfismo <strong|biiettivo> è un <strong|isomorfismo>. I due oggetti hanno gli stessi conti, espressi con nomi diversi. Una funzione che conserva i conti può invece perdere informazioni: la riduzione <math|ℤ→ℤ/5ℤ> manda 2 e 7 nella stessa classe e non è biiettiva.

<subsection|Per proseguire: il teorema cinese come isomorfismo>

Sul prodotto <math|A×B> di due anelli si somma e si moltiplica componente per componente: <math|(a,b)+(c,d)=(a+c,b+d)> e <math|(a,b)(c,d)=(ac,bd)>.

La mappa

<\equation*>
F:ℤ/(mn)ℤ→ℤ/mℤ×ℤ/nℤ,<space|2em>[x]<rsub|mn>↦([x]<rsub|m>,[x]<rsub|n>).
</equation*>

è ben definita: cambiare <math|x> di un multiplo di <math|mn> non cambia nessuno dei due resti. Conserva i conti perché ridurre una somma o un prodotto equivale a operare sui resti.

Se <math|m,n> sono coprimi, il teorema cinese del capitolo 8 dice esattamente che ogni coppia di classi corrisponde a una e una sola classe modulo <math|mn>. Dunque <math|F> è un isomorfismo. Viceversa, se fosse suriettiva, la coppia <math|([0]<rsub|m>,[1]<rsub|n>)> avrebbe una preimmagine <math|x>. Ogni divisore comune dei moduli dividerebbe sia <math|x> sia <math|x-1>, quindi dividerebbe 1: i moduli devono essere coprimi.

<strong|Per proseguire.> L'isomorfismo si restringe alle unità: una classe modulo <math|mn> è invertibile esattamente quando lo sono entrambe le sue immagini. Infatti <math|gcd(x,mn)=1> equivale a <math|gcd(x,m)=gcd(x,n)=1>, perché un primo divide un prodotto solo se divide un fattore. Questo dà anche l'isomorfismo fra i rispettivi gruppi moltiplicativi.

<subsection|In sintesi>

Gruppo, anello e campo distinguono quali operazioni e inversi abbiamo. Gli omomorfismi permettono di confrontare strutture conservando i conti.

<\verifica|9>
<strong|1.> Le classi <math|[1],[2],[3],[4]> modulo 5 formano un gruppo con il prodotto? Individua neutro e inversi. Perché aggiungere <math|[0]> farebbe fallire una proprietà?

<strong|2.> La funzione <math|f:ℤ/6ℤ→ℤ/3ℤ>, <math|[a]<rsub|6>↦[a]<rsub|3>>, è ben definita? Conserva somma, prodotto e identità? È un isomorfismo?
</verifica>
