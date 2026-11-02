# Audit completo: 27 e 29 ottobre — capitoli 8 e 9

Lettura integrale effettuata delle note del 27/10 (404 righe) e 29/10 (580 righe), dei capitoli archiviati 08 e 09 e del loro script `source/check-numbers.py`. Consultati introduzione e capitolo 05 di Aritmetica Spark per progressione e profondità. Non esistono trascrizioni corrispondenti nell'inventario del corso. I PDF delle slide sono citati dalle note ma non forniti nel workspace: il libro rielabora le note e non dichiara un nuovo confronto diretto con le slide.

## Mappa delle fonti e destinazioni

| Fonte / tema | Destinazione | Livello |
|---|---|---|
| 27/10 §1: radice cubica con differenze, ordine assegnamenti, a=b²,y=b³, cubo precedente, errore b contro b−1 | Cap.8 «Radice cubica: costruire potenze con differenze» | Principale, prova completa con esecuzione x=10, funzione di terminazione |
| 27/10 §1.2: calcolo all'indietro R0,R1,R2 per radice | Stessa sezione usa invece valori vecchi/nuovi | Variante formale non riprodotta: preservata la tecnica nel resto del libro e spiegazione completa dell'invarianza |
| 27/10 §2: fattoriale, dominio (x−1)!, stato finale n+1, variante corretta | Cap.8 «Fattoriale: ricordare il prodotto già calcolato» | Principale, prova completa e n=0 |
| 27/10 §3: MCD sottrattivo, conservare F, positività, variante x+y | Cap.8 «MCD: trasformare i dati conservando la risposta» | Principale, inclusa prova elementare della conservazione dei divisori |
| 27/10 §4: ricavare E in x:=x−p;q:=E | Verifica 8.1 e soluzione | Esercizio con motivazione compensativa, caso p=0 e dipendenza da x spiegata |
| 27/10 §§5–6: array funzioni, dominio semiaperto, lettura, stato, def, accessi annidati | Cap.9 «Array come funzioni sugli indici» | Principale; esempio [2,1,10,6] e v[v[0]+v[1]] |
| 29/10 §1: aggiornamento selettivo, doppio aggiornamento stato/sequenza, valutazione iniziale, assioma | Cap.9 «Aggiornamento selettivo» | Principale; formula con w definita a parole e assioma della precondizione |
| 29/10 §2: somme parziali e distinzione posizione aggiornata/altre | Cap.9 esempio guidato «Estendere un prefisso di somme» | Principale, prova quantificata per casi |
| 29/10 §3: incrementare tutti gli elementi, sequenza iniziale V, due zone | Cap.9 «Incrementare un array» | Principale, inizializzazione/invarianza/def/terminazione/uscita e n=0 |
| 29/10 §4: scomporre postcondizione, testimone r, divisione | Apertura cap.8 «Dalla postcondizione...» e rimando al cap.7 | Principale come strategia; non duplica la verifica completa del cap.7 |
| 29/10 §5: sostituire costante con variabile, somma array | Cap.9 «Somma di un array» | Principale, tutte le condizioni e n=0 |
| 29/10 §6: Fibonacci e rafforzamento con variabile ausiliaria, temp, k≥1 | Cap.8 «Fibonacci» | Principale; prova completa, errore aggiornamento e figura |
| 29/10 §7: bandiera due colori, permutazione, 3 zone, variante y−x, segni corretti, confine n ammesso | Cap.9 «Bandiera a due colori» | Principale, derivazione corpo e prova, scambio con sé stessa e array vuoto |
| 29/10 §8: bandiera tre colori esercizio completato | Cap.9 «Per proseguire» | Compatto ma completo: invariante, tre casi, codice, indici, variante e risultato |
| 29/10 §9: successione con dimezzamento, evitare indice crescente, combinazione di consecutivi, derivazione due parità | Cap.8 «Per proseguire» | Compatto ma completo: definizione, catena f(19)=7, derivazione, codice, variante, n=0 e x=1 |

## Dipendenze e ragioni dell'ordine

Si presuppongono espressioni e comandi, sostituzione, specifiche/Hoare, invarianti e varianti dai cap.5–7. Il cap.8 insegna a dare significato a variabili scalari: accumulatore (fattoriale), quantità conservata (MCD), dati ausiliari (potenze/Fibonacci). Il cap.9 introduce un nuovo tipo di stato e la nuova obbligazione degli indici, poi passa dalla singola scrittura al prefisso mobile e infine a più zone. La successione più tecnica e la bandiera a tre colori sono opzionali: non sono prerequisiti dei capitoli successivi.

## Correzioni conservate e approfondimenti aggiunti

- Radice cubica: non attribuire b=floor(cuberoot(x)) al ciclo; il risultato è b−1. Aggiunto breve argomento che b≥1 all'uscita, necessario a interpretare la radice come non negativa.
- Fattoriale: limite inferiore 1 per definire (x−1)!, variante n+1−x non negativa anche all'uscita.
- Divisione: conservare y>0 per la diminuzione stretta del resto.
- Fibonacci: separare funzioni matematiche del linguaggio delle asserzioni da operazioni effettivamente disponibili; salvare vecchio x in temp.
- Bandiera due colori: negativi a sinistra, non negativi a destra; quantificatore sul generico a[i]; confine finale 0≤x≤n, inclusi n=0 e x=n. I numeri di slide restano documentati nella nota; il PDF usa direttamente gli enunciati corretti.
- Tre colori e caso dispari successione: svolgimenti didattici già aggiunti nella nota, non attribuiti come dimostrazioni testuali del docente.
- Esercizi originali di consolidamento: compensazione senza dividere per p; Fibonacci esteso a zero; accesso aggiornato che cambia la definitezza del comando seguente; conteggio negativi.

## Figure riutilizzate

`fibonacci`, `array-zone`, `bandiera` dell'archivio, conservando SVG/PDF e dimensioni. La bandiera mostra sia due sia tre colori: la didascalia chiarisce la seconda riga prima della sezione opzionale. Il generatore originale della figura Fibonacci ha una scritta lunga verso destra: va verificata al rendering; non assumere la sua integrità dal solo PDF esistente.

## Verifica

`arrays/check-arrays.py` verifica con interi esatti risultati, invarianti, indici e discesa delle varianti per programmi scalari, aggiornamenti e partizioni. Queste prove finite controllano esempi e implementazioni; non sostituiscono le dimostrazioni generali esplicite nei due capitoli.
