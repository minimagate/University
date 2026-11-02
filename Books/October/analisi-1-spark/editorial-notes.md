# Analisi 1 Spark — scelte editoriali e correzioni

## Revisione profonda del 2 novembre 2026

Sono stati riveduti tutti i frammenti di lettura: introduzione, 14 capitoli e 30 soluzioni. Il confronto editoriale usa i capitoli 1, 5 e 6 di Aritmetica Spark. «In breve» è presente una sola volta subito dopo ogni titolo di capitolo; il resto della revisione riguarda la spiegazione effettiva, non soltanto i riquadri.

I paragrafi distinguono ora singoli passaggi del ragionamento con vere righe vuote TeXmacs. Nei tratti lunghi compaiono sottosezioni al cambio di domanda. Restano una narrazione continua e le prove complete; non si è accorciato il libro eliminando argomenti.

Le riscritture più ampie sono la costruzione di √2 (prima stimare l'aumento o la diminuzione, poi scegliere h), il numero e (confronto di e₃ ed e₂ prima della formula generale; espansione di tre fattori prima delle stime con fattoriali), il capitolo 10 (punti, lati, infiniti, composta, esponenziale e inverse in passaggi distinti), Taylor (coefficienti quadratici, prova n=2, catena n=3, poi n generale) e la composizione (sin(x+x³), sviluppo completo del cubo e controllo del resto prima della fattorizzazione generale).

Anche i capitoli già più accompagnati hanno ricevuto una revisione: nella prova dell'inversa sono distinti i due versi, nell'induzione si motiva il fattore da raccogliere, le proprietà del campo e dell'ordine sono spiegate prima di usarne i nomi. Le soluzioni separano scelta, calcolo e controllo; quella binomiale mostra la cancellazione dei fattoriali anziché limitarsi al rapporto finale. Le didascalie sono state rilette; alcune sono state rese più dirette, mantenendo tutte le 23 figure.

Le ipotesi matematiche restano quelle del testo precedente, in particolare Taylor con derivata n-esima richiesta soltanto nel centro e il controllo delle composte quando l'argomento interno si annulla. Un successivo controllo matematico del coordinatore ha richiesto due precisazioni, entrambe applicate: «il quadrato è pari; il cubo è dispari» e il resto o(x³) moltiplicato per due fattori O(x) nella terza potenza del seno.

La compilazione e l'ispezione delle pagine di questa revisione non sono ancora dichiarate concluse. Le descrizioni tipografiche nelle sezioni storiche sotto riguardano la precedente produzione; non certificano la nuova paginazione. Dettaglio del lavoro in `reviews/deep-editorial-pass.md`; controlli aggiunti in `checks/deep-pass.py`.

## Il percorso di apprendimento

Il volume riparte dalla prima lezione del 23 settembre e comprende tutte le fonti disponibili fino al 31 ottobre 2026; l'ultima nota presente è del 29 ottobre. È la ricostruzione Spark del volume 1, non un seguito che presuppone padroneggiata l'edizione archiviata.

L'ordine nasce da quattro dipendenze principali. **Linguaggio e funzioni** permettono di capire che cosa un enunciato chiede e quali oggetti usa. **Completezza e supremo** rendono possibili gli argomenti di esistenza. **Limite e continuità** traducono l'avvicinamento in un controllo quantitativo. **Approssimazione ed errore** collegano Landau, derivata e Taylor. Induzione e Bernoulli sono il ponte dalle proprietà algebriche alle successioni; le funzioni elementari forniscono oggetti concreti sui quali costruire i limiti.

I quattordici capitoli mantengono questi nomi matematici visibili nell'indice. Le lezioni sui limiti notevoli, distanti nella cronologia del corso, sono riunite: l'enunciato resta accanto alla ragione che lo giustifica. Le razionalizzazioni e le somme sono anticipate dove bastano l'algebra dei limiti e il confronto. L'esercizio 9.2 viene formulato come successione; il caso originario a −∞ è ripreso dopo la definizione dei limiti di funzioni. Le iperboliche sono definite prima dell'esempio che usa tanh.

## Come viene applicato Spark

Un esempio piccolo prepara il concetto; le formule vengono introdotte quando servono a rispondere alla domanda. Le prove espongono anche la scelta del passaggio: isolare l'ultimo addendo nell'induzione, abbassare una barriera per riconoscere il supremo, usare la monotonia per controllare una coda, aggiungere e sottrarre un termine nel prodotto dei limiti, conservare un ordine maggiore quando si cancellano i primi termini.

I riquadri «Concetto chiave» evidenziano definizioni e teoremi essenziali. Gli esempi guidati sono selettivi; non c'è una quota di riquadri né una sequenza obbligatoria da ripetere. Le prove non sono organizzate come una raccolta di ricette. Le sezioni «Per proseguire» distinguono varianti secondarie, fra cui la somma armonica su un intervallo di indici e i settori iperbolici.

La lettura è mantenuta sostenibile scegliendo esempi che insegnino decisioni differenti. Non vengono ripetuti tutti gli esercizi numerici delle note né tutte le prove alternative. `coverage.md` e l'audit analitico esplicitano la selezione. I trenta esercizi proposti hanno tutti una soluzione ragionata, con i numeri uniformati al capitolo. L'appendice contiene le soluzioni; la documentazione sulle fonti resta fuori dal PDF.

## Fedeltà alle fonti e correzioni

Le 16 note e le 5 trascrizioni sono state lette integralmente, attraverso tre blocchi di lavoro. Le note dell'ultima parte citano PDF AM1 originari che non sono presenti nel workspace: la fonte effettiva è la nota disponibile. Le date 2025 presenti in alcuni campi `source_date` restano intatte; il volume usa la cronologia 2026 delle note. Le due lezioni del 28 ottobre rimangono distinte nel manifesto. Gli esempi indicati come personali nelle note non sono attribuiti al docente.

Le principali correzioni o precisazioni adottate sono:

- **Induzione:** 24≥16 nel controllo di 4!, e cancellazione corretta della frazione (n+1)²/((n+1)(n+2)). Bernoulli parte da n=1, evitando di usare 0⁰ nel caso x=−1.
- **Reali:** la distinzione dei naturali nel campo ordinato usa 1>0, senza richiedere completezza. La completezza interviene nella proprietà archimedea. L'esistenza di √2 dal supremo è dimostrata mediante perturbazioni esplicite c±h; la semplice appartenenza del candidato all'insieme non basta a escludere c²<2.
- **Radici e grafici:** la radice di indice 2k di x^(2k) è |x|, non |x|^k. Le potenze pari sono strettamente decrescenti sulla semiretta negativa. I quadramenti sono accompagnati dalle condizioni di segno e dominio.
- **Trigonometria:** la costruzione geometrica della tangente usa la retta OP, prolungata se necessario. L'arcotangente si interpreta mediante il punto (1,λ), senza cercare un punto del cerchio di ordinata arbitraria λ. Le inverse hanno rami e segni espliciti.
- **Limiti:** il prodotto dei limiti non divide per coefficienti che potrebbero essere zero; il reciproco usa una distanza dal denominatore nullo e la triangolare inversa. La prova e<3 conserva un margine uniforme, invece di dedurla dalla sola disuguaglianza e_n<3. Rapporto ⇒ radice comprende anche i limiti 0 e +∞.
- **Continuità e notevoli:** exp è trattata sui due lati senza derivate; la continuità di cos è giustificata prima dei carabinieri per sin x/x. La continuità delle inverse trigonometriche segue quella delle funzioni originarie. I cambi di variabile controllano il nuovo centro e gli eventuali valori nel punto bucato. Il limite al centro 3π/2 vale +1/2.
- **Landau:** ogni simbolo specifica il limite e la scala. Un'equivalenza a 1−x²/2, da sola, non identifica il coefficiente quadratico: occorre il resto o(x²). Le equivalenze non sono sostituite indiscriminatamente nelle differenze.
- **Derivate:** la catena è dimostrata anche quando l'incremento interno si annulla. La derivata dell'inversa richiede continuità dell'inversa e derivata originaria non nulla; non viene presupposta derivando l'identità delle composte.
- **De L'Hôpital e Taylor:** l'enunciato distingue il caso 0/0 dal denominatore divergente, richiede un intero intervallo o semiretta e un limite esistente del rapporto derivato. Taylor–Peano conserva le ipotesi fini della fonte: n−1 derivate nell'intorno e derivata n-esima al centro. La dimostrazione aggiunta usa De L'Hôpital e la definizione dell'ultima derivata, senza chiedere continuità della derivata n-esima.
- **Composizioni:** sin(cos x) usa il centro esterno 1. Il secondo ordine esterno controlla il resto richiesto, anche quando il termine quadratico viene poi scartato. Lo stesso controllo è applicato alle potenze variabili. I coefficienti non creano derivate di cui non sia nota l'esistenza.
- **Iperboliche:** sinh(ix)=i sin x ha il segno corretto. Il legame complesso è un'anticipazione esplicita; Taylor reale con resto finito non viene usato come giustificazione di serie infinite o sostituzioni complesse.

Le costruzioni astratte dei reali e delle potenze reali, la fondazione di arco/area e la prova di De L'Hôpital non vengono aggiunte al corso iniziale. Il testo dichiara i risultati assunti. Le spiegazioni, le prove completate e gli esercizi di consolidamento sono integrazioni didattiche, non trascrizioni delle parole del docente.

## Produzione e conservazione

Il progetto usa GNU TeXmacs nativo: Computer Modern predefinito, 11 punti, A4, titoli centrati e margini canonici delle skill aggiornate. Preambolo, coda e script provengono dalla skill; il controllo sintattico locale è stato rafforzato per rilevare anche delimitatori `>` superflui all'interno di blocchi.

Le 23 figure selezionate sono riutilizzate come SVG originali e PDF vettoriali. Il generatore locale mantiene solo le funzioni pertinenti della biblioteca archiviata; la rigenerazione dei 23 SVG è stata confrontata con gli originali ed è identica. Non è usata la figura dell'inversa con scale non isometriche, perché avrebbe reso impreciso il confronto geometrico con la riflessione.

La prima revisione tipografica ha rilevato un titolo di capitolo troppo lungo, due chiusure con soli esercizi e intervalli delle inverse spezzati. Sono stati corretti abbreviando il titolo 14, selezionando alcune ripetizioni di testo, riducendo moderatamente quattro figure e riscrivendo il riquadro delle inverse. Non sono cambiate formule o ipotesi per far entrare il testo.

Le fonti, tutti i file dell'archivio Analisi e il riferimento Aritmetica Spark restano intatti. La costruzione aggiunge solo il bundle richiesto e aggiorna l'indice `Books/README.md`. Le verifiche effettive dell'ultima compilazione sono registrate in `validation.md`.


## Chiusura della revisione editoriale

Le aperture di tutti i capitoli sono state rilette e riscritte per dare una domanda e un percorso in poche frasi naturali. Verificata la densità del PDF, con il preambolo di Aritmetica e senza ridurre caratteri o margini. Il respiro aggiunto serve ai passaggi e alle decisioni spiegate; il numero di pagine non è un obiettivo. I dati correnti e i limiti effettivi sono in validation.md.
