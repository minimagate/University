# Audit — esecuzione, Hoare e terminazione

Fonti lette integralmente: note del 19, 20 e 26 ottobre 2026 (367, 433 e 367 righe), archivio `source/chapters/06.tm`, `07.tm`, `08.tm`; introduzione e capitolo Bézout del riferimento Aritmetica Spark. La prima lettura combinata era troncata: ripetuta ciascuna nota separatamente, senza troncamento. Nessuna fonte modificata.

## Dipendenze e mappa didattica

Cap. 5: leggere uno stato prima di modificarlo → distinguere espressioni da comandi → eseguire sequenze e scelte → capire cosa manca quando non esiste uno stato finale. La traccia dello scambio rende necessario l'ausiliario; la potenza prepara l'idea di lavoro già fatto/residuo.

Cap. 6: asserzione come insieme di stati → tripla totale/parziale → conseguenza → definitezza → assioma dell'assegnamento motivato dalla sostituzione → asserzione intermedia nella sequenza → guardia come informazione nei rami → invariante, con dimostrazione per induzione sul numero di giri. Si usa divisione come filo continuo fino al capitolo successivo.

Cap. 7: distinguere conservazione da progresso → naturali ben fondati → cinque obblighi della regola totale → prova completa della divisione → derivazione della somma attraverso la lettura dell'indice → annotazioni e regole derivate. La geometria opzionale mostra una prova di terminazione diversa: lunghezze reali in un insieme finito di configurazioni.

## Copertura analitica

| Fonte e tema | Destinazione e livello |
|---|---|
| 19/10: stati, Ide/Val, Exp; costanti, nomi riservati, operatori, precedenze | 5 «Lo stato e la valutazione delle espressioni», principale. Gli insiemi Ide/Exp nominati in prosa senza introdurre una sigla per ciascuno. |
| 19/10: type checking/semantica statica; funzione E parziale e errore div0 | 5 stessa sezione, principale; aggiunta esplicita assunzione di lettura di nomi presenti e valutazione senza cortocircuito. |
| 19/10: sintassi e semantica di skip, assegnamento, sequenza, if, while | 5 sezioni 2–4, principale. Tutte le clausole esplicitate, quelle di scelta e ciclo in prosa invece di grandi casi. |
| 19/10: valore assoluto, scambio, potenza | 5, esempi principali. Ordinamento di due numeri compattato/omesso come codice duplicato dello scambio condizionale; cap6 conserva massimo/if. |
| 19/10: tre usi delle triple, variabili di specifica, istanza P^sigma, soddisfacimento, free | 6 prima sezione, principale/compatto; free e P1/P2 spiegati in prosa. P3 resa esplicita in 6 «Assegnamento». |
| 19/10: divisione come problema di verifica | 6 «Invariante…» e 7 «Divisione…», principale, dimostrazione completa. |
| 20/10: esempi di P3; pre/post/pre-post; skip | 6 assegnamento/conseguenza, principale. Due esempi strutturalmente identici di P3 non ripetuti entrambi. |
| 20/10: def ricorsiva per ogni operatore, errore statico/dinamico | 6 «Conseguenza e definitezza…», principale; def(z-y div…) conservata, cortocircuito escluso. |
| 20/10: assioma e regola di verifica ass, sequenza con esempio x++ y-- | 6 assegnamento/sequenza, principale. Piccole istanze x:=5 etc selezionate. |
| 20/10: condizionale, massimo, m=0 superfluo, guardia div e rafforzamento | 6 condizionale, principale. Il ramo impossibile dell'esempio x:=3 non riprodotto; logica della premessa falsa già trattabile nel percorso logico. |
| 20/10: scambio ricavando E, variabili N/M non eseguibili | 6 sequenza, principale. Scambio errato già spiegato in 5. |
| 20/10: esercizi div0 e scambio errato | 6 esercizio2 + soluzione, e 5 scambio. |
| 20/10: totale/parziale, regole parziali senza def | 6 definizione principale. Esplicitato che la convenzione parziale non esclude errori. Varianti formali dei singoli assiomi parziali non riprodotte: si mantengono i controlli def nel percorso pratico. |
| 20/10: srotolamento ciclo, invariant, regola parziale e pre-post | 5 while; 6 invariante con dimostrazione, principale. |
| 26/10: invariante ai controlli, non dopo ogni assegnamento | 6 divisione, principale. |
| 26/10: funzione terminazione, stati sigma_i, V fresca, naturali e progresso | 7 prima sezione, principale; sequenza degli stati già disegnata in 5. |
| 26/10: regola while totale, def guardia ingresso/uscita corpo, totale del corpo | 7 cinque obblighi con motivazione generale, principale. |
| 26/10: somma, inizializzazione, calcolo indietro, variante n-x | 7 «Somma…», principale; estensione n=0 dichiarata nel testo. |
| 26/10: divisione, conservazione y>0, variante r | 7 «Divisione…», principale. |
| 26/10: programmi annotati, congiunzione/disgiunzione, change/free e invarianza | 7 «Programmi annotati…», tutte presenti con spiegazioni. Modello annotato generico sostituito dalla descrizione concreta dei punti del programma somma. |
| 26/10: uncrossing, good(S), lunghezza e finitezza N! | 7 «Per proseguire: eliminare gli incroci», compatto ma prova completa. Invariante descritta in parole includendo abbinamento bijettivo, non solo colori. |

## Correzioni e qualificazioni

- I nomi letti devono essere presenti e tipati; altrimenti def(x)=T sarebbe scorretta per stati parziali. Si dichiara l'ipotesi, come già precisato nell'archivio.
- La semantica generale di div/mod sui segni negativi non è fissata chiaramente nelle note: il volume sceglie esplicitamente il quoziente floor e il resto a-bq per rendere precisa la funzione parziale su tutti i divisori non nulli. Tutti gli esempi numerici di divisione restano nel caso nonnegativo/positivo e non dipendono dalla scelta sui segni.
- E e C sono funzioni parziali; nell'archivio la freccia totale non esplicitava il dominio effettivo. Il testo insiste sul possibile mancato valore invece di presentare funzioni totali.
- P3 richiede E definita e sostituzione senza cattura; si dichiarano entrambe.
- Correttezza parziale: dato che l'interpretazione non restituisce uno stato su errore, non esclude gli errori. Def è mantenuta negli esempi di verifica totale. Nessuna equiparazione fra errore e successo.
- L'invariante della divisione contiene y>0; occorre nelle premesse locali del progresso, non soltanto nell'ipotesi iniziale.
- L'invariante geometrico comprende l'essere un abbinamento degli stessi punti, non soltanto il colore degli estremi. I triangoli sono AED e CEB, non quelli degeneri AEB/CED del refuso delle slide.
- La diminuzione reale della lunghezza non basta: finitezza degli N! abbinamenti sui punti fissati esplicitata.
- Somma estesa a n=0 con somma vuota; distinta dalla precondizione n>0 delle slide.
- Algoritmi con interi matematici: l'esercizio dello scambio per somma non è attribuito senza riserve a interi macchina limitati.

## Figure utilizzate

`scambio`, `while-srotolato`, `pre-post`, `invariante`, `scala`, `incroci` (tutte riutilizzate dal volume archiviato, SVG+PDF; dimensioni dal suo `source/sizes.json`). Sei figure pertinenti, nessun nuovo disegno necessario. Parent deve ispezionare dimensioni e visualizzazione nel PDF.

## Verifiche svolte

`hoare/check-hoare.py`: 12.416 casi verificati con interi esatti: scambi, sequenza x++/y--, massimo condizionale, massimo con divisione e divisore positivo, divisione con invariante e progresso a ogni passo, somma originale e variante con ordine invertito, potenze, numero finito di abbinamenti fino a N=8. Esecuzione dei dispari campionata per 1000 giri; prova generale per parità nel testo. Questi controlli non sostituiscono le prove universali.

Revisione matematica dei ragionamenti: assioma via sostituzione, conseguenza via inclusione degli stati, sequenza via composizione; invariante via induzione; totale via impossibilità di infinite discese naturali; geometria via disuguaglianza triangolare stretta e finitezza. Revisione editoriale: tutti i simboli introdotti; progressione lettura→scrittura→garanzia→conservazione→progresso; esercizi con soluzioni complete.

`check.py` sui quattro frammenti: tutti `ok`. Non ancora esportati o ispezionati visivamente: compito di integrazione del parent.
