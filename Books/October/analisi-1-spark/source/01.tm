<chapter|Logica, quantificatori e insiemi>

<\inbreve>
Come distinguiamo «a ciascuno piace una birra» da «a tutti piace la stessa birra»? Partiamo da frasi comuni per imparare a leggere quantificatori, negazioni e implicazioni. Introduciamo poi gli insiemi e le loro operazioni.
</inbreve>

<section|Proposizioni e quantificatori: chi scegliamo prima?>

Una <strong|proposizione> è una frase che può essere vera o falsa. Per esempio, <math|7≥5> è vera.

Un <strong|predicato> dipende invece da una o più variabili. Per esempio <math|P(x):x≥3> diventa vero con <math|x=5> e falso con <math|x=1>. Va anche dichiarato dove varia <math|x>: qui nei reali <math|ℝ>, i numeri della retta.

Il simbolo <math|∀> significa «per ogni»; <math|∃> significa «esiste almeno un». La frase <math|∀x∈ℝ, x≥3> è falsa: <math|x=0> è un controesempio. La frase <math|∃x∈ℝ, x≥3> è vera: basta trovare un esempio, come <math|x=3>.

Le variabili ancora da scegliere si chiamano <strong|variabili libere>. Quando le fissiamo tutte, oppure le leghiamo a quantificatori, otteniamo una proposizione.

Indichiamo con <math|P(S,B)> la frase «allo studente <math|S> piace la birra <math|B>». Confrontiamo

<\equation*>
∀S∃B, P(S,B),<space|2em>∃B∀S, P(S,B).
</equation*>

Nella prima scegliamo uno studente, poi possiamo trovare una birra adatta a lui. Nella seconda dobbiamo scegliere subito una birra che vada bene per tutti. Se tre studenti apprezzano soltanto tre birre diverse, la prima frase è vera e la seconda falsa.

<figura|@IMG(quantificatori,0.92)|A sinistra la birra può dipendere dallo studente; a destra deve esserci una stessa birra gradita a tutti.>

<math|∀S∀B> dice che a ogni studente piacciono tutte le birre. <math|∃S∃B> chiede soltanto una coppia studente–birra favorevole.

La frase <math|∃S∀B> cerca uno studente a cui piacciano tutte le birre; <math|∀B∃S> permette invece di cambiare studente per ciascuna birra.

Quantificatori tutti universali si possono scambiare fra loro; lo stesso vale per quelli tutti esistenziali. Quando i tipi sono diversi, l'ordine può cambiare il significato.

<section|Negazione, implicazione e dimostrazione>

Scriviamo <math|¬P> per «non <math|P>», <math|P∧Q> per «<math|P> e <math|Q>» e <math|P∨Q> per «<math|P> oppure <math|Q>». L'oppure è inclusivo: basta che almeno una frase sia vera, e possono esserlo entrambe.

Negare «sono vere entrambe» significa che almeno una è falsa; negare «almeno una è vera» significa che sono false entrambe. Sono le leggi di De Morgan:

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

L'<strong|implicazione> <math|P⇒Q> significa «se <math|P>, allora <math|Q>». È falsa soltanto quando <math|P> è vera e <math|Q> è falsa. Se <math|P> è falsa, l'implicazione è vera qualunque sia <math|Q>.

Quindi <math|P⇒Q> equivale a <math|¬P∨Q>; la sua negazione è <math|P∧¬Q>.

In «se un intero è multiplo di 4, è pari», essere multiplo di 4 è una condizione <strong|sufficiente> per essere pari; essere pari è una condizione <strong|necessaria> per essere multiplo di 4. Il viceversa fallisce: 6 è pari ma non multiplo di 4. Scrivere <math|P⇔Q>, «se e solo se», richiede invece entrambe le implicazioni.

La <strong|contrapposizione> sostituisce <math|P⇒Q> con l'equivalente <math|¬Q⇒¬P>. Nel nostro esempio: un intero dispari non può essere multiplo di 4.

Una prova <strong|per assurdo> assume le ipotesi e la negazione della tesi, poi ne ricava una contraddizione.

<section|Insiemi, inclusione e operazioni>

Un insieme raccoglie elementi. <math|A={2,3}> contiene 2 e 3; <math|2∈A> indica appartenenza. L'ordine e le ripetizioni non cambiano l'insieme: <math|{2,3}={3,2}={2,2,3}>.

Possiamo descrivere un insieme anche con una proprietà: <math|{m∈ℤ:∃k∈ℤ,m=k<rsup|2>}> raccoglie i quadrati degli interi. La scrittura più breve <math|{k<rsup|2>:k∈ℤ}> elenca i risultati facendo variare <math|k>.

L'<strong|inclusione> <math|A⊆B> dice che ogni elemento di <math|A> appartiene a <math|B>. Non va confusa con <math|x∈A>, che riguarda un singolo elemento. Scriviamo <math|A⊊B> quando vale anche <math|A≠B>. Per dimostrare <math|A=B> possiamo verificare le due inclusioni.

L'intersezione <math|A∩B> raccoglie gli elementi comuni; l'unione <math|A∪B> quelli di almeno uno dei due insiemi; la differenza <math|A∖B> quelli di <math|A> che non stanno in <math|B>. Con <math|A={1,2}> e <math|B={2,3}>, per esempio, abbiamo

<\equation*>
A∩B={2},<space|1em>A∪B={1,2,3},<space|1em>A∖B={1}.
</equation*>

L'ordine nella differenza conta: <math|B∖A={3}>.

Il <strong|prodotto cartesiano> <math|A×B> contiene le coppie ordinate <math|(a,b)> con <math|a∈A> e <math|b∈B>. In generale <math|(a,b)≠(b,a)>: prima e seconda coordinata hanno ruoli diversi.

L'<strong|insieme delle parti> <math|𝒫(A)> contiene tutti i sottoinsiemi di <math|A>. Se <math|A={1,2}>, allora <math|𝒫(A)={∅,{1},{2},{1,2}}>. Per ciascuno dei due elementi possiamo decidere se inserirlo: quattro scelte complessive. Con <math|n> elementi otteniamo <math|2<rsup|n>> sottoinsiemi.

L'insieme vuoto <math|∅> non ha elementi ed è contenuto in ogni insieme: non esiste un suo elemento che violi l'inclusione.

Invece <math|{∅}> ha un elemento, proprio il vuoto. In particolare <math|𝒫(∅)={∅}>.

<\verifica|1>
<strong|1.> Nega «per ogni anno esiste uno studente che fallisce tutti gli esami». Scrivi prima il predicato con tre variabili.

<strong|2.> Elenca <math|𝒫({a,b})>. Stabilisci poi quali frasi sono vere: <math|∅∈{∅}>, <math|∅⊆{∅}>, <math|{∅}⊆∅>.
</verifica>
