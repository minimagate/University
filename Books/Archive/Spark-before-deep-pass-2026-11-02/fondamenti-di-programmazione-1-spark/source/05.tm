<chapter|Stati, espressioni e comandi>

Per capire un programma dobbiamo seguire due operazioni diverse: leggere un valore e modificare un valore. Nell'espressione <tt|x + 1> leggiamo <tt|x> e calcoliamo un numero. Nel comando <tt|x := x + 1> usiamo quel numero per aggiornare <tt|x>. Il segno <tt|:=> indica un'azione, mentre <math|=> nelle asserzioni indica un'uguaglianza.

<section|Lo stato e la valutazione delle espressioni>

Uno stato <math|σ> associa valori agli identificatori del programma. Per esempio <math|σ(x)=10> e <math|σ(y)=3>. Nel linguaggio considerato i valori sono interi o booleani: <math|<math-up|Val>=ℤ∪<math-up|Bool>>. I due valori booleani sono vero e falso. Lavoriamo con interi matematici, senza un limite di memoria o fenomeni di traboccamento.

Si possono descrivere stati parziali, che non assegnano un valore a tutti i nomi possibili. Nel seguito ogni identificatore letto si assume presente nello stato e del tipo dichiarato. Questa ipotesi sarà importante quando diremo che la lettura di una variabile è sempre definita.

Le espressioni si costruiscono da costanti intere, <tt|true>, <tt|false> e identificatori; poi si combinano con parentesi e operatori. Gli operatori aritmetici sono <tt|+>, <tt|->, <tt|*>, <tt|div> e <tt|mod>; confronti e operatori logici producono booleani. <tt|true> e <tt|false> sono nomi riservati. Le precedenze usuali distinguono <tt|8 + 5 * 3> da <tt|(8 + 5) * 3>: nel dubbio le parentesi rendono esplicita la struttura.

Prima di eseguire un'espressione controlliamo i tipi. <tt|(x + 5) and (x › y)> può rispettare la grammatica, ma <tt|and> richiede due booleani e <tt|x + 5> è un intero. Il controllo dei tipi è detto <strong|semantica statica>: analizza la forma senza eseguire il programma. Da qui in poi consideriamo espressioni correttamente tipate.

Scriviamo <math|ℰ(E,σ)> per il valore dell'espressione <math|E> nello stato <math|σ>. Per calcolare <tt|(x + 1) * y> nello stato dell'esempio, leggiamo <math|σ(x)=10>, otteniamo <math|10+1=11>, leggiamo <math|σ(y)=3> e infine moltiplichiamo: <math|11·3=33>. Lo stato non cambia.

La definizione generale segue la costruzione dell'espressione:

<\equation*>
ℰ(x,σ)=σ(x),<space|2em>ℰ(E+E',σ)=ℰ(E,σ)+ℰ(E',σ).
</equation*>

Le costanti denotano i valori corrispondenti; <tt|true> denota vero e <tt|false> falso. Gli altri operatori si interpretano nello stesso modo, applicando l'operazione ai valori dei sottoargomenti; le parentesi non cambiano il valore e <tt|not> nega un booleano. Qui <tt|and> e <tt|or> valutano entrambi gli argomenti: non assumiamo il cortocircuito di alcuni linguaggi reali.

Il controllo dei tipi non impedisce ogni errore. <tt|x div (y - 3)> è ben tipata, ma nello stato con <math|y=3> richiede una divisione per zero. Perciò <math|ℰ> è una <strong|funzione parziale>: per alcune coppie espressione-stato il valore non esiste. Lo indichiamo con <math|⊥>. Per tutti gli interi <math|a,b> con <math|b≠0>, fissiamo la convenzione <math|a<space|0.3em><math-up|div><space|0.3em>b=⌊a/b⌋>, il più grande intero non maggiore di <math|a/b>, e <math|a<space|0.3em>mod<space|0.3em>b=a-b(a<space|0.3em><math-up|div><space|0.3em>b)>. Con dividendo non negativo e divisore positivo sono il consueto quoziente e il resto non negativo minore del divisore. Gli esempi di divisione del volume usano sempre questo caso; la convenzione sugli altri segni rende precisa la semantica anche fuori dagli esempi.

<section|Assegnamento, sequenza e perdita di informazione>

La scrittura <math|σ[v/x]> indica lo stato uguale a <math|σ> su tutti i nomi tranne <math|x>, al quale associa <math|v>. Il comando <tt|x := E> prima valuta tutta <math|E> nello stato vecchio, poi aggiorna <math|x>. Per esempio, da <math|x=10,y=3>, il comando <tt|x := x + y> produce <math|x=13,y=3>.

<\concetto|Espressioni e comandi>
Un'espressione legge lo stato e calcola un valore. Un comando viene eseguito e, se termina con successo, produce uno stato. Un assegnamento sostituisce il vecchio valore della variabile destinazione.
</concetto>

Una sequenza <tt|C; D> esegue prima <tt|C>, poi <tt|D> nello stato raggiunto. Per questo <tt|x := y; y := x> non scambia i valori. Da <math|x=10,y=20>, il primo comando porta a <math|x=20,y=20>; il secondo legge il nuovo <math|x=20> e lascia ancora <math|y=20>. Il vecchio 10 è stato perso.

Per conservarlo lo copiamo prima in una variabile ausiliaria:

<\verbatim>
temp := x;<no-page-break>

x := y;<no-page-break>

y := temp
</verbatim>

Dopo il primo comando <tt|temp> contiene 10; dopo il secondo <tt|x> contiene 20; dopo il terzo <tt|y> recupera 10. La necessità dell'appoggio nasce dal fatto che ogni comando legge lo stato corrente, non quello iniziale.

<figura|@IMG(scambio)|Lo scambio conserva temporaneamente il valore che il secondo assegnamento sovrascriverà. Le frecce seguono la direzione dell'esecuzione.>

<section|Scelte e ripetizioni: if e while>

Il comando <tt|skip> non fa nulla e lascia lo stato invariato. Il condizionale <tt|if E then C else D fi> valuta la guardia booleana <math|E>. Se è vera esegue soltanto <math|C>; se è falsa esegue soltanto <math|D>. Se la guardia non è definita, non può scegliere il ramo.

Per ottenere il valore assoluto di <tt|x> in <tt|r> usiamo:

<\verbatim>
if x › 0 then r := x else r := -x fi
</verbatim>

Con <math|x=7> scegliamo il primo ramo e otteniamo <math|r=7>. Con <math|x=-7> scegliamo il secondo e otteniamo ancora <math|r=7>. Con <math|x=0> la guardia è falsa e il secondo ramo assegna <math|-0=0>. La variabile <tt|x> resta invariata.

Il ciclo <tt|while E do C endw> controlla la guardia prima di ogni eventuale esecuzione del corpo <math|C>. Se è falsa, esce subito. Se è vera, esegue il corpo e torna a controllare la guardia nello stato nuovo. Non decide in anticipo il numero di ripetizioni.

<figura|@IMG(while-srotolato)|Ogni freccia rappresenta un'intera esecuzione del corpo. Il controllo della guardia avviene anche nello stato iniziale; il primo controllo falso conclude il ciclo.>

Consideriamo una potenza, con <math|<math-up|base>=2> ed <math|<math-up|esp>=3>:

<\verbatim>
ris := 1;<no-page-break>

while esp › 0 do<no-page-break>

<hspace|2.100em>ris := ris * base;<no-page-break>

<hspace|2.100em>esp := esp - 1<no-page-break>

endw
</verbatim>

Al primo controllo abbiamo <math|(<math-up|ris>,<math-up|esp>)=(1,3)>. Il corpo moltiplica il risultato per 2 e diminuisce l'esponente residuo: i controlli successivi incontrano <math|(2,2)>, <math|(4,1)> e <math|(8,0)>. Nell'ultimo stato la guardia è falsa, quindi il risultato è 8. Se l'esponente iniziale è zero, il corpo non viene eseguito e rimane 1, come richiede <math|A<rsup|0>=1>.

La traccia spiega questa esecuzione, ma non prova il risultato per ogni esponente. Per farlo cercheremo una relazione che leghi sempre il prodotto già calcolato al lavoro ancora da svolgere: sarà l'idea di invariante.

<section|La semantica dei comandi e le esecuzioni senza risultato>

Scriviamo <math|𝒞(C,σ)> per lo stato finale prodotto da <math|C> a partire da <math|σ>. Per i primi costrutti:

<\equation*>
𝒞(<text|skip>,σ)=σ,
</equation*>

<\equation*>
𝒞(<text|x := E>,σ)=σ[ℰ(E,σ)/x],
</equation*>

<\equation*>
𝒞(C;D,σ)=𝒞(D,𝒞(C,σ)).
</equation*>

La formula della sequenza riflette esattamente l'ordine appena visto. Per il condizionale si sceglie <math|𝒞(C,σ)> oppure <math|𝒞(D,σ)> secondo il valore della guardia. Per <math|W≡<text|while E do C endw>> valgono due clausole: se <math|ℰ(E,σ)> è falso, <math|𝒞(W,σ)=σ>; se è vero, <math|𝒞(W,σ)=𝒞(W,𝒞(C,σ))>. La seconda clausola rinvia al ciclo stesso: dopo il corpo ricomincia lo stesso controllo.

Anche <math|𝒞> è parziale. Può mancare uno stato finale perché si incontra un errore, come in <tt|x := 1 div 0>, oppure perché l'esecuzione continua per sempre. Nel ciclo <tt|while x ›= y do x := x + 1 endw>, se inizialmente <math|x≥y>, ogni giro rende <math|x> ancora maggiore e la guardia non diventa mai falsa. Se inizialmente <math|x‹y>, invece, il ciclo termina con zero iterazioni. Sono comportamenti diversi dello stesso comando su stati diversi.

Il ciclo con <tt|x := x - 1> al posto dell'incremento termina per ogni coppia di interi: <math|y> resta fisso e <math|x> diminuisce di uno finché diventa minore di <math|y>. La prova generale di questa affermazione richiederà una misura naturale del lavoro residuo, introdotta nel capitolo 7.

Abbiamo usato due punti di vista complementari. La <strong|semantica operazionale> segue i passi dell'esecuzione; la <strong|semantica denotazionale> associa al comando la funzione parziale che trasforma lo stato iniziale in quello finale. Nel capitolo seguente useremo la <strong|semantica assiomatica>: descriveremo il comportamento mediante proprietà prima e dopo i comandi e regole che consentono di provarle.

<\verifica|5>
<strong|1.> Esegui <tt|x := x + y; y := x - y; x := x - y> da <math|x=3,y=7>. Poi usa valori iniziali generici <math|A,B> per spiegare il comportamento per tutti gli interi.

<strong|2.> Per <tt|while x ≠ 0 do x := x - 2 endw>, confronta le esecuzioni da <math|x=4> e da <math|x=5>. Che cosa mostra l'esempio sulla necessità di controllare la terminazione?
</verifica>
