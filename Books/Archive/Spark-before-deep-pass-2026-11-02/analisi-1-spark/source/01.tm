<chapter|Logica, quantificatori e insiemi>

«Ogni studente ha almeno una materia preferita» non dice che tutti preferiscono la stessa materia. Questa piccola differenza è la stessa che incontreremo nei limiti: una scelta può dipendere dalle informazioni ricevute prima. Impariamo a leggere questa dipendenza senza perderla nei simboli.

<section|Proposizioni e quantificatori: chi scegliamo prima?>

Una <strong|proposizione> è una frase di cui ha senso dire se è vera o falsa: <math|7≥5> è vera. Un <strong|predicato> contiene invece variabili ancora da fissare. Per esempio <math|P(x):x≥3> diventa vero con <math|x=5> e falso con <math|x=1>. Va anche dichiarato dove varia <math|x>: qui nei reali <math|ℝ>, i numeri della retta.

Il simbolo <math|∀> significa «per ogni»; <math|∃> significa «esiste almeno un». La frase <math|∀x∈ℝ, x≥3> è falsa: <math|x=0> è un controesempio. La frase <math|∃x∈ℝ, x≥3> è vera: basta esibire <math|x=3>. Un predicato diventa una proposizione quando fissiamo o quantifichiamo tutte le sue variabili libere.

Indichiamo con <math|P(S,B)> la frase «allo studente <math|S> piace la birra <math|B>». Confrontiamo

<\equation*>
∀S∃B, P(S,B),<space|2em>∃B∀S, P(S,B).
</equation*>

Nella prima scegliamo uno studente, poi possiamo trovare una birra adatta a lui. Nella seconda dobbiamo scegliere subito una birra che vada bene per tutti. Se tre studenti apprezzano soltanto tre birre diverse, la prima frase è vera e la seconda falsa.

<figura|@IMG(quantificatori)|A sinistra la birra può dipendere dallo studente; a destra deve esserci una stessa birra gradita a tutti.>

Le altre combinazioni hanno una lettura altrettanto concreta: <math|∀S∀B> dice «tutte le birre a tutti gli studenti»; <math|∃S∃B> chiede una coppia favorevole; <math|∃S∀B> chiede uno studente a cui piacciano tutte; <math|∀B∃S> chiede almeno un estimatore per ciascuna birra. Quantificatori tutti universali, o tutti esistenziali, si possono scambiare fra loro. Quantificatori di tipo diverso in generale no.

<section|Negazione, implicazione e dimostrazione>

Scriviamo <math|¬P> per «non <math|P>», <math|P∧Q> per «<math|P> e <math|Q>» e <math|P∨Q> per «<math|P> oppure <math|Q>». L'oppure è inclusivo: basta che almeno una frase sia vera, e possono esserlo entrambe. Negare «sono vere entrambe» significa che almeno una è falsa; negare «almeno una è vera» significa che sono false entrambe. Sono le leggi di De Morgan:

<\equation*>
¬(P∧Q)⇔(¬P∨¬Q),<space|2em>¬(P∨Q)⇔(¬P∧¬Q).
</equation*>

<\concetto|Negazione dei quantificatori>
Smentire «tutti» richiede un solo caso contrario; smentire «esiste» richiede che ogni caso fallisca:

<\equation*>
¬(∀x,P(x))⇔∃x,¬P(x),<space|1em>¬(∃x,P(x))⇔∀x,¬P(x).
</equation*>
</concetto>

Perciò la negazione di «ogni studente apprezza almeno una birra» è «esiste uno studente che non ne apprezza nessuna»: <math|∃S∀B,¬P(S,B)>. I quantificatori si negano uno dopo l'altro, conservandone l'ordine. La negazione non richiede che tutti gli studenti rifiutino tutte le birre.

L'<strong|implicazione> <math|P⇒Q> significa «se <math|P>, allora <math|Q>». Promette che non accadrà <math|P> vera con <math|Q> falsa: questo è l'unico caso in cui fallisce. Se <math|P> è falsa, l'implicazione è vera qualunque sia <math|Q>. Dunque <math|P⇒Q> equivale a <math|¬P∨Q>, e la sua negazione è <math|P∧¬Q>.

In «se un intero è multiplo di 4, è pari», essere multiplo di 4 è una condizione <strong|sufficiente> per essere pari; essere pari è una condizione <strong|necessaria> per essere multiplo di 4. Il viceversa fallisce: 6 è pari ma non multiplo di 4. Scrivere <math|P⇔Q>, «se e solo se», richiede invece entrambe le implicazioni.

La <strong|contrapposizione> sostituisce <math|P⇒Q> con l'equivalente <math|¬Q⇒¬P>. Nel nostro esempio: un intero dispari non può essere multiplo di 4. Una prova <strong|per assurdo> assume le ipotesi e la negazione della tesi, poi ne ricava una contraddizione. Non si tratta di controllare molti esempi: bisogna raggiungere una conclusione incompatibile con quanto assunto.

<section|Insiemi, inclusione e operazioni>

Un insieme raccoglie elementi. <math|A={2,3}> contiene 2 e 3; <math|2∈A> indica appartenenza. L'ordine e le ripetizioni non cambiano l'insieme: <math|{2,3}={3,2}={2,2,3}>. Possiamo descrivere un insieme anche con una proprietà: <math|{m∈ℤ:∃k∈ℤ,m=k<rsup|2>}> raccoglie i quadrati degli interi. La scrittura più breve <math|{k<rsup|2>:k∈ℤ}> elenca i risultati facendo variare <math|k>.

L'<strong|inclusione> <math|A⊆B> dice che ogni elemento di <math|A> appartiene a <math|B>. Non va confusa con <math|x∈A>, che riguarda un singolo elemento. Scriviamo <math|A⊊B> quando vale anche <math|A≠B>. Per dimostrare <math|A=B> possiamo verificare le due inclusioni.

L'intersezione <math|A∩B> raccoglie gli elementi comuni; l'unione <math|A∪B> quelli di almeno uno dei due insiemi; la differenza <math|A∖B> quelli di <math|A> che non stanno in <math|B>. Per esempio, con <math|A={1,2}> e <math|B={2,3}>, otteniamo rispettivamente <math|{2}>, <math|{1,2,3}> e <math|{1}>. L'ordine nella differenza conta.

Il <strong|prodotto cartesiano> <math|A×B> contiene le coppie ordinate <math|(a,b)> con <math|a∈A> e <math|b∈B>. In generale <math|(a,b)≠(b,a)>: prima e seconda coordinata hanno ruoli diversi. Questo sarà l'ambiente dei grafici.

L'<strong|insieme delle parti> <math|𝒫(A)> contiene tutti i sottoinsiemi di <math|A>. Se <math|A={1,2}>, allora <math|𝒫(A)={∅,{1},{2},{1,2}}>. Per ciascuno dei due elementi possiamo decidere se inserirlo: quattro scelte complessive. Con <math|n> elementi otteniamo <math|2<rsup|n>> sottoinsiemi.

L'insieme vuoto <math|∅> non ha elementi ed è contenuto in ogni insieme: non esiste un suo elemento che violi l'inclusione. Invece <math|{∅}> ha un elemento, proprio il vuoto. In particolare <math|𝒫(∅)={∅}>. Queste distinzioni aiutano a controllare che cosa una formula sta trattando: elementi, insiemi oppure insiemi di insiemi.

<\verifica|1>
<strong|1.> Nega «per ogni anno esiste uno studente che fallisce tutti gli esami». Scrivi prima il predicato con tre variabili.

<strong|2.> Elenca <math|𝒫({a,b})>. Stabilisci poi quali frasi sono vere: <math|∅∈{∅}>, <math|∅⊆{∅}>, <math|{∅}⊆∅>.
</verifica>
