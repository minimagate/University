# Scelte editoriali — Fondamenti di Programmazione 1 Spark

## Lettore e progressione

Il testo presume algebra e aritmetica scolastiche. I cinque pilastri sono specifica/stato, conseguenza proposizionale, individui/quantificatori, semantica/Hoare, invarianti/progresso/zone. I nomi compaiono nei titoli e nell'indice; i riquadri `concetto` segnalano definizioni essenziali senza imporre quote. Gli esempi spiegano prima il problema e il motivo della mossa: distribuire per avvicinare P e ¬P, rinominare per non catturare, salvare un valore prima di sovrascriverlo, scegliere l'invariante dal significato del contatore.

Il riferimento di Aritmetica Spark è adattato alla programmazione: tracce, relazioni tra valori vecchi e nuovi, ragionamenti all'indietro e zone prendono il posto dei problemi aritmetici. Le prove centrali sono complete e motivate; non si ripristinano officine ripetute o una cassetta di ricette. Gli sviluppi secondari sono marcati «Per proseguire» e non nascondono prerequisiti del seguito.

## Aggiunte e selezione

Le spiegazioni, alcune formalizzazioni, i controesempi, la gestione sistematica di zero e array vuoti e gli esercizi di trasferimento sono integrazioni didattiche. Non sono trascrizioni né parole attribuite al docente. La prova intuitiva della conservazione del prodotto è aggiunta nel capitolo iniziale; le specifiche numeriche assumono interi matematici. Il dettaglio delle varianti selezionate è in `coverage.md` e nei tre audit di fonte.

## Correzioni e qualificazioni matematiche

- La svista orale 5·3=18 è corretta in 15, come già riconosciuto nel dialogo trascritto; le fonti non vengono alterate.
- Una descrizione finita può generare un'esecuzione infinita: finitezza e terminazione sono distinte. I modelli astratti non sono confusi con memoria fisica finita.
- La descrizione informale della logica intuizionista come logica con valori di verità aggiuntivi non è ripresa; la digressione non serve al percorso.
- Ridenominazione e sostituzione riguardano le occorrenze libere nella portata, evitando cattura. La polarità semplice richiede eliminare ≡. Le sostituzioni sotto quantificatore devono valere uniformemente per gli individui esaminati.
- Generalizzazione ed eliminazione esistenziale richiedono un nome fresco con le necessarie condizioni sulle ipotesi/conclusione. La «skolemizzazione» delle note è presentata come uso locale del testimone, non come implicazione valida verso una costante fissata.
- Dominio non vuoto e filtro ristretto eventualmente vuoto sono distinti. La validità delle formule aperte è esplicita per tutte le interpretazioni e gli assegnamenti.
- Le letture delle variabili suppongono nomi presenti e ben tipati. La semantica di espressioni/comandi è parziale. La sola correttezza parziale, nella convenzione del corso, non esclude errori: i controlli `def` restano visibili per le prove totali.
- Per rendere completa la definizione di div/mod anche sui segni si sceglie esplicitamente q=floor(a/b), r=a−bq, per b≠0. Questa è una convenzione editoriale; tutti gli esempi della divisione lavorano con dividendo non negativo e divisore positivo. Non si attribuisce al C questa semantica.
- L'invariante della divisione conserva y>0; la prova totale richiede che ogni corpo termini e che la guardia sia definita a ogni controllo. La variante naturale è non negativa anche all'uscita.
- L'esempio geometrico conserva un abbinamento degli stessi punti; usa i triangoli non degeneri AED e CEB. La discesa di lunghezze reali termina per la finitezza degli N! abbinamenti, non per la sola positività.
- Il fattoriale usa x≥1 per definire (x−1)! e variante n+1−x. La radice cubica lascia b−1 come risposta; si aggiunge l'assegnamento finale b:=b−1 quando il risultato è richiesto in b. La prova comprende x=0.
- La bandiera a due colori corregge segni, indice quantificato e confine finale: negativi a sinistra, non negativi a destra, proprietà su a[i], 0≤x≤n. La conservazione delle molteplicità è esplicita. Tre colori e ricorrenza dimezzante sono svolgimenti spiegati e verificati, senza attribuirli come prove testuali del docente.

## Revisione integrata e produzione

I capitoli sono stati letti dall'orchestratore e da un revisore diverso dall'autore del blocco. Le osservazioni delle due revisioni indipendenti sono state risolte: prova del prodotto, validità aperta, motivazione della completezza {¬,⇒}, raccordo tra semantiche. Sono state corrette anche la direzione dei rami nell'esempio del massimo con divisione e una parentesi di markup nel blocco totale.

Il volume usa il preambolo canonico TeXmacs: Computer Modern predefinito, 11 pt, A4, margini 24 mm e 21/22 mm, capitoli centrati e indice con sezioni principali. La sola macro locale aggiunta formatta il codice in linea. Il convertitore locale riconosce alcuni simboli logici/semantici aggiuntivi. Listati con indentazione esplicita e righe tenute insieme rendono leggibili le sequenze.

Le figure sono riutilizzate dal vecchio volume in forma SVG e PDF vettoriale. La piccola libreria completa resta in `assets/`, ma soltanto le figure che aiutano il ragionamento sono richiamate dal libro. Nessuna figura raster generata. Il pacchetto conserva script, manifesti e dipendenze locali per la rigenerazione; fonti e archivio rimangono intatti.

La figura Fibonacci è adattata localmente: mostra il passo (x,y)=(3,2)→(5,3) e il valore conservato nel temporaneo in uno spazio più breve. Generatore, SVG, PDF e dimensioni sono aggiornati insieme. Gli altri disegni della libreria sono copie degli originali; l’archivio è intatto.

## Revisione profonda del 2 novembre 2026 — sorgenti pronti per l’impaginazione

Il problema affrontato è la densità della lettura: cataloghi di nozioni, paragrafi con troppe funzioni e passaggi formali introdotti prima di mostrarne il motivo. La revisione interessa tutto il libro, compresi introduzione, didascalie ed esercizi; le diciotto soluzioni sono state riscritte con la stessa voce. Ogni capitolo ora ha un `inbreve` di orientamento immediatamente dopo il titolo. Le spiegazioni usano paragrafi distinti per definizione, esempio, scelta e controllo, senza trasformare le prove in elenchi di frammenti.

Interventi riconoscibili:

- Capitolo 1: separati il valore da ricordare e la variabile che cambia; il prodotto conservato nasce dal caso 5+5·2=15, poi dall’identità generale. Debugging, test e prova sono distinti; modelli e paradigmi hanno passaggi brevi e una tabella di confronto.
- Capitolo 2: modelli, soddisfacibilità, tautologie e contraddizioni hanno esempi leggibili separatamente. Le leggi booleane sono esposte in piccoli gruppi motivati. La polarità parte da x>10⇒x>0 e dalla negazione, poi segue tutte le occorrenze di ¬(P⇒Q)∧R in una tabella dei percorsi, prima della regola generale.
- Capitolo 3: termini costruiti a partire da s(s(x)); arietà spiegata come numero degli argomenti. Interpretazioni, cattura e rinomina hanno una mossa per volta. Tutti, alcuni e unicità sono distinti visivamente.
- Capitolo 4: leggi e controesempi dei quantificatori sono separati; spiegate ipotesi aperte e chiuse. La derivazione con testimone indica Γ e H, registra quali ipotesi restano disponibili e chiude soltanto H. Distinta la prova scritta Γ⊢P dalla conseguenza Γ⊨P.
- Capitolo 5: espressioni, tipi, divisione e indefinitezza sono presentati per passi. Le clausole del while sono separate nei casi vero/falso; errore e ciclo infinito hanno esempi distinti.
- Capitolo 6: mantenuta la spiegazione della sostituzione a partire dal risultato. La ricerca dello scambio ha una piccola tabella delle condizioni prima dei comandi e il caso numerico 3,7. Esempi dei condizionali separano definitezza e risultato. L’invariante resta riferito al controllo, non a ogni assegnamento intermedio.
- Capitolo 7: separati limite inferiore, confronto vecchio/nuovo, conservazione e progresso. Il significato di free(R) è esplicito prima della regola sulle variabili non modificate. Conservata la prova geometrica mediante finitezza, senza confondere discesa reale e naturale.
- Capitolo 8: riorganizzate le prove di fattoriale, MCD e Fibonacci in passi brevi. Per la radice cubica, la variante nasce dalla distanza al cubo precedente controllata dall’invariante; mostrati l’insuccesso di x−y, la traccia per 10 e il calo 12,11,10,3 della variante. Il programma opzionale della ricorrenza ha ora un listato separato dalle uguaglianze che lo giustificano.
- Capitolo 9: lettura, aggiornamento e conservazione delle altre posizioni sono separati. La bandiera a due colori ha la traccia [4,−2,0,7]→[7,−2,0,4]→[0,−2,7,4]: incrementare x dopo il primo scambio dichiarerebbe negativo il 7. Tre colori conserva tutti i casi, gli indici e la prova di progresso.

Non sono stati aggiunti argomenti avanzati o una prova completa della ricerca binaria. La conservazione delle ipotesi, i casi zero e gli array vuoti restano nel percorso. Il controllo finito delle nuove tracce è in `checks/deep-pass.py`: 17.400 asserzioni esatte superate. Sono stati rieseguiti anche tutti i sei verificatori precedenti, con esito positivo. Il candidato nativo assemblato supera `scripts/check.py`. Questi controlli non sostituiscono la revisione delle prove né l’ispezione visiva.

Questa sezione registra lo stato dei sorgenti. Il numero di pagine, le impronte del PDF e le precedenti osservazioni visive vanno aggiornati dopo l’esportazione finale da parte dell’orchestratore.


## Chiusura della revisione editoriale

Le aperture di tutti i capitoli sono state rilette e riscritte per dare una domanda e un percorso in poche frasi naturali. Verificata la densità del PDF, con il preambolo di Aritmetica e senza ridurre caratteri o margini. Il respiro aggiunto serve ai passaggi e alle decisioni spiegate; il numero di pagine non è un obiettivo. I dati correnti e i limiti effettivi sono in validation.md.

## Revisione narrativa del 2 novembre 2026

La revisione precedente aveva reso la lettura meno densa ma aveva lasciato una prosa a frasi brevi e isolate: in media 13,6 parole per frase, un periodo su cinque sotto le 9 parole, circa un «:» ogni 43 parole e 46 occorrenze di «conservare». Seguendo lo standard Spark aggiornato e l'esempio approvato (`.agents/skills/monthly-book/references/prose-example.md`), tutto il testo è stato riscritto come narrazione: introduzione, nove capitoli, didascalie toccate, testi degli esercizi e diciotto soluzioni.

Che cosa è cambiato:

- Ogni «In breve» è un breve paragrafo narrativo con apertura diversa da capitolo a capitolo, al posto dello schema domanda → «Partiamo da» → «Impareremo».
- Le frasi sono collegate da connettivi e motivano le scelte: perché la specifica non nomina gli strumenti, perché il «se» esclude un solo caso, perché la cattura cambia il significato, perché lo scambio richiede una variabile d'appoggio, perché si ragiona all'indietro sulle sequenze, perché il conteggio degli incroci non funziona come misura.
- «Conservare» è sostituito, dove serviva, da tenere, mantenere, restare vero, non cambiare; eliminate personificazioni («l'uguaglianza racconta»), riempitivi e alcune ripetizioni di «proprio» e «davvero».
- Rimossi i commenti rivolti al revisore (per esempio la nota sulla semantica del C, l'elenco dei modelli «soltanto richiamati»); le ipotesi necessarie restano, dette nel punto in cui servono.
- Nuovi sottotitoli dove il discorso cambia argomento: «Come si costruisce una formula», «Dare un valore alle formule», «Usare le leggi con una meta» (cap. 2); «Termini e formule», «Sostituire senza catturare» (cap. 3); «Un esempio con due quantificatori», «Formule valide» (cap. 4); «Espressioni e tipi», «Calcolare il valore», «Quando un programma non arriva a un risultato» (cap. 5); «Quando un'espressione ha valore» (cap. 6); «Trasportare ciò che il comando non tocca» (cap. 7). Alcuni titoli dei capitoli 8 e 9 sostituiscono «conservare» con «mantenere» o «tenere».
- Le sezioni «Per proseguire» dei capitoli 2, 4, 7, 8 e 9 sono ora sezioni vere e proprie, quindi compaiono nell'indice e si possono saltare a colpo d'occhio. Le sottosezioni interne della bandiera a tre colori sono state fuse in un'unica esposizione continua.

Che cosa è stato asciugato, senza togliere concetti: la ripetizione fra testo e riquadri nella definizione di algoritmo, le frasi di raccordo duplicate nella sezione sui modelli di calcolo, la doppia spiegazione del filtro nella quantificazione ristretta, la ripetizione della prova di progresso nella bandiera a tre colori. Tutte le definizioni, regole, invarianti, tracce, figure ed esercizi sono presenti.

Una sola modifica di contenuto: l'esercizio 2.2 chiedeva le polarità della stessa formula ¬(P⇒Q)∧R già svolta nel testo; ora usa (P∨¬Q)⇒¬R, con soluzione nuova (P negativa, Q positiva, R negativa) controllata in `checks/narrative-pass.py`. Il testo dell'esercizio 1.2 dice «senza modificare gli ingressi» invece di «conservando gli ingressi». Nella divisione con y=0 si precisa che la guardia diventa r≥0, sempre vera. Non sono state trovate altre inesattezze matematiche.

L'aumento di lunghezza è di circa un quarto delle parole dei sorgenti (da 16.973 a 21.469, markup incluso) e di quattro pagine (da 51 a 55). Dopo la revisione la frase media è di 17,2 parole, i periodi sotto le 9 parole sono il 12% e i due punti sono scesi a circa uno ogni 140 parole. Sono indicatori, non obiettivi: la valutazione è stata fatta rileggendo.

Il frontespizio indica l'edizione «ottobre 2026 · volume 1»; la prefazione dice soltanto che il volume raccoglie le lezioni fino al 31 ottobre. Le date esatte delle fonti restano in `coverage.md` e `source-audit.md`.
