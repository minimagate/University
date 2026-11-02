# Analisi 1 — revisione profonda del 2 novembre 2026

## Perimetro e criterio

Revisione di tutti i 16 frammenti di lettura: introduzione, 14 capitoli e soluzioni. Riferimento effettivo: Aritmetica Spark, capitoli 1, 5 e 6; criterio concordato: italiano naturale, piccoli casi prima delle formule generali, motivazione delle scelte e paragrafi TeXmacs separati da righe vuote. Letti anche il brief di revisione e il rapporto indipendente precedente di Analisi.

Ogni capitolo ha una sola apertura «In breve», con domanda, punto di partenza e risultato atteso. Le formule, le ipotesi portanti, le 23 figure e tutti i 30 esercizi con le rispettive soluzioni restano presenti. Le sezioni principali e i loro numeri sono conservati; le nuove sottosezioni segnano effettivi cambi di domanda.

## Cambiamenti per capitolo

| Parte | Revisione effettiva |
|---|---|
| Introduzione | Italiano più diretto, separazione del percorso in passi leggibili, spiegazione di «In breve» e delle soluzioni; convenzioni meno concentrate. |
| 1 | Quantificatori letti una combinazione alla volta; negazioni e implicazioni separate; operazioni insiemistiche mostrate con un esempio in formula. Apertura coerente con studenti e birre del testo e della figura. |
| 2 | Distinte esistenza e unicità dell'inversa; prova nei due versi su paragrafi separati; composizione e controimmagine con entrate e uscite esplicite. |
| 3 | Piccoli casi della somma dei quadrati; motivazione del raccoglimento che serve nel passo induttivo; somma geometrica riconoscibile in una sottosezione; significato e segno in Bernoulli distribuiti in passaggi. |
| 4 | Spiegati i nomi delle proprietà dell'ordine; irrazionalità di √2 ricostruita in passi; preparata la separazione; distinti massimo, maggiorante e supremo. La prova archimedea mostra perché si cerca un naturale vicino al supremo. |
| 5 | Simmetrie e monotonia distinte; quadrato pari e cubo dispari espliciti. Nella costruzione di √2 si decide prima che cosa deve fare h, poi si ricavano 5h<d e 4h<d e soltanto dopo si sceglie h. Domini e segni degli esercizi restano visibili. |
| 6 | Circonferenza, radianti, tangente e inverse in paragrafi più leggibili; distinte definizione di una composta e possibilità di semplificarla; intervalli e segni conservati. |
| 7 | Preservati gli esempi ε–N riusciti, rendendo più leggibili lato di arrivo, unicità, limitatezza e confronto. Distinti scelta della quota e ricerca dell'indice. |
| 8 | Il caso e₃/e₂ mostra l'esponente comune e Bernoulli prima dell'indice n. Il prodotto di tre fattori prepara conteggio e coefficienti binomiali. Le stime fattoriali e geometriche arrivano dopo questa preparazione; il margine uniforme e≤35/12<3 è conservato. |
| 9 | La stima per la radice n-esima di n viene cercata imponendo l'obiettivo al termine quadratico. Geometriche concrete preparano i criteri. Rapporto⇒radice separa il caso finito e i due estremi. La razionalizzazione cubica ha i passaggi scritti; l'esercizio binomiale riceve un aiuto mirato. |
| 10 | Sottosezioni per valori infiniti/lati, argomento infinito, composta, esponenziale, inversa, conseguenze trigonometriche, gradini, applicazioni e passaggio lungo successioni. La composta usa x→x+1→(x+1)² e la tolleranza 1/10 prima di ε–η–δ. Il confronto fra gli interi parte da 3≤x<4. Ogni nuova nozione conserva dominio, centro e lato richiesti. |
| 11 | Differenza esatta (x+x²)−x prima dell'avvertenza sulle equivalenze; regole dei resti lette tramite fattori; sostituzione nel resto con quoziente e spiegazione dei punti interni nulli. |
| 12 | La composta è preparata dalla variazione locale del cubo e del coseno presso 1. La prova spiega perché evitare la divisione per l'incremento interno, che può annullarsi; differenziale, reciproco, inversa e potenze hanno passaggi separati. |
| 13 | Il polinomio A+Bx+Cx² e le tre condizioni mostrano da dove viene 1/2. La prova n=2 è svolta interamente da R′(x)/(2x); segue la catena n=3, poi l'indice generale. Conservata l'ipotesi fine sull'ultima derivata soltanto nel centro. Unicità, sviluppi elementari e ordine del resto sono leggibili in sottosezioni. |
| 14 | Il cambio centro parte da log(2+h). La composizione parte da sin(x+x³), con il cubo interamente sviluppato e il resto controllato, prima della regola generale. Il quadrato prepara la differenza di potenze generale. Distinti centro esterno 0 e 1, precisione necessaria e gradi finali. Esplicitati prodotti misti, resti nel cubo del seno, reciproco del coseno e confronto per la monotonia di cosh. Iperboliche e parti secondarie conservate. |
| Soluzioni | Tutte le 30 risposte rilette; separati scelta, calcolo e verifica. Conteggio dei livelli con λ ricostruito per casi; ricorrenza conserva esistenza prima del valore del limite; rapporto binomiale mostra i fattoriali prima e dopo la cancellazione; domini, segni e resti mantenuti. |

## Verifiche e confine di questo passaggio

`checks/deep-pass.py` supera 2.636 controlli: conti esatti dei nuovi casi, sintassi separata di tutti i frammenti e 14 aperture immediate. Superati anche i cinque script numerici/strutturali precedenti (`verify_math`, `check_review_a`, `check_review_c`, `checks-limiti`, `verify_structure`). Le verifiche finite non sono prove analitiche dei teoremi.

Il coordinatore ha trasmesso l'esito di un controllo matematico indipendente sui capitoli 5, 8, 13, 14 e le risposte: nessun errore bloccante. Applicate le due precisazioni richieste, sulle simmetrie e sul resto nel cubo del seno. La revisione unitaria e quella visiva della nuova edizione restano al coordinatore.

Non è stata eseguita qui una nuova esportazione PDF. Non sono dichiarati nuovi conteggi di pagine o controlli visivi. I capitoli 8, 10, 13 e 14 sono più distesi: controllare in particolare interruzioni dei riquadri e formule su righe lunghe. Le fonti, Aritmetica, gli originali vettoriali e il manifesto sono intatti.


## Riparazioni dopo la prima esportazione di 75 pagine

Rilette e rifinite tutte le 14 aperture «In breve», usando frasi più naturali e tenendo il collegamento con gli esempi effettivi. Per le chiusure dei capitoli 1, 6 e 10 sono state eliminate ripetizioni di commento e anticipazioni già evidenti nel testo, conservando concetti, prove e passaggi aggiunti. Ridotte moderatamente le figure: quantificatori al 92%; circonferenza all'84% (dal 90%), inverse e grafico triangolare al 78% (dall'85%); quattro figure del capitolo 10 al 90%. Le dimensioni degli originali SVG/PDF restano intatte.

Il capitolo 14 fa iniziare l'intero esempio conclusivo in una pagina nuova: così ragionamento, controllo sulle successioni ed esercizi rimangono insieme, invece di lasciare in chiusura la sola ultima sottosezione. Non sono cambiati caratteri, margini, macro di stile o separazione dei paragrafi.

I sorgenti sono stati assemblati e convertiti nel candidato nativo `analisi-1-spark-review-candidate.tm`, senza eseguire l'esportazione. Sintassi di tutti i frammenti, 2.636 controlli di `deep-pass.py` e controllo editoriale (14 aperture presenti; nessun paragrafo segnalato oltre 80 parole comuni) superati. La riuscita delle riparazioni sulle pagine resta da verificare con la successiva esportazione.
