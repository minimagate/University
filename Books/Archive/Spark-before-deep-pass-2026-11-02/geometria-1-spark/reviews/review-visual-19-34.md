# Revisione visiva — pagine 19–34 della prima bozza

PDF: prima esportazione di 47 pagine, precedente alle ultime correzioni testuali. Visione iniziale dei fogli `sheet-v1-04.png`, `sheet-v1-05.png`, `sheet-v1-06.png`, quindi **tutte le pagine 19–34 aperte singolarmente a scala 1.5**, renderizzate in `/private/tmp/geometria-spark-20261102/review-19-34-v1/`. Non effettuate modifiche ai sorgenti o agli asset durante la revisione.

## Esito e interventi richiesti

1. **Pagina 22: soltanto Verifica 5 su una pagina quasi vuota.** Difetto editoriale reale, già individuato dal root. La proposta di inserire `<new-page>` prima della sezione 5.4 è ragionevole: pagina21 si chiuderebbe dopo il blocco sulle basi infinite; pagina22 conterrebbe l'intera discussione sul cambio di campo insieme agli esercizi. Riduce lo squilibrio e dà agli esercizi un contesto sulla stessa pagina senza tagliare spiegazioni. Rivedere la nuova impaginazione dopo la compilazione.
2. **Pagina 33, figura `traslato`: etichetta superiore assente perché tagliata.** Nell'SVG copiato dall'archivio, il testo `S = ξ + S₀` ha y=−14.16, fuori da `viewBox="0 0 340 158"`; la retta superiore termina anch'essa a y=−14.68. Il PDF mostra la retta troncata al bordo superiore e non mostra il nome di S. Correggere solo la copia del bundle e il generatore corrispondente, conservando l'archivio. Soluzioni possibili: riposizionare l'etichetta all'interno e accorciare il segmento, oppure aggiungere margine superiore al canvas e traslare gli elementi. Ripetere conversione SVG→PDF, aggiornamento dimensioni se necessario ed esportazione. Segnalato subito al root.

Nessun altro difetto bloccante trovato nel gruppo assegnato. Il controllo della nuova versione deve confermare queste due riparazioni e gli eventuali cambiamenti di pagina.

## Verifica pagina per pagina

| Pagina bozza | Contenuto / verifica |
|---|---|
| 19 | Apertura capitolo5 equilibrata. Span e sommatorie leggibili; figura retta/piano/vettori complanari e didascalia integri; niente fuori margine. |
| 20 | Riquadro indipendenza integro, formule della combinazione nulla e del vettore superfluo leggibili; esempio guidato ben separato; sezione5.3 inizia con spiegazione e formule, senza titolo isolato. |
| 21 | Riquadro base/coordinate leggibile; figura dei due riferimenti integra e coerente con (3,1) e coordinate(2,1). Il simbolo F₂ nella discussione finale è presente e leggibile, nessun quadratino o glifo sostitutivo. Testo lungo ma dentro i margini. La sezione5.4 è candidata allo spostamento per risolvere pagina22. |
| 22 | Solo Verifica5 in alto: intervento richiesto. Nessun difetto dei glifi o del riquadro. |
| 23 | Apertura capitolo6 equilibrata; basi minimali/massimali e formula dello scambio leggibili; continuazione della prova alla pagina successiva naturale. |
| 24 | Proof dello scambio e figura a caselle leggibili; etichette e frecce integre; concetto dimensione e formule della mappa coordinate nei margini; tutti gli indici leggibili. |
| 25 | Sottospazi e base di equazione singola: frazione aj/a1 e somme leggibili. Sezione polinomi avviata con sostanza; formula di W01 a fondo pagina integra. |
| 26 | Continuazione dei polinomi con grafico integro: curve continua/tratteggiata distinte e didascalia corretta; sezione facoltativa basi infinite e Verifica6 sulla stessa pagina. Rimane bianco finale fisiologico di fine capitolo, senza pagina di soli esercizi. |
| 27 | Apertura capitolo7, somma e somma diretta leggibili. Il simbolo ⊕ è correttamente stampato; riquadro somma diretta integro, dimostrazione presente sotto senza titolo isolato. |
| 28 | Figura piano+retta/due piani integra; didascalia non separata. Formule dimensione somma diretta e Grassmann leggibili. Box Grassmann non spezzato. |
| 29 | Formule e sommatorie della prova Grassmann nitide; schema degli ovali con parti comuni leggibile e non deformato. Sezione7.4 inizia con definizione e ipotesi sul campo, non è un titolo isolato. |
| 30 | Decomposizione matrici stampata con frazioni e segni corretti; matrici S e A leggibili. Attenzione su caratteristica2 e Verifica7 integri. Bianco finale da fine capitolo accettabile. |
| 31 | Apertura capitolo8; matrici2×3, vettore colonna e prodotto corretti come impaginazione. Somme, dimensioni del prodotto e distributività entro margini. Esempio P,Q a fondo pagina continua con risultato nella prima riga della32: spezzatura leggibile, eventuale affinamento non necessario per la consegna. |
| 32 | Matrici PQ/QP leggibili; concetto compatibilità integro. Figura colonne con frecce e due casi ben leggibile; didascalia coerente. Box applicazione lineare completo a fondo pagina, non tagliato. |
| 33 | Nucleo/immagine e struttura delle soluzioni leggibili; box soluzione particolare+nucleo integro. **Figura traslato richiede correzione dell'etichetta superiore fuori canvas**, come sopra. |
| 34 | Rango–nullità: box, prova generazione/indipendenza e figura base adattata leggibili. Didascalia integra e non deformata. Verifica8 sta nella pagina; la successiva precisazione «matrice reale» dell'esercizio8.2 non era ancora in questa bozza e andrà controllata nell'esportazione aggiornata. |

## Controlli trasversali

Titoli centrati, numero capitolo in maiuscoletto, gerarchia coerente e margini rispettati. Nessuna formula o riga di testo è uscita dal blocco nelle sedici pagine. Riquadri concetto, attenzione ed esempio non mostrano etichette isolate o frammenti iniziali di una sola riga. Le frecce delle figure sono fini e leggibili; i grigi non ostacolano il testo. Nessuna deformazione visibile delle proporzioni. F₂, ⊕, apici T, indici delle somme e lettere greche controllati a scala1.5 senza problemi di glifi.

Questa attestazione riguarda la prima bozza; non certifica automaticamente la versione finale dopo gli interventi. Il root integra il riesame delle pagine modificate e la verifica del PDF consegnato.
