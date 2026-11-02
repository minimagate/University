# Revisione indipendente: introduzione e capitoli 1–4

Letti integralmente `source/00-front.tm`, `source/01.tm` del bundle di lavoro e `logic/02.tm`, `03.tm`, `04.tm`, `solutions.tm`; confrontata la mappa `logic-audit.md`. Revisione matematica ed editoriale separata dalla stesura. Non ho modificato i file degli autori. Questa revisione non comprende ancora l'impaginazione.

## Esito

Nessun errore matematico bloccante trovato. Le spiegazioni dei passaggi fondamentali sono pazienti e correttamente motivate: distinzione tra valori iniziali e correnti; controesempi come premesse vere/conclusione falsa; distribuzione scelta per avvicinare P e ¬P; inversioni di polarità; rinomina prima della sostituzione per evitare cattura; testimone dipendente rispetto a testimone comune; condizioni di generalizzazione ed eliminazione esistenziale. Le sei soluzioni del blocco logica sono corrette e spiegano le scelte.

## Questioni concrete

1. **Media, chiarezza della nozione semantica (consigliato correggere).** Cap.4 «Assegnamenti e valore di termini e formule», frase dopo la figura: «Le nozioni di modello, soddisfacibilità e conseguenza logica si estendono come nel capitolo 2. Una formula chiusa è valida…». Il capitolo tratta poi leggi schematiche aperte (Leibniz, singoletto, regole sotto ipotesi). È meglio dire esplicitamente che la verità di una formula aperta si valuta su una coppia interpretazione/assegnamento, e che la validità richiede tutti gli assegnamenti oltre a tutte le interpretazioni. Bastano due frasi: «Per una formula aperta consideriamo sempre anche l'assegnamento. Una legge aperta è valida se risulta vera per ogni interpretazione e ogni assegnamento delle variabili libere». Questo evita che il lettore intenda `x=y⇒…` come proposizione già valutata o creda la validità riservata alle formule chiuse.

2. **Bassa, giustificazione compatta della completezza funzionale.** Cap.2 Per proseguire afferma anche la completezza di {¬,⇒}, dopo aver motivato {¬,∧} e {¬,∨}. Aggiungere `P∨Q≡(¬P⇒Q)` rende verificabile l'ultima affermazione senza chiedere fiducia a una lista. È un miglioramento secondario, non una falsità attuale.

3. **Bassa, leggibilità di una tabella.** La tabella completa dei sette connettivi è in una singola formula nativa con colonne senza separazioni impostate: è matematicamente corretta, ma va controllata a dimensione di lettura, soprattutto le colonne `P⇒Q` e `P≡Q`. Nessuna modifica matematica richiesta.

4. **Bassa, raccordo rinviato da controllare nell'integrazione.** L'audit del 13/10 rinvia a cap.5 specifiche deboli, costanti iniziali e tre approcci alla semantica. Nei capitoli 1–4 sono preparati stato, valori di specifica e significato delle asserzioni, ma la copertura dei tre approcci non è ancora verificabile qui: controllare cap.5 prima di dichiarare copertura completa della nota. È un controllo di integrazione, non una lacuna accertata.

## Controlli e cautele confermati

- La moltiplicazione egizia dà correttamente 143; gli stati del prodotto distinguono ab da AB finale, con caso zero.
- Ricerca binaria: il testo dichiara esplicitamente che un confronto a tre esiti conta come un passo, evitando l'ambiguità sul costo. L'ordinamento è esplicito.
- Church–Turing: distinta correttamente la tesi sul procedimento intuitivo dal teorema di equivalenza fra formalismi; corretta la qualifica di risorse astratte per von Neumann.
- Modelli, soddisfacibilità, tautologia, contraddizione e conseguenza sono distinti; il controesempio degli amici è valido.
- NAND e i due passi di risoluzione sono corretti. L'esposizione è compatta ma proporzionata a un «Per proseguire».
- Ridenominazione: condizione nome fresco più sostituzione delle sole occorrenze libere nella portata evita il difetto delle note. Esercizio 3.1 risolto correttamente, senza cattura.
- Funzioni di interpretazione totali, dominio non vuoto e filtro eventualmente vuoto sono distinti. Le leggi di estrazione riportate usano davvero la non vacuità nel verso necessario.
- Generalizzazione e «skolemizzazione» sono presentate con nomi nuovi e conclusione indipendente dal testimone: non viene affermata la falsa legge esistenziale→istanza prefissata.
- Leibniz e singoletto sono corretti con le condizioni indicate; le prove sull'unico elemento spiegano entrambi i quantificatori.
- Il rinvio a cap.6 per invarianti e a cap.7–8 per terminazione è coerente con la divisione assegnata.

## Verifica esatta indipendente

Eseguito `review-foundations-logic-checks.py`: **4546 controlli superati**. Controlli di leggi booleane, composizione e polarità dell'implicazione, risoluzione, distribuzioni dei quantificatori, estrazione di formula costante su domini non vuoti di cardinalità 1–4, scambio di quantificatori dello stesso tipo e verso ∃∀⇒∀∃ su tutte le relazioni binarie fino a 3 elementi, controesempio irriflessivo a due elementi. Le dimostrazioni generali sono state valutate separatamente: gli esperimenti finiti non le sostituiscono.

## Copertura rispetto all'audit

La selezione è coerente con `logic-audit.md`: i concetti principali sono presenti; cataloghi lunghi, seconde prove e singoli esempi sono dichiaratamente selezionati. I compattamenti di forme normali, risoluzione e NAND non nascondono prerequisiti del resto. Le date discordanti delle dispense e l'assenza di trascrizioni per queste sei note restano documenti esterni al PDF, come richiesto.
