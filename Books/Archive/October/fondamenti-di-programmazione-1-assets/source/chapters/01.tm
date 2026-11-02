  <chapter|Dal problema al programma>

  <\inbreve>
    Al centro dell'informatica non c'è la macchina ma l'<strong|algoritmo>: una procedura così precisa che un esecutore può seguirla senza capirla. In questo capitolo vediamo come si passa da un problema detto a parole a un programma, e scopriamo l'idea che regge tutto il corso: un calcolo è una successione di <strong|stati>.
  </inbreve>

  <section|Che cosa studia l'informatica>

  L'informatica non è la tecnica dei calcolatori, né l'uso dei programmi, né soltanto imparare a scriverli. Secondo la definizione dell'ACM è lo studio sistematico degli <em|algoritmi> che descrivono e trasformano l'informazione: la loro teoria, analisi, progetto, efficienza, realizzazione e applicazione.

  Il corso vuole allenare il <strong|pensiero computazionale>: rendere un problema descrivibile, risolvibile e verificabile da un esecutore. Ha quattro ingredienti:

  <\enumerate>
    <item><strong|astrazione>: tenere ciò che conta, ignorare i dettagli;

    <item><strong|scomposizione>: dividere un problema grande in problemi piccoli;

    <item><strong|riconoscimento di schemi>: accorgersi delle regolarità;

    <item><strong|algoritmo e automazione>: scrivere una procedura eseguibile e controllarne l'effetto.
  </enumerate>

  Un <strong|algoritmo> è una sequenza di passi che, eseguita da un esecutore adatto, porta dai dati ai risultati attesi. Ne usiamo tutti i giorni: istruzioni di montaggio, la lavastoviglie, il bancomat. Il nome viene dal matematico persiano al-Khwārizmī (circa 780–850), le cui opere portarono in Europa la numerazione posizionale con lo zero.

  Due algoritmi antichissimi. Il papiro di Rhind (circa 1650 a.C.) moltiplica con soli raddoppi, dimezzamenti e somme:

  <\equation*>
    A=1⇒A·B=B,<space|2em>A<text| pari>⇒A·B=<frac|A|2>·(2B),<space|2em>A<text| dispari>⇒A·B=(A-1)·B+B.
  </equation*>

  Euclide calcola il massimo comun divisore senza elencare i divisori, con sottrazioni:

  <\equation*>
    <math-up|MCD>(x,x)=x.
  </equation*>

  <\equation*>
    <math-up|MCD>(x,y)=<math-up|MCD>(x-y,y)<text| se >x›y›0.
  </equation*>

  <\equation*>
    <math-up|MCD>(x,y)=<math-up|MCD>(x,y-x)<text| se >y›x›0.
  </equation*>

  <\guidato|Due algoritmi a mano>
    Calcola <math|13·11> con il metodo egizio e <math|<math-up|MCD>(12,18)> con le sottrazioni.

    <em|Idea.> Ogni regola trasforma il problema in uno più piccolo dello stesso tipo, finché si arriva al caso che si sa risolvere subito.

    <em|Conto.> <math|13·11=12·11+11>; <math|12·11=6·22=3·44>; <math|3·44=2·44+44=1·88+44>. Raccogliendo: <math|13·11=88+44+11=143>.

    Per Euclide: <math|(12,18)→(12,6)→(6,6)>, quindi il MCD è <math|6>.

    <em|Controllo.> <math|13·11=143> e <math|12=2·6>, <math|18=3·6> con <math|2,3> senza fattori comuni.
  </guidato>

  <section|Le quattro fasi della programmazione>

  Programmare significa passare da un problema a un programma che lo risolve. A un primo livello ci sono quattro fasi.

  <figura|@IMG(fasi)|Le quattro fasi. L'esecuzione può rivelare errori nati in qualunque fase precedente: la messa a punto (<em|debugging>) torna indietro fin dove serve.>

  <strong|Specifica.> Capire e definire il problema: lo <strong|stato iniziale> (i dati, <em|input>) e lo <strong|stato finale> atteso (i risultati, <em|output>). Esempi: \Sdati due numeri, trova il maggiore\T; \Sdati un elenco telefonico e un nome, trova il numero\T; \Sdato un programma e un input, decidi se il programma termina\T (il <strong|problema dell'arresto>). Gli esempi mostrano limiti diversi: una specifica non dice <em|come> risolvere il problema; può essere ambigua (due persone con lo stesso nome); per alcuni problemi non si conosce un metodo (trovare un pari maggiore di <math|2> che non sia somma di due primi, la congettura di Goldbach); per l'arresto è dimostrato che un metodo generale <em|non può esistere>. Nel corso ci occupiamo di problemi <strong|decidibili>, per cui un metodo esiste.

  <strong|Algoritmo.> Un procedimento risolutivo è un algoritmo se ha tre requisiti: <strong|finitezza> (un numero finito di passi elementari), <strong|non ambiguità> (ogni passo si interpreta in un solo modo: \Ssale quanto basta\T non va bene per un esecutore automatico) ed <strong|eseguibilità> (ogni passo si completa in tempo finito con le risorse disponibili).

  <strong|Codifica.> Si sceglie come rappresentare gli oggetti e si scrive l'algoritmo in un linguaggio che l'esecutore conosce. Per un calcolatore il linguaggio è un linguaggio di programmazione, e il risultato è un programma con dati in ingresso, dati ausiliari (usati durante il calcolo) e dati in uscita.

  <strong|Esecuzione.> Si esegue il programma. Se il risultato non è quello voluto, la colpa può stare in qualunque fase: una specifica sbagliata, un algoritmo che dimentica un caso, una traduzione scorretta. Gli strumenti che aiutano a trovare gli errori (<em|bug>) si chiamano <strong|debugger>.

  Algoritmi diversi possono risolvere lo stesso problema con efficienza molto diversa. Per cercare un nome in un elenco ordinato, la <strong|ricerca binaria> apre l'elenco a metà, confronta, e continua solo nella metà giusta: a ogni passo scarta metà dei candidati.

  <figura|@IMG(ricerca-binaria)|Ricerca binaria di <math|47> fra sedici numeri ordinati. Il riquadro spesso è l'elemento confrontato; il grigio è la parte già scartata. Bastano quattro confronti invece di dodici.>

  <section|L'esecutore conta>

  Specifica: \Sdati due interi positivi <math|A> e <math|B>, ottenere <math|A·B>\T. Se l'esecutore è una persona con la calcolatrice, l'algoritmo è banale: digita <math|A>, il tasto <tt|*>, <math|B>, il tasto <tt|=>.

  Se invece l'esecutore sa solo sommare, sottrarre e confrontare, serve un altro algoritmo, basato su <math|A·B=A+A+⋯+A> (<math|B> volte):

  <\enumerate>
    <item>scrivi <math|A> e <math|B>; scrivi <math|0> in un riquadro ausiliario <math|C>;

    <item>finché <math|B›0>: somma <math|A> a <math|C> e togli <math|1> a <math|B>;

    <item>il risultato è in <math|C>.
  </enumerate>

  Qui <math|A> è il valore da sommare, <math|B> conta le somme che mancano e <math|C> accumula il risultato. Per un bambino che sa fare i conti su un quaderno, i \Sriquadri\T sono tre caselle disegnate sul foglio, in cui si cancella e si riscrive.

  <\attenzione|L'algoritmo dipende dall'esecutore>
    Lo stesso problema richiede algoritmi diversi per esecutori diversi. Un algoritmo è caratterizzato dal problema <em|e> dalle operazioni elementari che l'esecutore sa eseguire.
  </attenzione>

  <section|Stati>

  In ogni momento dell'esecuzione le informazioni rilevanti formano uno <strong|stato>: il contenuto dei riquadri del quaderno, il contenuto della memoria di un calcolatore (modello di von Neumann), il piano a cui si trova un ascensore. L'azione da fare dipende dallo stato: l'ascensore al piano <math|2> chiamato al <math|3> sale, al piano <math|4> scende.

  In astratto, uno stato è un insieme di <strong|associazioni> tra nomi simbolici e valori, scritte <math|X↦<math-up|val>>:

  <\equation*>
    {<math-up|nome>↦<text|Antonio>,<math-up|cognome>↦<text|Rossi>,<math-up|età>↦25},<space|2em>{A↦25,B↦350}.
  </equation*>

  C'è un solo vincolo: <strong|ogni nome ha al più un valore>. <math|{<math-up|nome>↦<text|Antonio>,<math-up|nome>↦<text|Paolo>}> non è uno stato: quale nome useremmo? Un nome può invece mancare del tutto.

  Un <strong|algoritmo> è allora una sequenza di passi elementari che modificano lo stato fino a quello desiderato, e un'esecuzione è una successione di stati <math|S<rsub|0>→S<rsub|1>→⋯→S<rsub|f>>. Nel paradigma imperativo deve esserci almeno un'azione che cambia lo stato: in C sarà l'<strong|assegnamento>.

  <\guidato|Eseguire <math|5·3> per somme>
    Parti dallo stato <math|{A↦5,B↦3,C↦0}> ed esegui l'algoritmo.

    <em|Idea.> A ogni giro si controlla <math|B›0>; se è vero, <math|C> cresce di <math|A> e <math|B> cala di <math|1>.

    <em|Conto.> Gli stati sono quelli della figura.

    <figura|@IMG(quaderno)|L'esecuzione come successione di stati: tre giri, poi <math|B=0> e ci si ferma. Il risultato è in <math|C>.>

    <em|Controllo.> <math|C=15=5·3>. In aula il primo conto a mano aveva dato <math|18>: era un errore di <em|esecuzione> (un passo sbagliato), non dell'<em|algoritmo>. Sono due correttezze diverse.
  </guidato>

  La specifica del prodotto, scritta con gli stati, è

  <\equation*>
    {<math-up|fattore1>↦a,<math-up|fattore2>↦b}<space|1em>⟶<space|1em>{<math-up|prodotto>↦a·b}.
  </equation*>

  Qui <math|a> e <math|b> non sono numeri precisi: sono <strong|variabili di specifica>, nomi per i valori iniziali. La specifica non dice nulla sui valori finali di <math|<math-up|fattore1>>, <math|<math-up|fattore2>> o di altri nomi: interessa solo <math|<math-up|prodotto>>.

  <\officina|1. Leggere una specifica>
    Prima di scrivere una riga di algoritmo, rispondi a quattro domande.

    <\itemize>
      <item><em|Che cosa so all'inizio?> Lo stato iniziale: quali nomi, quali valori, quali condizioni (\Sinteri positivi\T).

      <item><em|Che cosa devo ottenere?> Lo stato finale, scritto in funzione dei valori iniziali (<math|a·b>, non \Sil prodotto\T in generale).

      <item><em|Che cosa non mi è chiesto?> I nomi su cui la specifica tace possono finire con qualunque valore.

      <item><em|Chi esegue?> Le operazioni elementari disponibili decidono l'algoritmo.
    </itemize>

    Questo schema tornerà nel capitolo 6, dove la specifica diventa una coppia di formule, e nel capitolo 7, dove diventa una tripla di Hoare.
  </officina>

  <section|Che cosa si può calcolare>

  Solo dagli anni Trenta del Novecento si è cercato di dire con precisione che cos'è una \Sprocedura effettiva\T. Alan Turing propose una macchina astratta che manipola simboli secondo un numero finito di regole; mostrò anche una <strong|macchina universale> che riceve la descrizione di un'altra macchina e il suo input e ne simula il calcolo: il modello teorico del computer a programma memorizzato. Alonzo Church propose il <math|λ>-calcolo, basato sulle funzioni: un formalismo diversissimo, che però calcola esattamente le stesse funzioni.

  La <strong|tesi di Church-Turing> afferma che le macchine di Turing risolvono tutti i problemi effettivamente risolubili. È una <em|tesi>, accettata da tutti, non un teorema: collega un modello formale a un'idea intuitiva, che non si può dimostrare. Gli altri modelli (sistemi di Post, funzioni ricorsive di Kleene, calcolo quantistico, DNA computing) sono considerati equivalenti quanto a ciò che si può calcolare. Il <strong|modello di von Neumann> (1945), base dei calcolatori attuali, ha la stessa potenza; la sua generalità viene dal programma memorizzato.

  I linguaggi di programmazione si dividono per <strong|paradigma>: imperativo (comandi che modificano lo stato: Assembly, FORTRAN, C, Pascal), funzionale (ML, Haskell, Scheme), a oggetti (Java, Smalltalk), logico (Prolog), concorrente (CCS, CSP). Il corso adotta il paradigma imperativo e, più avanti, il linguaggio C.

  <\verifica|1>
    <strong|a)> \SAggiungi zucchero finché è dolce\T: quale requisito di un algoritmo viola?

    <strong|b)> <math|{x↦3,y↦3}> e <math|{x↦3,x↦4}>: quale dei due è uno stato?

    <strong|c)> Con quanti confronti al massimo la ricerca binaria trova un nome fra <math|1000>?
  </verifica>

