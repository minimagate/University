# Analisi delle fonti e mappa didattica

Periodo richiesto: prima lezione disponibile–31 ottobre 2026, incluso settembre. Inventario effettivo: **13 note**, datate dal **19 settembre al 29 ottobre**, e **una trascrizione del 25 settembre**, di 5.200 secondi. Nessun file del 30 o 31 ottobre è presente. Non sono presenti note autonome del corso fuori da `Lectures/`, né ulteriori materiali forniti dall'utente. Le altre dodici note non hanno una trascrizione corrispondente.

Il censimento è stato eseguito con `sources.py census` e la scoperta delle edizioni con `sources.py books`: non risultava una precedente edizione Spark principale del corso. La conversione del vecchio volume 1 mantiene quindi il numero 1. L'archivio non è trattato come prerequisito già studiato.

## Lettura e attendibilità

Tutte le note e l'intera trascrizione sono state lette, distribuendo i blocchi fra tre collaboratori e l'orchestratore. La trascrizione è stata riletta in cinque porzioni limitate dopo un primo output combinato troncato. Le note del 19 e 25 settembre sono state analizzate direttamente dall'orchestratore; gli audit analitici degli altri blocchi sono conservati in `reviews/logic-source-audit.md`, `reviews/hoare-source-audit.md` e `reviews/arrays-source-audit.md`. L'orchestratore ha poi letto tutti i capitoli e tutte le soluzioni integrate.

Le note richiamano dispense/slide che non sono presenti come PDF nel materiale del corso disponibile: il nuovo volume usa le note effettivamente disponibili, senza dichiarare un confronto diretto con slide non reperite. Alcune note distinguono commenti personali o svolgimenti aggiunti: il libro li rielabora come spiegazioni didattiche, senza attribuirli al docente.

Le note datate 21, 22 e 23 settembre citano dispense datate rispettivamente 29 settembre, 1 e 2 ottobre. Conserviamo entrambe le informazioni e selezioniamo le fonti secondo i file disponibili nel periodo; non ricostruiamo un calendario non attestato e non rinominiamo le fonti.

## Pilastri e dipendenze

1. **Specifica, algoritmo, stato.** Domanda: che cosa chiediamo e quali informazioni cambiano? Il prodotto per somme separa risultato, procedura, esecuzione e valori iniziali.
2. **Verità e conseguenza logica.** Domanda: quando una conclusione segue davvero? Gli amici al cinema preparano connettivi, modelli, controesempi, equivalenze e direzioni delle implicazioni.
3. **Individui, quantificatori e dipendenze.** Domanda: come esprimere una proprietà generale o l'esistenza di un oggetto? Termini e formule precedono portata e sostituzione; l'assegnamento semantico precede le leggi dei quantificatori e le regole di prova.
4. **Semantica dei comandi e Hoare.** Domanda: come collegare ciò che sappiamo prima di un comando a ciò che sappiamo dopo? La perdita di informazione nello scambio motiva il temporaneo; la sostituzione motiva la risalita delle precondizioni.
5. **Conservazione, progresso, zone.** Domanda: come verificare e poi costruire un ciclo? La divisione unisce invariante e terminazione; i significati delle variabili guidano fattoriale, MCD, radice e Fibonacci; i confini degli array trasformano il risultato completo in una proprietà della parte elaborata.

Questa sequenza segue dipendenze concettuali. La logica proposizionale è raccolta in un capitolo; la LPO conserva due tappe distinte, sintassi e semantica. Verifica di cicli e costruzione di cicli hanno capitoli separati: prima si impara che cosa dimostrare, poi come cercare un programma. Fibonacci è anticipato nel capitolo scalare; gli array sono introdotti prima di qualunque prova sugli indici. Geometria, ricorrenza per dimezzamento e bandiera a tre colori restano sviluppi opzionali.

## Confronto con le edizioni precedenti

Consultati introduzione, capitolo Bézout, copertura, note editoriali, verifica e produzione di `Books/October/aritmetica-1-spark/`. Il modello seguito è la motivazione prima della prova, non una replica dell'indice aritmetico. Consultati la mappa, i capitoli e le soluzioni del vecchio volume, il suo verificatore e le figure vettoriali in `Books/Archive/October/`.

Il nuovo testo elimina le officine ripetute e la cassetta degli attrezzi; conserva le correzioni sostanziali dell'archivio e riutilizza le figure pertinenti. Fonti, archivio e Aritmetica rimangono intatti, con impronte in `assets/original-hashes.json`. Il manifesto delle lezioni con destinazioni compilate è `assets/fonti.json`.

La [copertura](coverage.md) registra il confronto con ciascuna fonte; le [note editoriali](editorial-notes.md) distinguono correzioni e aggiunte; la [verifica](validation.md) riporta solo controlli effettivamente eseguiti.
