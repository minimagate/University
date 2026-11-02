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
