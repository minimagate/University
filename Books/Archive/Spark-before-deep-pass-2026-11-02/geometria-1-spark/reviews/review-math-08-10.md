# Revisione matematica indipendente — capitoli 8–10 e soluzioni

Revisore: agente responsabile del blocco4–7, diverso dal redattore8–10. Sono stati letti integralmente `source/08.tm`, `09.tm`, `10.tm` e `reviews/solutions-08-10.tm` nello scratch. La prima lettura combinata era stata troncata soltanto nel centro del9: l'intero9 è stato riletto separatamente; gli altri testi erano completi nell'output. Revisione della matematica, separata dai controlli tipografici/PDF. Nessuna modifica ai sorgenti effettuata.

**Esito: nessun errore matematico o ipotesi mancante rilevato.** Verificata la correzione già inserita dal root: l'esercizio8.2 dichiara che A è reale. È una precisazione necessaria, perché il rango della matrice con entrate1,…,9 può cambiare su campi di caratteristica3.

## Capitolo8

- Prodotto matrice-vettore e matrici: dimensioni corrette, indicizzazione coerente. Associatività motivata tramite doppia somma, distributività distinta da commutatività. Il controesempio PQ≠QP è esatto; entrambe le matrici sono invertibili, come usato nel10, anche sui campi di caratteristica2.
- Compatibilità: Ax=b equivalente a b nello span delle colonne. Matrice completa e omogeneità correttamente definite; nessuna confusione fra riga e colonna dei termini noti.
- Linearità definita sullo stesso campo; F(0)=0 derivato prima del criterio di sottospazio per nucleo/immagine. Nucleo nel dominio e immagine nel codominio correttamente distinti.
- Iniettività equivalente a nucleo nullo dimostrata in entrambe le direzioni; linearità della differenza giustifica la riduzione da due vettori a uno.
- Struttura ξ+ker A: le due inclusioni sono dimostrate. Compatibilità e soluzione particolare sono ipotesi esplicite. Se b≠0 il vettore0 non è soluzione: corretta l'affermazione che l'insieme affine non sia sottospazio vettoriale. Nessuna attribuzione di dimensione vettoriale a un traslato non passante per origine.
- Rango–nullità: V finito dichiarato, W può essere anche infinito. La base del nucleo e il completamento sono disponibili dal6. L'immagine dei vettori aggiunti genera perché le immagini della base del nucleo sono zero. L'indipendenza è provata mediante doppia espressione del vettore nel nucleo e relazione nella base completa. Casi nucleo o immagine nulli inclusi con blocchi vuoti. Nessun uso circolare di Gauss o rango per righe.
- Formula dim ker A=n−rank A applicata al numero delle colonne/incognite, correttamente.

## Capitolo9

- La sostituzione all'indietro su scala risolve univocamente le variabili pivot per ogni scelta delle libere, perché ogni divisione è per un pivot non nullo. Riga(0,…,0|c) con c≠0 è l'unica ostruzione in una matrice completa a scala.
- Le tre operazioni di riga sono reversibili. λ≠0 necessario per riscalamento, i≠j necessario per sommare un multiplo di una diversa riga. Intera matrice completa trasformata: corretta conservazione delle soluzioni.
- Span delle righe conservato in entrambe le direzioni grazie alle operazioni inverse; esempio di cambiamento dello span delle colonne corretto. Nessuna falsa affermazione di conservazione del sottospazio colonna.
- Algoritmo: scelta colonna attiva e scambio, annullamento a/p, successivo rettangolo; termina in un numero finito di passi. Gli zeri precedenti restano zero. Non richiede ipotesi aggiuntive oltre al campo.
- Esempi completi di Gauss verificati riga per riga e per sostituzione. Formula parametrica su campo infinito e conteggio q^(n−k) sui campi finiti corretti. Caso k=n dà una soluzione.
- Base del nucleo: valori liberi canonici producono vettori indipendenti; generazione segue dalla linearità e dalla determinazione unica delle pivot. Entrambi gli aspetti sono espliciti.
- Conversioni equazioni↔generatori corrette, inclusa necessità e sufficienza della condizione x+y+z=0. Intersezione per equazioni congiunte e somma per generatori coerenti con4–7.

## Capitolo10

- Rouché–Capelli: prova con inclusione dello span colonna e uguaglianza delle dimensioni, usando correttamente finitezza; entrambe le direzioni complete. Numero parametri n−r subordinato alla compatibilità.
- Scala S con k righe non nulle: colonne pivot indipendenti leggendo le righe dal basso; tutte le colonne stanno nel sottospazio delle prime k coordinate. Le k colonne indipendenti ne sono una base e generano quindi le restanti. Caso S=0 distinto.
- Invarianza rango per mosse di riga: nucleo invariato, stesso numero n di colonne e rango–nullità forniscono rango uguale. Non presuppone uguaglianza dei ranghi riga/colonna: dipendenza logica corretta.
- Rango per righe=colonne: righe non nulle della scala indipendenti per lettura delle colonne pivot da sinistra; invarianza span righe e dimensione colonna già dimostrate riportano l'uguaglianza alla matrice originale. Rank≤min(m,n) e rank(A^T)=rank(A) seguono correttamente.
- Base fra colonne originali: non si usano direttamente le colonne trasformate. Ac=0 iff Sc=0 conserva tutte le relazioni; stessi indici pivot conservano indipendenza e rappresentazioni. Argomento sufficiente e non circolare.
- Matrici elementari: indici di T_ij(λ)=I+λE_ij corretti per aggiungere λR_j a R_i. Inverse corrette; caso diagonale invertibile iff entrate non nulle corretto. Da non confondere con E_ij della base canonica: distinzione esplicita.
- GL_m: chiusura, inverso del prodotto con ordine invertito, unicità inversa e non commutatività per m≥2 dimostrati. Caso m=1 distinto. Ordine nel prodotto E_r…E_1A corretto.
- Invertibile iff rango pieno: direzione via nucleo; direzione converso via Gauss fino aI e prodottoE invertibile. Da EA=I si ricava A=E^(-1) e quindi inversa bilatera; non si assume che una inversa a sinistra sia automaticamente bilatera senza giustificazione.
- Invertibili prodotti di elementari: ordine degli inversi corretto. Generazione per prodotti distinta da generazione lineare.
- Equivalenza a sinistra/destra: tipi delle matrici P,Q corretti, proprietà di equivalenza e interpretazione tramite mosse coerenti. In A(I+λE_ij) si aggiunge λ volte la colonna i alla j, correttamente. Forma completamente ridotta: esistenza costruita e unicità dichiarata enunciato senza prova, come scelta documentata; nessuna falsa pretesa di averla dimostrata.

## Sei esercizi e risposte

| Esercizio | Controllo indipendente |
|---|---|
|8.1|Dominio dimensione5, immagineR3 da rango3, nullità2 e non iniettività: corretto.|
|8.2|Matrice reale rango2; nucleo span(1,−2,1), immagine piano x−2y+z=0, soluzione particolaree1 e famiglia e1+t(1,−2,1): corretti. Le prime due colonne indipendenti e la terza2c2−c1.|
|9.1|Rango2, soluzione particolare(−1,2,0), direzione(1,−1,1); sostituzione nel sistema originale esatta.|
|9.2|Intersezione span(1,−2,1), sommaR3 viaGrassmann; basi di entrambi i piani corrette. Aggiungere(0,1,0) completa i due generatori diU perché è fuori dal suo piano.|
|10.1|Compatibile iff h=2, rango comune1; altrimenti rango completa2. Soluzioni(1−t,t), un parametro: corretto.|
|10.2|E1=(1,0;−1,1), E2=(1,−1;0,1); E2E1=(2,−1;−1,1)=A^(-1); prodotti in entrambi gli ordiniI: corretti.|

## Computazioni aggiuntive indipendenti

È stato eseguito un controllo ad hoc con sola libreria standard Python, separato dai checker del redattore. Il rango dei singoli esempi è stato controllato enumerando minori e calcolandone il determinante per espansione ricorsiva, dunque con un algoritmo differente dalla riduzione a scala del libro. I prodotti sono stati calcolati direttamente. Per le famiglie affini si sono controllati il termine costante Aξ=b e ogni direzione Av=0; indipendenza e dimensione del nucleo garantiscono la completezza delle famiglie. Controllati entrambi i prodotti dell'inversa in10.2, il controesempioPQ/QP e gli esempi a due parametri del9. Output: **OK: independent checks by rational/minor arithmetic: all numerical examples and six solutions08-10; affine directions and particular vectors verified algebraically.** Questi controlli verificano gli esempi, non sostituiscono le dimostrazioni generali revisionate sopra.

## Limiti della presente revisione

Nessuna modifica richiesta ai sorgenti8–10. Il presente documento non dichiara il controllo visuale del PDF, dei glifi e dell'impaginazione: è la revisione matematica separata. Il confronto generale delle fonti è nel source-audit del redattore del blocco finale.
